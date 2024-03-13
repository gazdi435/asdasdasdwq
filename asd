int Szelesseg = 100;
        int Magassag = 100;
        int LabdaX = 0;
        int LabdaY = 0;
        char[,] Terulet;

        public Palya(int Magassag, int Szelesseg, int labdaX, int labdaY)
        {
            this.Magassag = Magassag;
            this.Szelesseg = Szelesseg;
            this.LabdaX1 = labdaX;
            this.LabdaY1 = labdaY;
            this.Terulet = new char[Szelesseg, Magassag];

            for (int i = 0; i < Szelesseg; i++)
            {
                for (int a = 0; i < Magassag; a++)
                {
                    Terulet[i, a] = UresChar;
                }
            }
        }

        public char UresChar = ' ';
        public char LabdaChar = 'O';
        public int[] BalraFel = { -1, 1 };
        public int[] BalraLe = { -1, -1 };
        public int[] JobbraLe = { 1, -1 };
        public int[] JobbaFel = { 1, 1 };
        public int Szelesseg1 { get => Szelesseg; set => Szelesseg = value; }
        public int Magassag1 { get => Magassag; set => Magassag = value; }
        public int LabdaX1 { get => LabdaX; set => LabdaX = value; }
        public int LabdaY1 { get => LabdaY; set => LabdaY = value; }

        public void Mozog(int[] irany)
        {
            this.Terulet[LabdaX, LabdaY] = UresChar;
            this.LabdaX += irany[0];
            this.LabdaY += irany[1];
            this.Terulet[LabdaX, LabdaY] = LabdaChar;
        }
