unit main;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, IniFiles, Vcl.StdCtrls, Vcl.ComCtrls,
  Vcl.Buttons, Vcl.ExtCtrls, Unit_PW, System.IOUtils;

type
  TForm_Main = class(TForm)
    SB: TStatusBar;
    Panel2: TPanel;
    BB_SAKAS: TBitBtn;
    BB_Copy_Cond: TBitBtn;
    Panel1: TPanel;
    Label8: TLabel;
    Label19: TLabel;
    BB_Prev_Img: TBitBtn;
    Edit_ImgNo: TEdit;
    UD_PrevImg: TUpDown;
    BB_PrevBK: TBitBtn;
    Edit_PrevBK: TEdit;
    UD_PrevBK: TUpDown;
    BB_Prev_NImg: TBitBtn;
    Edit_PrevNImg: TEdit;
    UD_PrevNImg: TUpDown;
    BB_Conv: TBitBtn;
    CB_SwapXY: TCheckBox;
    CB_Bin: TCheckBox;
    BB_MakeSino: TBitBtn;
    Edit_SinoST: TEdit;
    Edit_SinoEnd: TEdit;
    BB_STOP: TBitBtn;
    BB_DARK: TBitBtn;
    Edit_AvR: TEdit;
    CB_Damy: TCheckBox;
    Edit_DBK: TEdit;
    CB_MedF: TCheckBox;
    CB_x2: TCheckBox;
    CB_MedBK: TCheckBox;
    CB_SinoMed: TCheckBox;
    CB_Ln2: TCheckBox;
    CB_WOBK: TCheckBox;
    Edit_SelBK: TEdit;
    CB_BGProc: TCheckBox;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    SB_FN: TSpeedButton;
    Label2: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    Label10: TLabel;
    Label4: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label9: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    SB_DArkFN: TSpeedButton;
    SB_FBK: TSpeedButton;
    Label17: TLabel;
    Label18: TLabel;
    SB_FBK2: TSpeedButton;
    Edit_FN: TEdit;
    Edit_OH: TEdit;
    Edit_OW: TEdit;
    Edit_PW: TEdit;
    Edit_PH: TEdit;
    Edit_OFFY: TEdit;
    Edit_OFFX: TEdit;
    Edit_BKNum: TEdit;
    Edit_BKInt: TEdit;
    Edit_Pro: TEdit;
    Edit_DFN: TEdit;
    Edit_DN: TEdit;
    Edit_OffImg: TEdit;
    Edit_FNBK: TEdit;
    Edit_BKN: TEdit;
    CB_USEBK: TCheckBox;
    Edit_ImgN: TEdit;
    Edit_FNBK2: TEdit;
    CB_IndV: TCheckBox;
    CB_Inv2: TCheckBox;
    CB_Inv3: TCheckBox;
    Edit_EXT: TEdit;
    Edit_Dig: TEdit;
    UD_Dig: TUpDown;
    Memo: TRichEdit;
    OpenDialog1: TOpenDialog;
    BB_STop2: TBitBtn;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure SB_FNClick(Sender: TObject);
    procedure SB_FBKClick(Sender: TObject);
    procedure SB_FBK2Click(Sender: TObject);
    procedure SB_DArkFNClick(Sender: TObject);

    procedure Init_Cond(Sender: TObject);
    procedure BB_SAKASClick(Sender: TObject);
    procedure BB_Copy_CondClick(Sender: TObject);
    procedure BB_Prev_ImgClick(Sender: TObject);
    procedure BB_PrevBKClick(Sender: TObject);
    procedure BB_DARKClick(Sender: TObject);
    procedure BB_Prev_NImgClick(Sender: TObject);

    procedure Prev_CalcImg(Showing:boolean;Sender: TObject);
    procedure Median_Filter(Sender: TObject);
    procedure BB_ConvClick(Sender: TObject);
    procedure BB_MakeSinoClick(Sender: TObject);
    procedure UD_PrevImgClick(Sender: TObject; Button: TUDBtnType);
    procedure UD_PrevBKClick(Sender: TObject; Button: TUDBtnType);
    procedure BB_STop2Click(Sender: TObject);
    procedure BB_STOPClick(Sender: TObject);


  private
    { Private �錾 }
  public
    { Public �錾 }
  end;

var
  Form_Main: TForm_Main;
  ImgPV,ImgPV2 : TForm_PW;

  BKInt, Pro, BKNum, OffImg : longint;
  BKData : array[0..8] of TData;
  NData, TmpData, SSData, DARKData : TData;
  Go : boolean;

  SData : array[0..8] of double;

implementation

{$R *.dfm}

uses Unit_Tag;


procedure TForm_Main.FormCreate(Sender: TObject);
var
  Ini: TIniFile;
begin
  ImgPV := TForm_PW.Create(Self);
  ImgPV2 := TForm_PW.Create(Self);
  Go := false;

  Ini := TIniFile.Create( ChangeFileExt( Application.ExeName, '.INI' ) );
  try
    Top     := Ini.ReadInteger( 'Form_main', 'Top', 100 );
    Left    := Ini.ReadInteger( 'Form_main', 'Left', 100 );
    Width   := Ini.ReadInteger( 'Form_main', 'Width', 750 );
    Height  := Ini.ReadInteger( 'Form_main', 'Height', 500 );
    if Ini.ReadBool( 'Form_main', 'InitMax', false ) then
      WindowState := wsMaximized
    else
      WindowState := wsNormal;


    Edit_OW.Text  := Ini.ReadString( 'Param', 'OW', '1000' );
    Edit_OH.Text  := Ini.ReadString( 'Param', 'OH', '500' );
    Edit_PW.Text  := Ini.ReadString( 'Param', 'PW', '1000' );
    Edit_PH.Text  := Ini.ReadString( 'Param', 'PH', '500' );
    Edit_OFFX.Text  := Ini.ReadString( 'Param', 'OFFX', '0' );
    Edit_OFFY.Text  := Ini.ReadString( 'Param', 'OFFY', '0' );

    Edit_Pro.Text  := Ini.ReadString( 'Param', 'Pro', '650' );
    Edit_BKInt.Text  := Ini.ReadString( 'Param', 'BKInt', '600' );
    Edit_BKNum.Text  := Ini.ReadString( 'Param', 'BKNum', '100' );

    Edit_FN.Text  := Ini.ReadString( 'Param', 'FN', '' );
    Edit_FNBK.Text  := Ini.ReadString( 'Param', 'FNBK', '' );
    Edit_FNBK2.Text  := Ini.ReadString( 'Param', 'FNBK2', '' );
    Edit_DFN.Text  := Ini.ReadString( 'Param', 'DFN', '' );

    Edit_SinoST.Text := Ini.ReadString( 'Param', 'Sino_ST', '' );
    Edit_SinoEnd.Text := Ini.ReadString( 'Param', 'Sino_End', '' );

    Edit_BKN.Text  := Ini.ReadString( 'Param', 'BKN', '100' );
    Edit_DN.Text  := Ini.ReadString( 'Param', 'DN', '100' );

    CB_IndV.Checked := Ini.ReadBool( 'Param', 'Ind_BK', false);
    CB_USEBK.Checked := Ini.ReadBool( 'Param', 'USE_BK', false);
    CB_SwapXY.Checked := Ini.ReadBool( 'Param', 'XY_WSAP', false);
    CB_Bin.Checked :=  Ini.ReadBool( 'Param', 'Conv_BIN', false);
  finally
    Ini.Free;
  end;
end;

procedure TForm_Main.FormDestroy(Sender: TObject);
var
   Ini: TIniFile;
begin
  Ini := TIniFile.Create( ChangeFileExt( Application.ExeName, '.INI' ) );
  try
    Ini.WriteInteger( 'Form_main', 'Top', Top);
    Ini.WriteInteger( 'Form_main', 'Left', Left);
    Ini.WriteInteger( 'Form_main', 'Width', Width );
    Ini.WriteInteger( 'Form_main', 'Height', Height );

    Ini.WriteString( 'Param', 'OW', Edit_OW.Text );
    Ini.WriteString( 'Param', 'OH', Edit_OH.Text );
    Ini.WriteString( 'Param', 'PW', Edit_PW.Text );
    Ini.WriteString( 'Param', 'PH', Edit_PH.Text );
    Ini.WriteString( 'Param', 'OFFX', Edit_OFFX.Text );
    Ini.WriteString( 'Param', 'OFFY', Edit_OFFY.Text );

    Ini.WriteString( 'Param', 'Pro', Edit_Pro.Text );
    Ini.WriteString( 'Param', 'BKInt', Edit_BKInt.Text );
    Ini.WriteString( 'Param', 'BKNum', Edit_BKNum.Text );

    Ini.WriteString( 'Param', 'FN', Edit_FN.Text );
    Ini.WriteString( 'Param', 'FNBK', Edit_FNBK.Text );
    Ini.WriteString( 'Param', 'FNBK2', Edit_FNBK2.Text );
    Ini.WriteString( 'Param', 'DFN', Edit_DFN.Text );

    Ini.WriteString( 'Param', 'BKN', Edit_BKN.Text );
    Ini.WriteString( 'Param', 'DN', Edit_DN.Text );

    Ini.WriteString( 'Param', 'Sino_ST', Edit_SinoST.Text );
    Ini.WriteString( 'Param', 'Sino_End', Edit_SinoEnd.Text );

    Ini.WriteBool( 'Param', 'Ind_BK', CB_IndV.Checked);
    Ini.WriteBool( 'Param', 'USE_BK', CB_USEBK.Checked);
    Ini.WriteBool( 'Param', 'XY_WSAP', CB_SwapXY.Checked);
    Ini.WriteBool( 'Param', 'Conv_BIN', CB_Bin.Checked);
  finally
    Ini.Free;
  end;
//  ImgPV.Free;
//  ImgPV2.Free;
end;

procedure TForm_Main.Init_Cond(Sender: TObject);
begin
  with ImgPV do
  begin
    OW := StrToInt(Edit_OW.Text);
    OH := StrToInt(Edit_OH.Text);
    PW := StrToInt(Edit_PW.Text);
    PH := StrToInt(Edit_PH.Text);
    OFFX := StrToInt(Edit_OffX.Text);
    OFFY := StrToInt(Edit_OffY.Text);
  end;
  BKNum := StrToInt(Edit_BKNum.Text);
  Pro := StrToInt(Edit_Pro.Text);
  BKInt := StrToInt(Edit_BKInt.Text);
  OffImg :=StrToInt(Edit_OffImg.Text);
end;

procedure TForm_Main.SB_FNClick(Sender: TObject);
var
  TmpStr :  string;
  Ini: TIniFile;
begin
  if OpenDialog1.Execute then
  begin
    TmpStr := UpperCase(ExtractFileExt(OpenDialog1.FileName));
    if UpperCase(ExtractFileExt(OpenDialog1.FileName)) = '.TAG' then
    begin
      Edit_FN.Text := ChangeFileExt(OpenDialog1.FileName,'');

      Ini := TIniFile.Create(OpenDialog1.FileName);
      try
        Edit_BKN.Text := IntToStr(Ini.ReadInteger( 'Proc_1', 'BK_Image_Numer', 10));
        Edit_BKInt.Text := IntToStr(Ini.ReadInteger( 'Proc_1', 'BK_Interval', 10));
        Edit_Pro.Text := IntToStr(Ini.ReadInteger( 'Method', 'Pro_Num', 100));

        Edit_FNBK.Text := Ini.ReadString('Proc_1','BK1_File_Name','');
        Edit_FNBK2.Text := Ini.ReadString('Proc_1','BK2_File_Name','');

        Edit_OW.Text := IntToStr(Ini.ReadInteger( 'Proc_1', 'Width', 2048));
        Edit_OH.Text := IntToStr(Ini.ReadInteger( 'Proc_1', 'Height', 2048));

        //Proc_2_Data
        if Ini.ValueExists('Proc_2', 'Pro_Width') then
          Edit_PW.Text := IntToStr(Ini.ReadInteger( 'Proc_2', 'Pro_Width', 2048))
        else
          Edit_PW.Text := Edit_OW.Text;

        if Ini.ValueExists('Proc_2', 'Pro_Height') then
          Edit_PH.Text := IntToStr(Ini.ReadInteger( 'Proc_2', 'Pro_Height', 2048))
        else
          Edit_PH.Text := Edit_OH.Text;

        if Ini.ValueExists('Proc_2', 'Pro_Offset_X') then
          Edit_OFFX.Text := IntToStr(Ini.ReadInteger( 'Proc_2', 'Pro_Offset_X', 0))
        else
          Edit_OFFX.Text := '0';

        if Ini.ValueExists('Proc_2', 'Pro_Offset_Y') then
          Edit_OFFY.Text := IntToStr(Ini.ReadInteger( 'Proc_2', 'Pro_Offset_Y', 0))
        else
          Edit_OFFY.Text := '0';

        if Ini.ValueExists( 'Proc_2', 'Sino_XY_Swap') then
          CB_SwapXY.Checked := Ini.ReadBool( 'Proc_2', 'Sino_XY_Swap', true);
        if Ini.ValueExists( 'Proc_2', 'Sino_Bin') then
          CB_Bin.Checked     := Ini.ReadBool( 'Proc_2', 'Sino_Bin',true);

        if Ini.ValueExists( 'Proc_2', 'Sino_ST') then
          Edit_SinoST.Text := IntToStr(Ini.ReadInteger( 'Proc_2', 'Sino_ST', 50));
        if Ini.ValueExists( 'Proc_2', 'Sino_End') then
          Edit_SinoEnd.Text := IntToStr(Ini.ReadInteger( 'Proc_2', 'Sino_End', 950));
      finally
        Ini.Free;
      end;
    end
    else
      Edit_FN.Text := OpenDialog1.FileName;
  end;
end;


procedure TForm_Main.SB_FBKClick(Sender: TObject);
begin
  if OpenDialog1.Execute then
    Edit_FNBK.Text := OpenDialog1.FileName;
end;

procedure TForm_Main.SB_FBK2Click(Sender: TObject);
begin
  if OpenDialog1.Execute then
    Edit_FNBK2.Text := OpenDialog1.FileName;
end;

procedure TForm_Main.SB_DArkFNClick(Sender: TObject);
begin
  if OpenDialog1.Execute then
    Edit_DFN.Text := OpenDialog1.FileName;
end;

procedure TForm_Main.BB_STOPClick(Sender: TObject);
begin
  Go := false;
end;

procedure TForm_Main.BB_STop2Click(Sender: TObject);
begin
  Go := false;
end;



procedure TForm_Main.BB_SAKASClick(Sender: TObject);
begin
  Form_Tag.Show;
end;


procedure TForm_Main.BB_Copy_CondClick(Sender: TObject);
begin
  Form_Tag.Edit_FN.Text  := Edit_FN.Text;
  Form_Tag.Edit_FNBK1.Text := Edit_FNBK.Text;
  Form_Tag.Edit_FNBK2.Text := Edit_FNBK2.Text;
  Form_Tag.Edit_FNOFF.Text := Edit_DFN.Text;

  Form_Tag.LEdit_OW.Text := Edit_OW.Text;
  Form_Tag.LEdit_OH.Text := Edit_OH.Text;
  Form_Tag.LEdit_PW.Text := Edit_PW.Text;
  Form_Tag.LEdit_PH.Text := Edit_PH.Text;
  Form_Tag.LEdit_OffX.Text := Edit_OffX.Text;
  Form_Tag.LEdit_OffY.Text := Edit_OffY.Text;

  Form_Tag.LEdit_Pro.Text := Edit_Pro.Text;
  Form_Tag.Edit_BKInt.Text := Edit_BKInt.Text;
  Form_Tag.Edit_BKN.Text := Edit_BKNum.Text;

  Form_Tag.CB_XY_Swap.Checked := CB_SwapXY.Checked;
  Form_Tag.CB_Bin.Checked := CB_Bin.Checked;
  Form_Tag.CB_Ln.Checked := CB_Ln2.Checked;

  Form_Tag.Edit_SinoST.Text := Edit_SinoST.Text ;
  Form_Tag.Edit_SinoEnd.Text := Edit_SinoEnd.Text;
  Form_Tag.Edit_AvR.Text := Edit_AvR.Text;
  Form_Tag.CB_SinoMed.Checked := CB_SinoMed.Checked;
end;

procedure TForm_Main.UD_PrevBKClick(Sender: TObject; Button: TUDBtnType);
var
  i, j, m :longint;
begin
  m := UD_PrevBK.Position;
  for j:=0 to ImgPV.PH-1 do
    for i:=0 to ImgPV.PW-1 do
      ImgPV.PData[j,i] := BKData[m,j,i];
  ImgPV.Show;
  ImgPV.Draw_Data(Sender);
end;

procedure TForm_Main.UD_PrevImgClick(Sender: TObject; Button: TUDBtnType);
begin
  BB_Prev_ImgClick(Sender);
end;





procedure TForm_Main.BB_Prev_ImgClick(Sender: TObject);
begin
  Init_Cond(Sender);

  if CB_IndV.Checked then
  begin
    case UD_Dig.Position of
      0: ImgPV.Load_WORDData(Edit_FN.Text+UD_PrevImg.Position.ToString+Edit_EXT.Text,Sender);
      1: ImgPV.Load_WORDData(Edit_FN.Text+Format('%.1d',[UD_PrevImg.Position])+Edit_EXT.Text,Sender);
      2: ImgPV.Load_WORDData(Edit_FN.Text+Format('%.2d',[UD_PrevImg.Position])+Edit_EXT.Text,Sender);
      3: ImgPV.Load_WORDData(Edit_FN.Text+Format('%.3d',[UD_PrevImg.Position])+Edit_EXT.Text,Sender);
      4: ImgPV.Load_WORDData(Edit_FN.Text+Format('%.4d',[UD_PrevImg.Position])+Edit_EXT.Text,Sender);
      5: ImgPV.Load_WORDData(Edit_FN.Text+Format('%.5d',[UD_PrevImg.Position])+Edit_EXT.Text,Sender);
      6: ImgPV.Load_WORDData(Edit_FN.Text+Format('%.6d',[UD_PrevImg.Position])+Edit_EXT.Text,Sender);
    end;
  end
  else
  begin
    ImgPV.UD_TPro.Position := UD_PrevImg.Position+OffImg;
    ImgPV.Load_WORDData(Edit_FN.Text,Sender);
  end;

  if CB_MedF.Checked then
    ImgPV.Median_Img(ImgPV.PData);
  ImgPV.Show;
  ImgPV.Draw_Data(Sender);
end;

procedure TForm_Main.BB_PrevBKClick(Sender: TObject);
var
  i, j, kk,m, ImgN :longint;
begin
  Init_Cond(Sender);
  ImgN := StrToInt(Edit_ImgN.Text);
  SB.SimpleText := '';

  if not(CB_WOBK.Checked) then
  begin
    if CB_USEBK.Checked then
    begin
      BKNum := StrToInt(Edit_BKN.Text);
      for j:=0 to ImgPV.PH-1 do
        for i:=0 to ImgPV.PW-1 do
          BKData[0,j,i] := 0;

      for kk:=0 to BKNum-1 do
      begin
        if CB_Inv2.Checked then
        begin
          case UD_Dig.Position of
            0: ImgPV.Load_WORDData(Edit_FNBK.Text+kk.ToString+Edit_EXT.Text,Sender);
            1: ImgPV.Load_WORDData(Edit_FNBK.Text+Format('%.1d',[kk])+Edit_EXT.Text,Sender);
            2: ImgPV.Load_WORDData(Edit_FNBK.Text+Format('%.2d',[kk])+Edit_EXT.Text,Sender);
            3: ImgPV.Load_WORDData(Edit_FNBK.Text+Format('%.3d',[kk])+Edit_EXT.Text,Sender);
            4: ImgPV.Load_WORDData(Edit_FNBK.Text+Format('%.4d',[kk])+Edit_EXT.Text,Sender);
            5: ImgPV.Load_WORDData(Edit_FNBK.Text+Format('%.5d',[kk])+Edit_EXT.Text,Sender);
            6: ImgPV.Load_WORDData(Edit_FNBK.Text+Format('%.6d',[kk])+Edit_EXT.Text,Sender);
          end;
        end
        else
        begin
          ImgPV.UD_TPro.Position := kk;
          ImgPV.Load_WORDData(Edit_FNBK.Text,Sender);
        end;
        if CB_MedBK.Checked then
          ImgPV.Median_Img(ImgPV.PData);
        for j:=0 to ImgPV.PH-1 do
          for i:=0 to ImgPV.PW-1 do
            BKData[0,j,i] := BKData[0,j,i]+ImgPV.PData[j,i];
      end;

      for j:=0 to ImgPV.PH-1 do
        for i:=0 to ImgPV.PW-1 do
          BKData[0,j,i] := BKData[0,j,i]/BKNum;

      for m:=1 to (Pro div BKInt)+1 do
        for j:=0 to ImgPV.PH-1 do
          for i:=0 to ImgPV.PW-1 do
            BKData[m,j,i] := BKData[0,j,i];

      if Edit_FNBK2.Text<>'' then
      begin
        BKNum := StrToInt(Edit_BKN.Text);
        for j:=0 to ImgPV.PH-1 do
          for i:=0 to ImgPV.PW-1 do
            BKData[1,j,i] := 0;

        for kk:=0 to BKNum-1 do
        begin
          if CB_Inv2.Checked then
          begin
            case UD_Dig.Position of
              0: ImgPV.Load_WORDData(Edit_FNBK2.Text+kk.ToString+Edit_EXT.Text,Sender);
              1: ImgPV.Load_WORDData(Edit_FNBK2.Text+Format('%.1d',[kk])+Edit_EXT.Text,Sender);
              2: ImgPV.Load_WORDData(Edit_FNBK2.Text+Format('%.2d',[kk])+Edit_EXT.Text,Sender);
              3: ImgPV.Load_WORDData(Edit_FNBK2.Text+Format('%.3d',[kk])+Edit_EXT.Text,Sender);
              4: ImgPV.Load_WORDData(Edit_FNBK2.Text+Format('%.4d',[kk])+Edit_EXT.Text,Sender);
              5: ImgPV.Load_WORDData(Edit_FNBK2.Text+Format('%.5d',[kk])+Edit_EXT.Text,Sender);
              6: ImgPV.Load_WORDData(Edit_FNBK2.Text+Format('%.6d',[kk])+Edit_EXT.Text,Sender);
            end;
          end
          else
          begin
            ImgPV.UD_TPro.Position := kk;
            ImgPV.Load_WORDData(Edit_FNBK2.Text,Sender);
          end;
          if CB_MedBK.Checked then
            ImgPV.Median_Img(ImgPV.PData);
          for j:=0 to ImgPV.PH-1 do
            for i:=0 to ImgPV.PW-1 do
              BKData[1,j,i] := BKData[1,j,i]+ImgPV.PData[j,i];
        end;

        for j:=0 to ImgPV.PH-1 do
          for i:=0 to ImgPV.PW-1 do
            BKData[1,j,i] := BKData[1,j,i]/BKNum;
        for m:=2 to (Pro div BKInt)+1 do
          for j:=0 to ImgPV.PH-1 do
            for i:=0 to ImgPV.PW-1 do
              BKData[m,j,i] := BKData[1,j,i];
      end;
    end
    else
    begin
      Memo.Lines.Clear;
      for m:=0 to (Pro div BKInt) do
      begin
        for j:=0 to ImgPV.PH-1 do
          for i:=0 to ImgPV.PW-1 do
            BKData[m,j,i] := 0;

        for kk:=0 to BKNum*ImgN-1 do
        begin
          ImgPV.UD_TPro.Position := BKInt*m*ImgN+BKNum*ImgN*m+kk+OffImg;
          ImgPV.Load_WORDData(Edit_FN.Text,Sender);
          for j:=0 to ImgPV.PH-1 do
            for i:=0 to ImgPV.PW-1 do
              BKData[m,j,i] := BKData[m,j,i]+ImgPV.IData[j,i];
          Application.ProcessMessages;
          Memo.Lines.Add(ImgPV.UD_TPro.Position.ToString);
        end;

        for j:=0 to ImgPV.PH-1 do
          for i:=0 to ImgPV.PW-1 do
            BKData[m,j,i] := BKData[m,j,i]/(BKNum*ImgN);
        if CB_MedBK.Checked then
        begin
          for j:=0 to ImgPV.PH-1 do
            for i:=0 to ImgPV.PW-1 do
              ImgPV.PData[j,i] := BKData[m,j,i];
          ImgPV.Median_Img(ImgPV.PData);
          for j:=0 to ImgPV.PH-1 do
            for i:=0 to ImgPV.PW-1 do
              BKData[m,j,i] := ImgPV.PData[j,i];
        end;
      end;

      for j:=0 to ImgPV.PH-1 do
        for i:=0 to ImgPV.PW-1 do
          BKData[(Pro div BKInt)+1,j,i] := BKData[(Pro div BKInt),j,i];

      if Edit_SelBK.Text<>'-1' then
      begin
        m := StrToInt(Edit_SelBK.Text);
        if m=0 then
        begin
          for j:=0 to ImgPV.PH-1 do
            for i:=0 to ImgPV.PW-1 do
            begin
              BKData[1,j,i] := BKData[0,j,i];
              BKData[2,j,i] := BKData[0,j,i];
            end;
        end
        else
        begin
          for j:=0 to ImgPV.PH-1 do
            for i:=0 to ImgPV.PW-1 do
              BKData[0,j,i] := BKData[m,j,i];
        end;
      end;
    end;

    SB.SimpleText := 'BK Imgs loaded';

    m := UD_PrevBK.Position;
    for j:=0 to ImgPV.PH-1 do
      for i:=0 to ImgPV.PW-1 do
        ImgPV.PData[j,i] := BKData[m,j,i];

    ImgPV.Show;
    ImgPV.Draw_Data(Sender);
  end;
end;

procedure TForm_Main.BB_DARKClick(Sender: TObject);
var
  i, j, k, DN, DBK :longint;
begin
  Init_Cond(Sender);
  DN := StrToInt(Edit_DN.Text);
  DBK := StrToInt(Edit_DBK.Text);

  if CB_Damy.Checked then
  begin
    for j:=0 to ImgPV.PH-1 do
      for i:=0 to ImgPV.PW-1 do
        DarkData[j,i] := DBK;
  end
  else
  begin
    for k:=0 to DN-1 do
    begin
      if CB_Inv3.Checked then
      begin
        case UD_Dig.Position of
          0: ImgPV.Load_WORDData(Edit_DFN.Text+k.ToString+Edit_EXT.Text,Sender);
          1: ImgPV.Load_WORDData(Edit_DFN.Text+Format('%.1d',[k])+Edit_EXT.Text,Sender);
          2: ImgPV.Load_WORDData(Edit_DFN.Text+Format('%.2d',[k])+Edit_EXT.Text,Sender);
          3: ImgPV.Load_WORDData(Edit_DFN.Text+Format('%.3d',[k])+Edit_EXT.Text,Sender);
          4: ImgPV.Load_WORDData(Edit_DFN.Text+Format('%.4d',[k])+Edit_EXT.Text,Sender);
          5: ImgPV.Load_WORDData(Edit_DFN.Text+Format('%.5d',[k])+Edit_EXT.Text,Sender);
          6: ImgPV.Load_WORDData(Edit_DFN.Text+Format('%.6d',[k])+Edit_EXT.Text,Sender);
        end;
      end
      else
      begin
        ImgPV.UD_TPro.Position := k;
        ImgPV.Load_WORDData(Edit_DFN.Text,Sender);
      end;

      for j:=0 to ImgPV.PH-1 do
        for i:=0 to ImgPV.PW-1 do
          DarkData[j,i] := DarkData[j,i]+ImgPV.IData[j,i];
    end;

    for j:=0 to ImgPV.PH-1 do
      for i:=0 to ImgPV.PW-1 do
        DarkData[j,i] := DarkData[j,i]/DN;

  end;

  for j:=0 to ImgPV.PH-1 do
    for i:=0 to ImgPV.PW-1 do
      ImgPV.PData[j,i] := DarkData[j,i];

  ImgPV.Show;
  ImgPV.Draw_Data(Sender);
end;


procedure QuickSort(iLo, iHi: longint);
var
  Lo, Hi, Li: longint;
  Mid, T:double;
begin
  Lo := iLo;
  Hi := iHi;
  Mid := SData[(Lo + Hi) div 2];
  repeat
    while SData[Lo] < Mid do Inc(Lo);
    while SData[Hi] > Mid do Dec(Hi);
    if Lo <= Hi then
    begin
      T := SData[Lo];
      SData[Lo] := SData[Hi];
      SData[Hi] := T;

      Inc(Lo);
      Dec(Hi);
    end;
  until Lo > Hi;
  if Hi > iLo then QuickSort(iLo, Hi);
  if Lo < iHi then QuickSort(Lo, iHi);
end;

procedure TForm_Main.Median_Filter(Sender: TObject);
var
  i,j,ii,jj, lPW, lPH:longint;
begin
  lPW := ImgPV.PW ;
  lPH := ImgPV.PH ;
  for j:=1 to lPH-2 do
    for i:=1 to lPW-2 do
    begin
//      for jj:=-1 to 1 do
//        for ii:=-1 to 1 do
//          SData[jj*3+ii+4] := NData[jj+j,ii+i];
      for jj:=0 to 1 do
        for ii:=0 to 1 do
          SData[jj*2+ii] := NData[jj+j,ii+i];
      QuickSort(Low(SData),High(SData));
      TmpData[j,i] := SData[2];
    end;
  NData := TmpData;
end;


procedure TForm_Main.Prev_CalcImg(Showing: boolean; Sender: TObject);
var
  i, j,m, n, SubBK, ImgN :longint;
  TmpBK : double;
  a,b:double;
begin
  Init_Cond(Sender);
  ImgN := StrToInt(Edit_ImgN.Text);
  m := UD_PrevNImg.Position;

  for j:=0 to ImgPV.PH-1 do
    for i:=0 to ImgPV.PW-1 do
      TmpData[j,i] :=0;
  for n:=0 to ImgN-1 do
  begin
    if CB_IndV.Checked then
    begin
      case UD_Dig.Position of
        0: ImgPV.Load_WORDData(Edit_DFN.Text+m.ToString+Edit_EXT.Text,Sender);
        1: ImgPV.Load_WORDData(Edit_DFN.Text+Format('%.1d',[m])+Edit_EXT.Text,Sender);
        2: ImgPV.Load_WORDData(Edit_DFN.Text+Format('%.2d',[m])+Edit_EXT.Text,Sender);
        3: ImgPV.Load_WORDData(Edit_DFN.Text+Format('%.3d',[m])+Edit_EXT.Text,Sender);
        4: ImgPV.Load_WORDData(Edit_DFN.Text+Format('%.4d',[m])+Edit_EXT.Text,Sender);
        5: ImgPV.Load_WORDData(Edit_DFN.Text+Format('%.5d',[m])+Edit_EXT.Text,Sender);
        6: ImgPV.Load_WORDData(Edit_DFN.Text+Format('%.6d',[m])+Edit_EXT.Text,Sender);
      end;
    end
    else
    begin
      ImgPV.UD_TPro.Position := m*ImgN+n;
      ImgPV.Load_WORDData(Edit_FN.Text,Sender);
    end;
    for j:=0 to ImgPV.PH-1 do
      for i:=0 to ImgPV.PW-1 do
        TmpData[j,i] :=TmpData[j,i]+ImgPV.PData[j,i];
  end;
  for j:=0 to ImgPV.PH-1 do
    for i:=0 to ImgPV.PW-1 do
      TmpData[j,i] :=TmpData[j,i]/ImgN;

  if CB_MedF.Checked then
  begin
//  Median_Filter(Sender);
    for j:=0 to ImgPV.PH-1 do
      for i:=0 to ImgPV.PW-1 do
         ImgPV.PData[j,i] := TmpData[j,i];
    ImgPV.Median_Img(ImgPV.PData);
    for j:=0 to ImgPV.PH-1 do
      for i:=0 to ImgPV.PW-1 do
        TmpData[j,i] := ImgPV.PData[j,i];
  end;

  if not(CB_USEBK.Checked) then
  begin
     SubBK := m div (BKInt+BKNum);
     a := (m-SubBK*(BKInt+BKNum)-BKNum)/(BKInt);
     b := 1-a;
  end
  else
  begin
    SubBK := 0;
    a:=frac(m/(BKInt+0.1));
    b:=1-a;
  end;

  if not(CB_WOBK.Checked) then
  begin
    for j:=0 to ImgPV.PH-1 do
      for i:=0 to ImgPV.PW-1 do
      begin
        TmpBK := BKData[SubBK,j,i] *b+BKData[SubBK+1,j,i]*a;
        NData[j,i] := ((TmpData[j,i]-DarkData[j,i])/(TmpBK-DarkData[j,i]));
      end;
  end
  else
    NData := TmpData;


  if CB_Ln2.Checked then
    for j:=0 to ImgPV.PH-1 do
      for i:=0 to ImgPV.PW-1 do
        if NData[j,i] <=0 then
          NData[j,i] := 1
        else
          NData[j,i] := -Ln(NData[j,i]);

  for j:=0 to 2 do
    for i:=0 to ImgPV.PW do
      NData[j,i] :=0;
  for j:=ImgPV.PH-3 to ImgPV.PH do
    for i:=0 to ImgPV.PW do
      NData[j,i] :=0;

  for j:=0 to ImgPV.PH-1 do
    for i:=0 to 2 do
      NData[j,i] :=0;
  for j:=0 to ImgPV.PH-1 do
    for i:=ImgPV.PW-3 to ImgPV.PW do
      NData[j,i] :=0;

  if Showing then
  begin
    ImgPV.PData := NData;
    ImgPV.Show;
    ImgPV.Draw_Data(Sender);
  end;
end;

procedure TForm_Main.BB_Prev_NImgClick(Sender: TObject);
begin
  Prev_CalcImg(true, Sender);
end;

procedure TForm_Main.BB_ConvClick(Sender: TObject);
var
  k,kk,kkk,i,ii,j,jj,lPW,lPH, ImgN, lPRo:longint;
  FS :TFileStream;
  TmpDbl : double;
  BFN, BDir, lFN : string;
  lDData : array[0..4000] of double;
begin
  Init_Cond(Sender);

  Go := true;
  BFN := Edit_FN.Text;
  ImgN := StrToInt(Edit_ImgN.Text);

  if not(TDirectory.Exists(ExtractFilePath(BFN)+TPath.GetFileNameWithoutExtension(BFN)+'_cal')) then
    MkDir(ExtractFilePath(BFN)+TPath.GetFileNameWithoutExtension(BFN)+'_cal');
  if not(TDirectory.Exists(ExtractFilePath(BFN)+TPath.GetFileNameWithoutExtension(BFN)+'_cal\pro')) then
    MkDir(ExtractFilePath(BFN)+TPath.GetFileNameWithoutExtension(BFN)+'_cal\pro');
  BDir := ExtractFilePath(BFN)+TPath.GetFileNameWithoutExtension(BFN)+'_cal\pro\';
  lFN :=TPath.GetFileNameWithoutExtension(BFN);

  if CB_BGProc.Checked then
  begin
    BB_PrevBKClick(Sender);
    BB_DARKClick(Sender);
  end;

  kk:=-1;

  if CB_USEBK.Checked then
    lPro := Pro
  else
    lPro := Pro+((Pro div BKInt)+1)*(BKNum);

  for k:=0 to lPro-1 do
  begin
    if ((k mod (BKInt+BKNum))>=(BKNum)) or (CB_USEBK.Checked) then
    begin
      UD_PrevNImg.Position := k+OffImg;

      Prev_CalcImg(true,Sender);
      Inc(kk);
      SB.SimpleText := 'Projection : '+kk.ToString;
      Application.ProcessMessages;
      if not(Go) then
        exit;

      if CB_Bin.Checked then
      begin
        lPW := ImgPV.PW div 2;
        lPH := ImgPV.PH div 2;

        for j:=0 to lPH-1 do
          for i:=0 to lPW-1 do
          begin
            TmpDbl :=0;
            for jj:=0 to 1 do
              for ii:=0 to 1 do
                TmpDbl := TmpDbl+NData[j*2+jj,i*2+ii];
            TmpData[j,i] := TmpDbl/4;
          end;
        NData := TmpData;
      end
      else
      begin
        lPW := ImgPV.PW ;
        lPH := ImgPV.PH ;
      end;

      if CB_x2.Checked then
        kkk:=kk*2+1
      else
        kkk:=kk;

      if CB_SwapXY.Checked then
      begin
        FS := TFileStream.Create(BDir+lFN+'_'+IntToStr(kkk),fmCreate);
        for j:=0 to lPW-1 do
        begin
          for i:=0 to lPH-1 do
            lDData[i] := NData[i,j] ;
          FS.WriteBuffer(lDData,lPH*8);
        end;
        FS.Free;
      end
      else
      begin
        FS := TFileStream.Create(BDir+lFN+'_'+IntToStr(kkk),fmCreate);
        for j:=0 to lPH-1 do
        begin
          for i:=0 to lPW-1 do
            lDData[i] := NData[j,i] ;
          FS.WriteBuffer(lDData,lPW*8);
        end;
        FS.Free;
      end;
      if not(go) then
        exit;

    end;
  end;
end;

procedure TForm_Main.BB_MakeSinoClick(Sender: TObject);
var
  i,j,k,kk,lPW, AvR:longint;
  FS : TFileStream;
  lDData : array[0..4000] of double;
  BFN, BDir1, BDir2, lFN : string;
begin
  Init_Cond(Sender);
  AvR := StrToInt(Edit_AvR.Text);

  Go := true;
  if CB_SwapXY.Checked then
    lPW := StrToInt(Edit_PH.Text)
  else
    lPW := StrToInt(Edit_PW.Text);
  if CB_Bin.Checked then
    lPW := lPW div 2;

  BFN := Edit_FN.Text;
  if not(TDirectory.Exists(ExtractFilePath(BFN)+TPath.GetFileNameWithoutExtension(BFN)+'_cal\sino')) then
    MkDir(ExtractFilePath(BFN)+TPath.GetFileNameWithoutExtension(BFN)+'_cal\sino');
  BDir1 := ExtractFilePath(BFN)+TPath.GetFileNameWithoutExtension(BFN)+'_cal\pro\';
  BDir2 := ExtractFilePath(BFN)+TPath.GetFileNameWithoutExtension(BFN)+'_cal\sino\';
  lFN :=TPath.GetFileNameWithoutExtension(BFN);

  for k:=StrToInt(Edit_SinoST.Text) to StrToInt(Edit_SinoEnd.Text) do
  begin
    for j:=0 to Pro-1 do
      for i:=0 to lPW-1 do
        SSData[j,i] := 0;

    for kk:=-AvR+k to k+AvR do
    begin
      for j:=0 to Pro-1 do
      begin
        FS := TFileStream.Create(BDir1+lFN+'_'+IntToStr(j),fmOpenRead);
        FS.Position := Int64(lPW*kk*8);
        FS.ReadBuffer(lDData,lPW*8);
        for i:=0 to lPW-1 do
          NData[j,i] := lDData[i];
        FS.Free;
      end;
      for j:=0 to Pro-1 do
        for i:=0 to lPW-1 do
          SSData[j,i] := SSData[j,i]+((AvR+1)-Abs(kk-k))*NData[j,i];
    end;

    if AvR<>0 then
      for j:=0 to Pro-1 do
        for i:=0 to lPW-1 do
          SSData[j,i] := SSData[j,i]/4;

    ImgPV.PW := lPW;
    ImgPV.PH := Pro;

    if CB_SinoMed.Checked then
      ImgPV.Median_Img2(SSData);

    ImgPV2.Edit_PMin.Text := ImgPV.Edit_PMin.Text;
    ImgPV2.Edit_PMax.Text := ImgPV.Edit_PMax.Text;
    ImgPV2.PW := lPW;
    ImgPV2.PH := Pro;
    ImgPV2.PData := SSData;
    ImgPV2.Show;
    ImgPV2.Draw_Data(Sender);

    FS := TFileStream.Create(BDir2+lFN+'_s_'+IntToStr(k),fmCreate);
    for j:=0 to Pro-1 do
    begin
      for i:=0 to lPW-1 do
        lDData[i] := SSData[j,i] ;
      FS.WriteBuffer(lDData,lPW*8);
    end;
    FS.Free;

    Application.ProcessMessages;
    SB.SimpleText := 'Slice : '+k.ToString;
    if not(go) then
      exit;
  end;
end;


end.
