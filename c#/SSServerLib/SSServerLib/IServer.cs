using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Net;

namespace Xuhengxiao.IocpServer
{
    public class ClientSocketEventArg : EventArgs
    {

    }

    /// <summary>
    /// i do not send this 
    /// </summary>
    /// <param name="e"></param>
    public delegate void AcceptEventHander(ClientSocketEventArg e);


    /// <summary>
    /// 服务器的接口类
    /// </summary>
    public  interface IServer
    {
        /// <summary>
        /// port of server
        /// </summary>
        public int Port { get; set; }


        /// <summary>
        /// initialize this server 
        /// return null if ok
        /// return error message if faild
        /// </summary>
        /// <returns></returns>
        public abstract string  Init();

        /// <summary>
        /// start this server
        /// return null if ok
        /// return error message if faild
        /// </summary>
        /// <returns></returns>
        public abstract string   Start();

        public event AcceptEventHander Accept;
        public void OnAccept();

    }
}
