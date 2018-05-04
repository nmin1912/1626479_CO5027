using System;
using System.Runtime.Serialization;

namespace Prototype
{
    [Serializable]
    internal class PaymentsExeception : Exception
    {
        public PaymentsExeception()
        {
        }

        public PaymentsExeception(string message) : base(message)
        {
        }

        public PaymentsExeception(string message, Exception innerException) : base(message, innerException)
        {
        }

        protected PaymentsExeception(SerializationInfo info, StreamingContext context) : base(info, context)
        {
        }

        public string Response { get; internal set; }
    }
}