namespace Cinema.Model
{
    class Room
    {
        private string idRoom;
        private string typeOfRoom;
        private int numberChair;
        private string status;

        public string IdRoom
        {
            get
            {
                return idRoom;
            }

            set
            {
                idRoom = value;
            }
        }

        public string TypeOfRoom
        {
            get
            {
                return typeOfRoom;
            }

            set
            {
                typeOfRoom = value;
            }
        }

        public int NumberChair
        {
            get
            {
                return numberChair;
            }

            set
            {
                numberChair = value;
            }
        }

        public string Status
        {
            get
            {
                return status;
            }

            set
            {
                status = value;
            }
        }

        public Room(string idRoom, string typeOfRoom, int numberChair, string status)
        {
            this.IdRoom = idRoom;
            this.TypeOfRoom = typeOfRoom;
            this.NumberChair = numberChair;
            this.Status = status;
        }

    }
}