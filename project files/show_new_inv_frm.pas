unit show_new_inv_frm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls;

type
  TForm1_frm_viewer = class(TForm)
    BitBtn1: TBitBtn;
    Image1: TImage;
    Label1: TLabel;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    procedure Show_Frm(NazwaPlikuObrazka_Frm:String;numer_okienka:Byte);
  public
    { Public declarations }

  end;


var
  Form1_frm_viewer: TForm1_frm_viewer;

implementation

uses  Unit_Main;
{$R *.dfm}

procedure TForm1_frm_viewer.BitBtn1Click(Sender: TObject);
begin
  Close();
end;

procedure TForm1_frm_viewer.FormCreate(Sender: TObject);
begin
  Show_Frm(nazwa_pliku_inven_frm_dla_form1,1);
  Label1.Caption:='   New picture "'+ExtractFileName(nazwa_pliku_inven_frm_dla_form1)+'"'+#10#13+'   added to "inven.lst" file.'
end;


procedure TForm1_frm_viewer.Show_Frm(NazwaPlikuObrazka_Frm:String;numer_okienka:Byte);
var  Rct: TRect;
     x,y:Integer;
     i,j:Integer;

begin
  case numer_okienka of
  1: begin
       Image1.Picture := nil;
         Image1.Canvas.Brush.Color:=RGB(kolor1[0],kolor2[0],kolor3[0]);
         Rct.Top := 0;
         Rct.Left := 0;
         Rct.Right := Image1.Width;
         Rct.Bottom := Image1.Height;
         Image1.Canvas.FillRect(Rct);

//       NazwaPlikuObrazka_FRM:=F2Folder+sciezka_do_plikow_art_inven_lst+Form_Main.ComboBoxInventoryFrame.items[Form_Main.ComboBoxInventoryFrame.ItemIndex];

//       repeat
//         if NazwaPlikuObrazka_FRM[length(NazwaPlikuObrazka_FRM)]=' ' then Delete(NazwaPlikuObrazka_FRM,length(NazwaPlikuObrazka_FRM),1);
//       until NazwaPlikuObrazka_FRM[length(NazwaPlikuObrazka_FRM)]<>' ';

       if FileExists(NazwaPlikuObrazka_Frm) then
       begin
         FileSetAttr(NazwaPlikuObrazka_FRM,$00000020);{ustawia atrybut archive dla pliku art/../inven.lst}
         AssignFile(plik_frm,NazwaPlikuObrazka_Frm);
         Reset(plik_frm);
         rozmiar_pliku:=FileSize(plik_frm);
         CloseFile(plik_frm);

//  first_data_offset:=header_rozmiar;

         SizeX:=Form_Main.CzytajWartosc(NazwaPlikuObrazka_Frm,62{first_data_offset},2);
         SizeY:=Form_Main.CzytajWartosc(NazwaPlikuObrazka_Frm,64{first_data_offset+2},2);

{         Image1.Width:=SizeX;
         Image1.Height:=SizeY;
         Image1.Left:=8+215 div 2- SizeX div 2;
         Image1.Top:=8 +147 div 2 - SizeY div 2;
 }

//  rozmiar_danych:=SizeX*SizeY;

//  first_frame_offset:=rozmiar_pliku-rozmiar_danych;
         first_frame_offset:=74;

         Image1.Canvas.Brush.Color:=RGB(kolor1[0],kolor2[0],kolor3[0]);
         Rct.Top := 0;
         Rct.Left := 0;
         Rct.Right := Image1.Width;
         Rct.Bottom := Image1.Height;
         Image1.Canvas.FillRect(Rct);

         FileSetAttr(NazwaPlikuObrazka_FRM,$00000020);{ustawia atrybut archive dla pliku art/../inven.lst}
         AssignFile(plik_frm,NazwaPlikuObrazka_Frm);
         Reset(plik_frm);
         seek(plik_frm,first_frame_offset);
         for j:=0 to SizeY-1 do
           for i:=0 to SizeX-1 do
             begin
               Read(plik_frm,numer_koloru); // odczytywany numer koloru dla t³a obrazka to numer = 0

               x:=i;
               y:=j;
               x:=((Image1.Width - SizeX) div 2)+x;
               y:=((Image1.Height - SizeY) div 2)+y;


               Image1.Canvas.Pixels[x,y]:=RGB(kolor1[numer_koloru],kolor2[numer_koloru],kolor3[numer_koloru]);
             end;
         Image1.Update;
         CloseFile(plik_frm);
       end;

     end;
  end;
end;


end.

             begin
               Read(plik_frm,numer_koloru);
               x:=i;
               y:=j;
               x:=((Image3.Width - SizeX) div 2)+x;
               y:=((Image3.Height - SizeY) div 2)+y;
               Image3.Canvas.Pixels[x,y]:=RGB(kolor1[numer_koloru],kolor2[numer_koloru],kolor3[numer_koloru]);
             end;

