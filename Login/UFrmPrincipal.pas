unit UFrmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.Imaging.pngimage, UFrmLoginRealizado;

type
  TFrmLoginPrincipal = class(TForm)
    Panel1: TPanel;
    CbxNomes: TComboBox;
    Panel2: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    EdtSenha: TEdit;
    Label3: TLabel;
    BtnEntrar: TButton;
    Image1: TImage;
    procedure BtnEntrarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmLoginPrincipal: TFrmLoginPrincipal;

implementation

{$R *.dfm}

procedure TFrmLoginPrincipal.BtnEntrarClick(Sender: TObject);
begin
  if (CbxNomes.ItemIndex = -1) and (EdtSenha.Text = '') then
  begin
    MessageDlg('Selecione o usuário e senha!', mtinformation, [mbOK], 0);
  end
  else if (CbxNomes.ItemIndex = 0) and (EdtSenha.Text = '') then
  begin
    MessageDlg('Digite a senha!', mtinformation, [mbOK], 0);
    EdtSenha.SetFocus;
  end
  else if (CbxNomes.ItemIndex = 0) and (EdtSenha.Text = '123') then
  begin
    FrmLoginRealizado.Show;
  end
  else if EdtSenha.Text <> '123' then
  begin
    MessageDlg('Senha incorreta!', mtError, [mbOK], 0);
    EdtSenha.SetFocus;
  end
  else
    MessageDlg('Selecione o usuário!', mtinformation, [mbOK], 0);

end;

end.
