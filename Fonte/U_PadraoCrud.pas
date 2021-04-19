unit U_PadraoCrud;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.ExtCtrls, Data.DB,
  Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls, Vcl.Buttons;

type
  TfrmPadraoCRUD = class(TForm)
    pnlRodape: TPanel;
    pgcPrincipal: TPageControl;
    tabGrid: TTabSheet;
    tabData: TTabSheet;
    grdListagem: TDBGrid;
    btnIncluir: TBitBtn;
    btnAlterar: TBitBtn;
    btnExcluir: TBitBtn;
    btnCancelar: TBitBtn;
    btnGravar: TBitBtn;
    btnSair: TBitBtn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
    procedure btnIncluirClick(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure btnSairClick(Sender: TObject);

  private
    { Private declarations }
    procedure ModoGrid;
    procedure ModoForm;
  public
    { Public declarations }
  end;

var
  frmPadraoCRUD: TfrmPadraoCRUD;

implementation

{$R *.dfm}

procedure TfrmPadraoCRUD.btnAlterarClick(Sender: TObject);
begin
    ModoForm;
end;

procedure TfrmPadraoCRUD.btnCancelarClick(Sender: TObject);
begin
    ModoGrid;
end;

procedure TfrmPadraoCRUD.btnGravarClick(Sender: TObject);
begin
    ModoGrid;
end;

procedure TfrmPadraoCRUD.btnIncluirClick(Sender: TObject);
begin
    ModoForm;
end;

procedure TfrmPadraoCRUD.btnSairClick(Sender: TObject);
begin
    Close;
end;

procedure TfrmPadraoCRUD.FormActivate(Sender: TObject);
begin
    ModoGrid;
end;

procedure TfrmPadraoCRUD.FormClose(Sender: TObject; var Action: TCloseAction);
begin
    Action := TCloseAction.caFree;
end;

procedure TfrmPadraoCRUD.ModoForm;
begin
     tabGrid.TabVisible := false;
     tabData.TabVisible := true;
     pgcPrincipal.ActivePage := (tabData);

     btnIncluir.Enabled := false;
     btnAlterar.Enabled := false;
     btnExcluir.Enabled := false;
     btnCancelar.Enabled := true;
     btnGravar.Enabled := true;
     btnSair.Enabled := false;
end;

procedure TfrmPadraoCRUD.ModoGrid;
begin

    tabGrid.TabVisible := true;
    tabData.TabVisible := false;
    pgcPrincipal.ActivePage := (tabGrid);

    btnIncluir.Enabled := true;
    btnAlterar.Enabled := true;
    btnExcluir.Enabled := true;
    btnCancelar.Enabled := false;
    btnGravar.Enabled := false;
    btnSair.Enabled := true;

end;

end.
