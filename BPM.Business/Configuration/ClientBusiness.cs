using BPM.Dal;
using BPM.Dal.Configuration;
using BPM.Dto.Configuration;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BPM.Business.Configuration
{
    public class ClientBusiness
    {

        public List<ClienteDto> GetClients()
        {
            var Dal = new ClientDal();
            return Dal.GetClients();
        }

        public int AddClient(ClienteDto Client)
        {
            var Dal = new ClientDal();
            return Dal.AddClient(Client);

        }

        public ClienteDto GetClient(int IdCliente)
        {
            var Dal = new ClientDal();
            return Dal.GetClient(IdCliente);
        }

        public int EditClient(ClienteDto Client)
        {
            var Dal = new ClientDal();
            return Dal.EditClient(Client);

        }

        public int RemoveClient(int Id)
        {
            var Dal = new ClientDal();
            return Dal.RemoveClient(Id);
        }

        public int SaveClient(ClienteDto Client)
        {
            var Dal = new ClientDal();
            return Dal.SaveClient(Client);
        }

    }
}
