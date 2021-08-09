using BPM.Dto.Configuration;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BPM.Dal.Configuration
{
    public class ClientDal
    {

        public int SaveClient(ClienteDto Client)
        {
            try
            {
                using (BPMEntities db = new BPMEntities())
                {
                    var Created = db.Sp_AddClient(Client.Nombre).First();
                    return Convert.ToInt32(Created);
                }
            }
            catch (Exception e)
            {

                return 0;
            }
        }

        public List<ClienteDto> GetClients()
        {
            try
            {
                using (BPMEntities db = new BPMEntities())
                {
                    var Clients = db.Sp_GetClients().ToList().ConvertAll(Client => new ClienteDto()
                    {
                        IdCliente = Client.IdCliente,
                        Nombre = Client.Nombre,
                        NameState = Client.NameState
                    });

                    return Clients;
                }
            }
            catch (Exception e)
            {
                return new List<ClienteDto>(); ;
            }
        }

        public int AddClient(ClienteDto Client)
        {
            try
            {
                using (BPMEntities db = new BPMEntities())
                {
                    var Created = db.Sp_AddClient(Client.Nombre).First();
                    return Convert.ToInt32(Created);
                }
            }
            catch (Exception e)
            {
                return 0;
            }

        }

        public ClienteDto GetClient(int Id)
        {
            try
            {
                using (BPMEntities db = new BPMEntities())
                {
                    var Client = db.Cliente.Where(x => x.IdCliente == Id).FirstOrDefault();
                    var ClienteDto = new ClienteDto
                    {
                        IdCliente = Client.IdCliente,
                        Nombre = Client.Nombre

                    };
                    return ClienteDto;
                }
            }
            catch (Exception e)
            {
                ClienteDto ClienteDto = new ClienteDto
                {
                    IdCliente = 0,
                };
                return ClienteDto;
            }

        }
        public int EditClient(ClienteDto Client)
        {
            try
            {
                using (BPMEntities db = new BPMEntities())
                {
                    var Created = db.Sp_EditClient(Client.IdCliente, Client.Nombre).First();
                    return Convert.ToInt32(Created);
                }
            }
            catch (Exception e)
            {
                return 0;
            }

        }

        public int RemoveClient(int Id)
        {
            try
            {
                using (BPMEntities db = new BPMEntities())
                {
                    var Remove = db.Sp_RemoveClient(Id).First();
                    return Convert.ToInt32(Remove);
                }
            }
            catch (Exception e)
            {
                return 0;
            }

        }

    }
}
