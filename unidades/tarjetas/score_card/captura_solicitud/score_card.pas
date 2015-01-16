unit score_card;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, DB,
  Dialogs, ZQuery, ZMySqlQuery, ProCtrls, TFlatButtonUnit, DateUtils, StdCtrls,
  TFlatEditUnit, TFlatComboBoxUnit, ToolEdit, Mask, CurrEdit, TFlatGroupBoxUnit,
  mxFlatControls, LMDControl, LMDBaseControl, dateutil, LMDBaseGraphicControl,
  LMDBaseLabel, LMDCustomLabel, LMDCustomLabelFill, LMDLabelFill, ExtCtrls,
  TFlatCheckBoxUnit, TFlatRadioButtonUnit, TFlatPanelNoCaptionUnit, RxLookup,
  TFlatMemoUnit, ComCtrls, JBPageControl, RXCtrls, TFlatPanelUnit, Grids, Math,
  DBGrids, ExDBGrid, RxMemDS, QRCtrls, StrUtils, Buttons, IdBaseComponent,
  IdComponent, IdTCPConnection, IdTCPClient, IdFTP, kbmMemTable, ScktComp,Types;

type
  TfrmScoreCard = class(TForm)
    msqReferencias: TZMySqlQuery;
    gdatosCredito: TFlatGroupBox;
    Label4: TLabel;
    Label5: TLabel;
    Label79: TLabel;
    Label42: TLabel;
    ceCap_Pago: TCurrencyEdit;
    deVigencia_credito: TDateEdit;
    defecha_entrega: TDateEdit;
    defecha_captura: TDateEdit;
    cmdVigencia: TFlatButton;
    cmdGuardar: TFlatButton;
    cmdRegresar: TFlatButton;
    cmdCancelar: TFlatButton;
    cmdActualiza_Score: TFlatButton;
    cmdimprimir: TFlatButton;
    cmdRechazar: TFlatButton;
    jbpCliente: TJBPageControl;
    tsBasicos: TTabSheet;
    gbGenerales: TFlatGroupBox;
    Label44: TLabel;
    Label3: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label14: TLabel;
    Label68: TLabel;
    Label70: TLabel;
    Label71: TLabel;
    lresp: TLabel;
    Label81: TLabel;
    Label46: TLabel;
    Label45: TLabel;
    jbpExtras_Cliente: TJBPageControl;
    tsDomicilio_Cliente: TTabSheet;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label17: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label87: TLabel;
    Label88: TLabel;
    Label89: TLabel;
    Label90: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    txtDomicilio_cliente: TFlatEdit;
    txtNumcasa_cliente: TFlatEdit;
    txtColonia_cliente: TFlatEdit;
    txtCalles_cliente: TFlatEdit;
    txtCiudad_cliente: TFlatEdit;
    txtTelefono_cliente: TFlatEdit;
    txtEstado_Cliente: TFlatEdit;
    txtMeses_Domicilio_cliente: TCurrencyEdit;
    txtMeses_Poblacion_cliente: TCurrencyEdit;
    txtCP_cliente: TCurrencyEdit;
    cmbCasa_cliente: TFlatComboBox;
    txtComentarios: TFlatMemo;
    tsTrabajo_Cliente: TTabSheet;
    Label22: TLabel;
    Label26: TLabel;
    Label23: TLabel;
    Label27: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label2: TLabel;
    Label91: TLabel;
    Label96: TLabel;
    Label52: TLabel;
    lbNum_Nomina: TLabel;
    txtNum_Nomina: TFlatEdit;
    txtConvenio: TRxDBLookupCombo;
    cmdMCredinomina: TFlatButton;
    txtTrabajo_cliente: TFlatEdit;
    txtPuesto_cliente: TFlatEdit;
    txtSueldo_cliente: TCurrencyEdit;
    txtTel_trabajo_cliente: TFlatEdit;
    txtDomicilio_trabajo_cliente: TFlatEdit;
    txtMeses_Trabajo_Cliente: TCurrencyEdit;
    txtColonia_Trabajo_Cliente: TFlatEdit;
    txtCiudad_Trabajo_Cliente: TFlatEdit;
    txtEstado_Trabajo_Cliente: TFlatEdit;
    txtCorreoE_Cliente: TFlatEdit;
    pnCredinomina: TFlatPanelNoCaption;
    Label143: TLabel;
    Label144: TLabel;
    Label145: TLabel;
    Label146: TLabel;
    Label147: TLabel;
    Label148: TLabel;
    Label149: TLabel;
    Label150: TLabel;
    Label151: TLabel;
    Label152: TLabel;
    Label153: TLabel;
    Label154: TLabel;
    txtExpediente: TFlatEdit;
    txtPlaza: TFlatEdit;
    txtNum_Empleado: TFlatEdit;
    txtNum_Pension: TFlatEdit;
    txtSindicato: TFlatEdit;
    txtZonaE: TFlatEdit;
    txtFiliacion: TFlatEdit;
    txtTPersonal: TFlatEdit;
    txtTContrato: TFlatEdit;
    txtNum_Plaza: TFlatEdit;
    txtNum_Ficha: TFlatEdit;
    txtCCTrabajo: TFlatEdit;
    cmdListo: TFlatButton;
    txtPaterno_cliente: TFlatEdit;
    txtNombre_cliente: TFlatEdit;
    txtMaterno_cliente: TFlatEdit;
    txtRFC_cliente: TFlatEdit;
    txtDependientes_cliente: TCurrencyEdit;
    cmbEstado_Civil_cliente: TFlatComboBox;
    cTipo: TFlatComboBox;
    txtPagador: TFlatEdit;
    txtTel_Movil_Cliente: TFlatEdit;
    deNacimiento_Cliente: TDateEdit;
    rbMasculino: TFlatRadioButton;
    rbFemenino: TFlatRadioButton;
    txtMaterno_conyuge_Cliente: TFlatEdit;
    txtPaterno_conyuge_Cliente: TFlatEdit;
    txtNombre_conyuge_Cliente: TFlatEdit;
    tsAval: TTabSheet;
    gbAval: TFlatGroupBox;
    Label72: TLabel;
    Label73: TLabel;
    Label78: TLabel;
    Label92: TLabel;
    Label80: TLabel;
    Label131: TLabel;
    Label1: TLabel;
    Label84: TLabel;
    Label138: TLabel;
    Label139: TLabel;
    txtPaterno_aval: TFlatEdit;
    txtNombre_aval: TFlatEdit;
    txtMaterno_aval: TFlatEdit;
    txtTelefonoM_aval: TFlatEdit;
    txtDependientes_aval: TCurrencyEdit;
    chAval: TmxFlatCheckBox;
    Extras_Aval: TJBPageControl;
    tsDomicilio_Aval: TTabSheet;
    Label74: TLabel;
    Label75: TLabel;
    Label76: TLabel;
    Label82: TLabel;
    Label83: TLabel;
    Label93: TLabel;
    Label94: TLabel;
    Label95: TLabel;
    Label99: TLabel;
    Label100: TLabel;
    Label101: TLabel;
    Label102: TLabel;
    Label129: TLabel;
    txtDomicilio_Aval: TFlatEdit;
    txtNumCasa_Aval: TFlatEdit;
    txtColonia_Aval: TFlatEdit;
    txtCiudad_Aval: TFlatEdit;
    txtTelefonoF_Aval: TFlatEdit;
    txtEstado_Aval: TFlatEdit;
    txtMesesD_Aval: TCurrencyEdit;
    txtMesesP_Aval: TCurrencyEdit;
    cmbTipo_Propiedad_Aval: TFlatComboBox;
    txtDomicilio_calles: TFlatEdit;
    txtDatos_Escritura_Aval: TFlatEdit;
    txtCP_Aval: TCurrencyEdit;
    cmbCasa_Aval: TFlatComboBox;
    txtUbicacion_Predio_Aval: TFlatEdit;
    tsTrabajo_Aval: TTabSheet;
    Label103: TLabel;
    Label104: TLabel;
    Label105: TLabel;
    Label106: TLabel;
    Label107: TLabel;
    Label108: TLabel;
    Label109: TLabel;
    Label110: TLabel;
    Label111: TLabel;
    Label140: TLabel;
    txtTrabajo_Aval: TFlatEdit;
    txtOficio_Aval: TRxDBLookupCombo;
    txtPuesto_Aval: TFlatEdit;
    txtSueldo_Aval: TCurrencyEdit;
    txtTel_trabajo_Aval: TFlatEdit;
    txtDomicilio_trabajo_Aval: TFlatEdit;
    txtMeses_Trabajo_Aval: TCurrencyEdit;
    txtColonia_Trabajo_Aval: TFlatEdit;
    txtCiudad_Trabajo_Aval: TFlatEdit;
    txtEstado_Trabajo_Aval: TFlatEdit;
    txtCorreoE_Aval: TFlatEdit;
    FlatGroupBox1: TFlatGroupBox;
    rbSiCI: TFlatRadioButton;
    rbNoCI: TFlatRadioButton;
    tsPersonales_Aval: TTabSheet;
    Label112: TLabel;
    Label115: TLabel;
    Label116: TLabel;
    Label119: TLabel;
    txtNombre_RP1_Aval: TFlatEdit;
    cmbRelacion_RP1_Aval: TFlatComboBox;
    txtTelefono_RP1_Aval: TFlatEdit;
    txtNombre_RP2_Aval: TFlatEdit;
    cmbRelacion_RP2_Aval: TFlatComboBox;
    txtTelefono_RP2_Aval: TFlatEdit;
    deNacimiento_Aval: TDateEdit;
    cmbEstado_Civil_Aval: TFlatComboBox;
    txtRFC_Aval: TFlatEdit;
    rbMasculino_Aval: TFlatRadioButton;
    rbFemenino_Aval: TFlatRadioButton;
    txtMaterno_Conyuge_Aval: TFlatEdit;
    txtPaterno_Conyuge_Aval: TFlatEdit;
    txtNombre_Conyuge_Aval: TFlatEdit;
    tsOtros: TTabSheet;
    lbStatus: TRxLabel;
    fpBusca: TFlatPanel;
    Label18: TLabel;
    ceTarjeta: TCurrencyEdit;
    Label38: TLabel;
    edTarjeta: TFlatEdit;
    FlatGroupBox4: TFlatGroupBox;
    FlatPanel1: TFlatPanel;
    lbIzq: TLMDLabelFill;
    lbDer: TLMDLabelFill;
    lbTrasera: TLMDLabelFill;
    lbFrontal: TLMDLabelFill;
    FlatPanelNoCaption9: TFlatPanelNoCaption;
    FlatPanelNoCaption1: TFlatPanelNoCaption;
    FlatPanelNoCaption2: TFlatPanelNoCaption;
    FlatPanelNoCaption3: TFlatPanelNoCaption;
    FlatPanelNoCaption4: TFlatPanelNoCaption;
    FlatPanelNoCaption5: TFlatPanelNoCaption;
    FlatPanelNoCaption6: TFlatPanelNoCaption;
    FlatPanelNoCaption7: TFlatPanelNoCaption;
    FlatPanelNoCaption8: TFlatPanelNoCaption;
    chpr8: TmxFlatRadioButton;
    chpr18: TmxFlatRadioButton;
    chpr9: TmxFlatRadioButton;
    chpr13: TmxFlatRadioButton;
    chpr16: TmxFlatRadioButton;
    chpr12: TmxFlatRadioButton;
    chpr7: TmxFlatRadioButton;
    chpr17: TmxFlatRadioButton;
    txtNombre_Calle: TFlatEdit;
    gbExpediente: TFlatGroupBox;
    chbSolicitud: TFlatCheckBox;
    chbContrato: TFlatCheckBox;
    chbVerificacion: TFlatCheckBox;
    chbPagare: TFlatCheckBox;
    txtVPagare: TCurrencyEdit;
    chbAutorizacionBuro: TFlatCheckBox;
    chbComprobanteIng: TFlatCheckBox;
    chbComprobanteDom: TFlatCheckBox;
    chbAcuse: TFlatCheckBox;
    chbReporteBuro: TFlatCheckBox;
    gbIdentificacion: TFlatGroupBox;
    Label33: TLabel;
    Label32: TLabel;
    txtFolio: TFlatEdit;
    cTipoIden: TFlatComboBox;
    fgResumen: TFlatGroupBox;
    lbCalificacion: TLabel;
    lresultado: TLabel;
    Label133: TLabel;
    Label135: TLabel;
    Label137: TLabel;
    Label136: TLabel;
    Label141: TLabel;
    label77: TLabel;
    cap_pago_p: TLabel;
    lbQuien: TLabel;
    ExDBGrid1: TExDBGrid;
    ceCap_Pag_Men: TCurrencyEdit;
    ceCap_Pag_Quin: TCurrencyEdit;
    cmbStatus2: TFlatComboBox;
    cmdAplicar: TFlatButton;
    dsLineas: TDataSource;
    mdLineas: TRxMemoryData;
    Label6: TLabel;
    txtClave_Cuenta: TFlatEdit;
    mdCampos: TRxMemoryData;
    cmdComp_Domi: TFlatButton;
    msqConvenios: TZMySqlQuery;
    dsConvenios: TDataSource;
    txtFecha: TDateEdit;
    Label19: TLabel;
    ceLim_Cred: TCurrencyEdit;
    msqEmpleado: TZMySqlQuery;
    Label28: TLabel;
    txtMunicipio_Cliente: TFlatEdit;
    fpHistorial: TFlatPanel;
    dbgHistorial: TExDBGrid;
    cmdOcultaHistorial: TFlatButton;
    msqHistorial: TZMySqlQuery;
    dsHistorial: TDataSource;
    cmdDomiciliaria: TFlatButton;
    cmdTelefonica: TFlatButton;
    Label41: TLabel;
    Label43: TLabel;
    txtNombre_RF1_Aval: TFlatEdit;
    Label120: TLabel;
    cmbRelacion_RF1_Aval: TFlatComboBox;
    Label123: TLabel;
    txtTelefono_RF1_Aval: TFlatEdit;
    cmbRelacion_RF2_Aval: TFlatComboBox;
    txtTelefono_RF2_Aval: TFlatEdit;
    Label127: TLabel;
    Label124: TLabel;
    txtNombre_RF2_Aval: TFlatEdit;
    Label47: TLabel;
    Label48: TLabel;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Label36: TLabel;
    edVisa_banco: TFlatEdit;
    Label40: TLabel;
    edMaster_banco: TFlatEdit;
    Label37: TLabel;
    edVisa_numero: TFlatEdit;
    Label35: TLabel;
    edMaster_numero: TFlatEdit;
    Label155: TLabel;
    cmbTipo_RC1: TFlatComboBox;
    Label39: TLabel;
    cmbTipo_RC2: TFlatComboBox;
    txtFolio_Recibo: TFlatEdit;
    chbEnviaExp: TFlatCheckBox;
    txtFechaEnvio: TDateEdit;
    lblNombreMama: TLabel;
    txtNombreMama: TFlatEdit;
    lColor_dom: TLabel;
    cColor_dom: TFlatComboBox;
    Button1: TButton;
    txtCategoria_Cliente: TFlatEdit;
    cmdLinea_Cto: TFlatButton;
    Label49: TLabel;
    defecha_elaboracion: TDateEdit;
    mxFlatSpeedButton4: TmxFlatSpeedButton;
    cmbTipoTel: TFlatComboBox;
    TabSheet3: TTabSheet;
    Label50: TLabel;
    mxFlatSpeedButton2: TmxFlatSpeedButton;
    Label51: TLabel;
    txtOtrosIngresos: TCurrencyEdit;
    txtFuenteIngresos: TFlatEdit;
    txtTotalIngresos: TCurrencyEdit;
    cmdCondicionar: TFlatButton;
    Label53: TLabel;
    Label58: TLabel;
    Label61: TLabel;
    Label66: TLabel;
    Label29: TmxFlatSpeedButton;
    Label30: TmxFlatSpeedButton;
    Label31: TmxFlatSpeedButton;
    Label34: TmxFlatSpeedButton;
    Label57: TmxFlatSpeedButton;
    Label59: TmxFlatSpeedButton;
    Label63: TmxFlatSpeedButton;
    Label67: TmxFlatSpeedButton;
    mxFlatSpeedButton5: TmxFlatSpeedButton;
    mxFlatSpeedButton6: TmxFlatSpeedButton;
    mxFlatSpeedButton7: TmxFlatSpeedButton;
    mxFlatSpeedButton8: TmxFlatSpeedButton;
    edNombre_rp1: TFlatEdit;
    edNombre_rp2: TFlatEdit;
    edNombre_rp3: TFlatEdit;
    edNombre_rp4: TFlatEdit;
    edTelefono_rp1: TFlatEdit;
    edTelefono_rp2: TFlatEdit;
    edTelefono_rp3: TFlatEdit;
    edTelefono_rp4: TFlatEdit;
    cbRelacion_rp1: TFlatComboBox;
    cbRelacion_rp2: TFlatComboBox;
    edRelacion_Rp3: TFlatComboBox;
    edRelacion_Rp4: TFlatComboBox;
    txtDomic_rp1: TFlatEdit;
    txtDomic_rp2: TFlatEdit;
    txtDomic_rp3: TFlatEdit;
    txtDomic_rp4: TFlatEdit;
    Label54: TLabel;
    txtComentarioBuro: TFlatMemo;
    msqPlazos: TZMySqlQuery;
    msqTemp2: TZMySqlQuery;
    FlatButton1: TFlatButton;
    msqcuentas_migradas: TZMySqlQuery;
    btnConsultaBuro: TFlatButton;
    msqBuro: TZMySqlQuery;
    mdBuro_2: TkbmMemTable;
    mdTabla1: TRxMemoryData;
    mdTabla2: TRxMemoryData;
    mdTabla3: TRxMemoryData;
    mdBuro: TRxMemoryData;
    ClientSocket1: TClientSocket;
    ButtonResultadoBuro: TFlatButton;
    ButtonRecalcular: TFlatButton;
    procedure cmdRegresarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure cmdCancelarClick(Sender: TObject);
    procedure cmdimprimirClick(Sender: TObject);
    procedure cmdRechazarClick(Sender: TObject);
    procedure ceTarjetaKeyPress(Sender: TObject; var Key: Char);
    procedure edTarjetaKeyPress(Sender: TObject; var Key: Char);
    procedure txtClave_CuentaKeyPress(Sender: TObject; var Key: Char);
    procedure cTipoChange(Sender: TObject);
    procedure cmdListoClick(Sender: TObject);
    procedure cmdMCredinominaClick(Sender: TObject);
    procedure txtPagadorChange(Sender: TObject);
    procedure txtPagadorExit(Sender: TObject);
    procedure cmdVigenciaClick(Sender: TObject);
    procedure jbpClienteChanging(Sender: TObject;
      var AllowChange: Boolean);
    procedure chpr8Click(Sender: TObject);
    procedure ceCap_PagoChange(Sender: TObject);
    procedure txtNombre_clienteChange(Sender: TObject);
    procedure txtPaterno_clienteChange(Sender: TObject);
    procedure txtMaterno_clienteChange(Sender: TObject);
    procedure txtMaterno_clienteKeyPress(Sender: TObject; var Key: Char);
    procedure txtMaterno_clienteExit(Sender: TObject);
    procedure deNacimiento_ClienteExit(Sender: TObject);
    procedure txtRFC_clienteChange(Sender: TObject);
    procedure txtRFC_clienteExit(Sender: TObject);
    procedure txtTel_Movil_ClienteChange(Sender: TObject);
    procedure txtTel_Movil_ClienteKeyPress(Sender: TObject; var Key: Char);
    procedure txtDomicilio_clienteChange(Sender: TObject);
    procedure txtNumcasa_clienteChange(Sender: TObject);
    procedure txtColonia_clienteChange(Sender: TObject);
    procedure txtCiudad_clienteChange(Sender: TObject);
    procedure txtEstado_ClienteChange(Sender: TObject);
    procedure txtTelefono_clienteChange(Sender: TObject);
    procedure txtTelefono_clienteKeyPress(Sender: TObject; var Key: Char);
    procedure txtTrabajo_clienteChange(Sender: TObject);
    procedure txtPuesto_clienteChange(Sender: TObject);
    procedure txtTel_trabajo_clienteChange(Sender: TObject);
    procedure txtTel_trabajo_clienteKeyPress(Sender: TObject;
      var Key: Char);
    procedure txtDomicilio_trabajo_clienteChange(Sender: TObject);
    procedure txtColonia_Trabajo_ClienteChange(Sender: TObject);
    procedure txtCiudad_Trabajo_ClienteChange(Sender: TObject);
    procedure txtEstado_Trabajo_ClienteChange(Sender: TObject);
    procedure txtSueldo_clienteChange(Sender: TObject);
    procedure edTelefono_rp1Change(Sender: TObject);
    procedure edTelefono_rp2Change(Sender: TObject);
    procedure edTelefono_rp2KeyPress(Sender: TObject; var Key: Char);
    procedure edTelefono_rp1KeyPress(Sender: TObject; var Key: Char);
    procedure edTelefono_rp3Change(Sender: TObject);
    procedure edTelefono_rp3KeyPress(Sender: TObject; var Key: Char);
    procedure edTelefono_rp4Change(Sender: TObject);
    procedure edTelefono_rp4KeyPress(Sender: TObject; var Key: Char);
    procedure cmbTipo_RC2Exit(Sender: TObject);
    procedure txtTelefonoF_AvalExit(Sender: TObject);
    procedure txtMeses_Trabajo_AvalExit(Sender: TObject);
    procedure txtTelefono_RP2_AvalExit(Sender: TObject);
    procedure txtTelefono_RF2_AvalExit(Sender: TObject);
    procedure lbTraseraDblClick(Sender: TObject);
    procedure lbFrontalDblClick(Sender: TObject);
    procedure lbIzqDblClick(Sender: TObject);
    procedure lbDerDblClick(Sender: TObject);
    procedure txtNombre_CalleExit(Sender: TObject);
    procedure ceCap_Pag_QuinChange(Sender: TObject);
    procedure ceCap_Pag_QuinExit(Sender: TObject);
    procedure cmdActualiza_ScoreClick(Sender: TObject);
    procedure cmdAplicarClick(Sender: TObject);
    procedure cmbStatus2Change(Sender: TObject);
    procedure cmdComp_DomiClick(Sender: TObject);
    procedure txtCP_clienteKeyPress(Sender: TObject; var Key: Char);
    procedure cmdGuardarClick(Sender: TObject);
    procedure cmdOcultaHistorialClick(Sender: TObject);
    procedure Label8Click(Sender: TObject);
    procedure txtCorreoE_ClienteExit(Sender: TObject);
    procedure txtComentariosExit(Sender: TObject);
    procedure edRelacion_rp4Exit(Sender: TObject);
    procedure chbAcuseClick(Sender: TObject);
    procedure chbEnviaExpClick(Sender: TObject);
    procedure cmdTelefonicaClick(Sender: TObject);
    procedure cmdDomiciliariaClick(Sender: TObject);
    procedure txtComentariosKeyPress(Sender: TObject; var Key: Char);
    procedure txtClave_CuentaChange(Sender: TObject);
    procedure txtClave_CuentaExit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure txtTelefono_clienteExit(Sender: TObject);
    procedure cmdLinea_CtoClick(Sender: TObject);
    procedure Label24Click(Sender: TObject);
    procedure cmdCondicionarClick(Sender: TObject);
    procedure txtOtrosIngresosExit(Sender: TObject);
    procedure txtDomic_rp4Exit(Sender: TObject);
    procedure Label23Click(Sender: TObject);
    procedure FlatButton1Click(Sender: TObject);
    procedure btnConsultaBuroClick(Sender: TObject);
    procedure ClientSocket1Disconnect(Sender: TObject;
      Socket: TCustomWinSocket);
    procedure ClientSocket1Read(Sender: TObject; Socket: TCustomWinSocket);
    procedure ClientSocket1Write(Sender: TObject;
      Socket: TCustomWinSocket);
    procedure ClientSocket1Error(Sender: TObject; Socket: TCustomWinSocket;
      ErrorEvent: TErrorEvent; var ErrorCode: Integer);
    procedure ButtonResultadoBuroClick(Sender: TObject);
    procedure ButtonRecalcularClick(Sender: TObject);
  private
    procedure imprime_solicitud_credito;
    procedure limpia_qrLabels;
    procedure marca_predio;
    procedure controles_pnCredinomina(B : Boolean);
    procedure ubica_predio(i : integer);
    procedure buscar_cuentas(q : string);
    procedure llena_lineas(cap_pag, minimo, maximo : Currency);
    function find_index(s:string; cb:TFlatComboBox):string;
    function busca_rfc : Boolean;
    function busca_referencias : Boolean;
    function genera_rfc(paterno, materno, nombre, fecha : string) : string;
    function valida_datos : Boolean;
    function obtiene_causa : string;
    procedure verificarConsultasExitosasPreviasBuroCredito();
  public
    // Las variables "motivoDeRecalculo" e "pagoMensualDeCliente" se utilizan
    // cuando da click en el botón "ButtonRecalcular" (Re-Calcular)
    // "pagoMensualDecliente" almacena el nuevo monto que debera considerarse en
    // la funcion "verificarConsultasExitosasPreviasBuroCredito", si el valor
    // de la variable es -1, se dejará al sistema calcular por si mismo este
    // valor, si la variable trae un valor mayor o igual a cero, entonces se
    // tomara el monto especificado tal cual para las operaciones que se
    // realicen. La variable "motivoDeRecalculo" contiene la descripcion que
    // escribe el usuario para justificar el recalculo, así como el porque se ha
    // decidido modificar el valor del pago mensual del cliente
    motivoDeRecalculo : String;
    pagoMensualDeCliente : Double;

    bNuevo, bBusca, bTarjeta : boolean;
    sClave_Usuario, sQLocales, sClave_muebleria,
    sCtaOrigen, sClave_cuenta, sClave_conyuge, sClave_fiador,
    sFecha_Vig, sSueldoMTD,sCuenta_Origen,sUserBC,sPasswordBC,parametro_final : string;
    iNivel, nCalle, iStatus, iDet,plazo_tope : integer;
    iVTel, iVDomi : Integer;
    ftMaximo, ftGarantia : Double;
    bandera_score:Integer;
    dateActual : TDate;
    procedure limpia_controles;
    procedure limpia_resumen;
    procedure carga_informacion(CuentaT : String);
    procedure carga_datos_fiador(CuentaF : String);
    procedure actualiza_datos_anteriores;
    procedure almacena_fecha_pago(sCuenta : string; sStatus : string);
    procedure calcula_puntaje(
            n : integer;
            quien : TObject;
            score : Integer = 0;
            capacidadPago : Double = 0;
            montoMaximo : Double = 0;
            resultado : String = '');
    procedure CapturaError(Sender: TObject; E: Exception);

    function puntaje_aval : Integer;
    function predio : string;
    function obtiene_ptelefonos : integer;
    function obtiene_ptelefonos_aval : integer;
    function obtiene_preferencias(sClave : string) : integer; 
    //Funciones de almacenamiento de los datos
    function actualiza_cliente : Boolean;
    function actualiza_conyuge : Boolean;
    function actualiza_aval : Boolean;
    function almacena_cliente : Boolean;
    function almacena_conyuge : Boolean;
    function almacena_aval : Boolean;
    function GetTempFile(const Extension: string): string;

    procedure muestra_historial(ncampo, cuenta : string);
    procedure ExecNewProcess(ProgramName : String; Wait: Boolean);

    procedure recalcularCapacidad(pago : Double; motivo : String);
  end;

var
  frmScoreCard: TfrmScoreCard;


implementation

uses
    recalcular_capacidad_de_pago,
    EVALUA_consulta_de_credito,
  main, modulo_datos, Listado, consulta_nombre, rep_solicitud_tarjeta,
  historico_modificaciones, rechazar_cuenta, comp_domi, presupuesto_sobregiro,
  verificacion_telefonica2_resul, resultado_verificacion_domiciliaria,
  VerDocumentos,rfc_score,Archivo_INTL;

{$R *.dfm}

procedure TfrmScoreCard.cmdRegresarClick(Sender: TObject);
begin
   close;
end;

procedure TfrmScoreCard.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   //bandera_score :=1;
   Application.OnException := nil;
   frmScoreCard := nil;
   Action := caFree;
end;

procedure TfrmScoreCard.limpia_controles;
var i : integer;
begin
   if not Assigned(frmScoreCard) then Exit;
   i := 0;
   with frmScoreCard do
   begin
    while i < ComponentCount do
    begin
     if (Components[i].ClassType = TFlatEdit) and (Components[i].Name <> 'txtClave_Cuenta') then
          TFlatEdit(Components[i]).Clear;
     if Components[i].ClassType = TFlatComboBox then
          TFlatComboBox(Components[i]).ItemIndex := 0;
     if Components[i].ClassType = TJBPageControl then
          TJBPageControl(Components[i]).ActivePageIndex := 0;
     if Components[i].ClassType = TCurrencyEdit then
          TCurrencyEdit(Components[i]).Value := 0;
     if Components[i].ClassType = TDateEdit then
          TDateEdit(Components[i]).Text := '';
     if Components[i].ClassType = TFlatCheckBox then
          TFlatCheckBox(Components[i]).Checked := False;
     if Components[i].ClassType = TmxFlatCheckBox then
          TmxFlatCheckBox(Components[i]).Checked := true;
     if Components[i].ClassType = TFlatMemo then
          TFlatMemo(Components[i]).Clear;
     inc(i);
    end;
   end;

   cmdAplicar.Enabled := false;
   cmbStatus2.Visible := iNivel > 1;
   lresultado.Visible := iNivel > 1;
   cmdRechazar.Enabled := True;
   cmdCondicionar.Enabled := True;
   txtPagador.ReadOnly := False;
   rbMasculino.Checked := true;
   rbFemenino.Checked := false;
   lbDer.Caption := 'Calle Derecha';
   lbizq.Caption := 'Calle Izquierda';
   lbFrontal.Caption := 'Calle Frontal';
   lbTrasera.Caption := 'Calle Arriba';
   txtNombre_cliente.ReadOnly := False;
   txtNombre_cliente.ColorFlat := clWindow;
   txtPaterno_cliente.ReadOnly := False;
   txtPaterno_cliente.ColorFlat := clWindow;
   txtMaterno_cliente.ReadOnly := False;
   txtMaterno_cliente.ColorFlat := clWindow;
   lbStatus.Visible := False;
   lbStatus.Hint := 'STATUS DE LA TARJETA';
   cColor_dom.ItemIndex:=0;
   txtNombreMama.text := '';
   txtNombreMama.Visible := True;
   lblNombreMama.Visible := True;
   cColor_dom.Visible := True;
   lColor_dom.Visible := True;

   //Habilita Controles del Trabajo del Cliente
   txtTrabajo_Cliente.ReadOnly           := false;
   txtPuesto_Cliente.ReadOnly            := false;
   txtTel_trabajo_cliente.ReadOnly       := false;
   txtDomicilio_Trabajo_cliente.ReadOnly := false;
   txtColonia_Trabajo_cliente.ReadOnly   := false;
   txtCiudad_Trabajo_Cliente.ReadOnly    := false;
   txtEstado_Trabajo_Cliente.ReadOnly    := false;
   txtSueldo_Cliente.ReadOnly            := false;
   txtMeses_Trabajo_Cliente.ReadOnly     := false;

   //Deshabilita el Datos del Expediente para Auxiliares y Asesores
   gbExpediente.Enabled := iNivel > 0;
   //Actualiza tipo de Producto
   cTipo.OnChange(nil);
   msqHistorial.Close;
   fpHistorial.Visible := False;
   txtComentarios.Height := 89;
end;

procedure TfrmScoreCard.FormShow(Sender: TObject);
begin

   jbpCliente.ActivePageIndex := 0;
   jbpExtras_Cliente.ActivePageIndex := 0;
   // Fecha Actual
   dmModulo_datos.msqTemporal.Sql.Text := 'SELECT curdate() fecha_actual';
   dmModulo_datos.msqTemporal.Open;
   dateActual := dmModulo_datos.msqTemporal.FieldByName('fecha_actual').AsDateTime;

   //Carga Variables de uso general
   iNivel           := frmMain.sNivel;
   sClave_Usuario   := frmMain.sClave_usuario;
   sClave_Muebleria := 'TC01';
   bNuevo := True;
   inicializa_campos_modi(mdCampos);
   limpia_controles;
   limpia_resumen;

   case iNivel of
      0 : begin
             cmdGuardar.Visible := False;
             cmdimprimir.Visible := False;
             cmdRegresar.Left   := cmdRegresar.Left-88;
             cmdCancelar.Left   := cmdCancelar.Left-88;
          end;
      1 : begin
             cmdActualiza_Score.Visible := False;
             cmdRechazar.Visible := False;
             cmdCondicionar.Visible := False;
             cmdAplicar.Visible := False;
          end;
      2..5 : begin
             cmdActualiza_Score.Visible := False;
             cmdRechazar.Visible := True;
             cmdCondicionar.Visible := True;
             cmdAplicar.Visible := True;
          end;
   end;

   //Llena Combo Status
   cmbStatus2.Clear;
   dmModulo_datos.msqTemporal.Sql.Text:='SELECT descripcion FROM tipo_status Order by tipo';
   dmModulo_datos.msqTemporal.Open;
   while not dmModulo_datos.msqTemporal.Eof do
   begin
    cmbStatus2.Items.Add(dmModulo_datos.msqTemporal.FieldByName('descripcion').AsString);
    dmModulo_datos.msqTemporal.Next;
   end;
   // Llena el Combo de Estado Civil para el Cliente y para el Aval
   dmModulo_datos.msqTemporal.Sql.Text:='SELECT estado FROM puntaje_edo_civil order by id';
   dmModulo_datos.msqTemporal.Open;
   cmbEstado_Civil_Cliente.Clear;
   cmbEstado_Civil_Aval.Clear;
   cmbEstado_Civil_Cliente.Items.Add('');
   cmbEstado_Civil_Aval.Items.Add('');
   while not dmModulo_datos.msqTemporal.Eof do begin
     cmbEstado_Civil_Cliente.Items.Add(dmModulo_datos.msqTemporal.FieldByName('estado').AsString);
     cmbEstado_Civil_Aval.Items.Add(dmModulo_datos.msqTemporal.FieldByName('estado').AsString);
     dmModulo_datos.msqTemporal.Next;
   end;

   //Llena el Combo de Habita Casa para el Cliente y para el Aval
   dmModulo_datos.msqTemporal.Sql.Text:='SELECT DISTINCT tipo FROM puntaje_propiedad';
   dmModulo_datos.msqTemporal.Open;
   cmbCasa_Cliente.Clear;
   cmbCasa_Aval.Clear;
   cmbCasa_Cliente.Items.Add('');
   cmbCasa_Aval.Items.Add('');
   while not dmModulo_datos.msqTemporal.Eof do begin
     cmbCasa_Cliente.Items.Add(dmModulo_datos.msqTemporal.FieldByName('tipo').AsString);
     cmbCasa_Aval.Items.Add(dmModulo_datos.msqTemporal.FieldByName('tipo').AsString);
     dmModulo_datos.msqTemporal.Next;
   end;

   //Llena la variable de Locales
   sQlocales := 'and left(cuenta_origen,3) in ("C01","C03","C05","C06","C07","C08","C09","C11", '+
                '"C12","C13","C14","C15","C16","C17","C18","C19","C20","C21", '+
                '"C22","C23","C24","C25","C26","C27","C28","C29","C30","C31","C32","C33")';

   //Llena el Combo de Convenios para Credinomina
   //Si llama al formulario asignandole una clave de cuenta
   if sClave_Cuenta <> '' then begin
     with dmModulo_datos do begin
       msqTemporal.sql.text:='select clave_cuenta,numero_tarjeta from cuentas '+
                             'where clave_cuenta="'+sClave_Cuenta+'" ';
       msqTemporal.Open;
       ceTarjeta.Value := msqTemporal.fieldbyname('numero_tarjeta').AsInteger;
     end;
     carga_informacion(sClave_Cuenta);
     calcula_puntaje(2,nil);
   end;
   // Ocultar Botones Para Usuarios de Auditoria
   if frmMain.sDepartamento = 'AUDITORIA' then  // Modif. 12 Nov. 2009
   begin
    cmdGuardar.Visible         := False;
    cmdActualiza_Score.Visible := False;
    cmdRechazar.Visible        := False;
    cmdCondicionar.Visible     := False;
    cmdimprimir.Visible        := False;
    cmdAplicar.Visible         := False;
    cmdCancelar.Visible        := False; 
   end;


    if(iNivel>=2)then begin
        defecha_captura.Enabled := True;
        defecha_elaboracion.Enabled := True;
   end else begin
        defecha_captura.Enabled := False;
        defecha_elaboracion.Enabled := False;
   end;

end;

procedure TfrmScoreCard.cmdCancelarClick(Sender: TObject);
begin
   if iNivel > 0 then begin
      cmdGuardar.Enabled := true;
      cmdGuardar.Caption := 'Guardar';
      bNuevo := True;
   end;
   limpia_controles;

   limpia_resumen;
   txtClave_Cuenta.Text := '';
   sClave_Cuenta := '';
   cTipo.Enabled:=True;
end;

procedure TfrmScoreCard.limpia_resumen;
begin
   fgResumen.Enabled       := False;
   lbCalificacion.Caption  := '';
   cmbStatus2.ItemIndex    := -1;
   ceCap_Pag_Men.Value     := 0;
   ceCap_Pag_Quin.Value    := 0;
   cap_pago_p.Caption      := '0%';
   ButtonResultadoBuro.Enabled := False;
   ButtonRecalcular.Enabled := False;
   mdLineas.EmptyTable;
end;

procedure TfrmScoreCard.cmdimprimirClick(Sender: TObject);
begin
   if txtClave_cuenta.Text = '' then exit;
   cmdimprimir.Enabled := False;
   imprime_solicitud_credito;
   cmdimprimir.Enabled := True;
end;

procedure TfrmScoreCard.imprime_solicitud_credito;
begin
   qrSolicitud_Tarjeta := TqrSolicitud_Tarjeta.Create(Self);
   //Limpia datos de la solicitud
   Limpia_qrLabels;
   qrSolicitud_Tarjeta.qrlSMuebleria.Caption := 'TC01';
   qrSolicitud_Tarjeta.qrlSPromotor.Caption  := txtPagador.Text;
   qrSolicitud_Tarjeta.qrlSNPrevio.Caption   := ceTarjeta.Text;

   //Selecciona el tipo de Tarjeta
   qrSolicitud_Tarjeta.qrlSProducto.Caption := cTipo.Text;

   //Llena datos Generales
   qrSolicitud_Tarjeta.qrlSNombre.Caption := txtNombre_Cliente.Text;
   qrSolicitud_Tarjeta.qrlSPaterno.Caption := txtPaterno_Cliente.Text;
   qrSolicitud_Tarjeta.qrlSMaterno.Caption := txtMaterno_Cliente.Text;
   qrSolicitud_Tarjeta.qrlSDia_Nac.Caption := formatdatetime('dd',deNacimiento_Cliente.Date);
   qrSolicitud_Tarjeta.qrlSMes_Nac.Caption := formatdatetime('mm',deNacimiento_Cliente.Date);
   qrSolicitud_Tarjeta.qrlSAn_Nac.Caption  := formatdatetime('yyyy',deNacimiento_Cliente.Date);
   qrSolicitud_Tarjeta.qrlSRFC.Caption     := txtRFC_Cliente.Text;
   qrSolicitud_Tarjeta.qrlSLada_Cel.Caption:= copy('000'+txtTel_Movil_Cliente.Text,length('000'+txtTel_Movil_Cliente.Text)-9,3);
   qrSolicitud_Tarjeta.qrlSTel_Cel.Caption := copy(txtTel_Movil_Cliente.Text,length(txtTel_Movil_Cliente.Text)-6,7);

   if iNivel = 5 then begin
      //Habilita Nombre Soltera de la Mama
      qrSolicitud_Tarjeta.qrINombre_Mama.Enabled := True;
      qrSolicitud_Tarjeta.qrlNombre_Mama.Enabled := True;
      qrSolicitud_Tarjeta.qrlSNombre_Mama.Enabled :=True;
      qrSolicitud_Tarjeta.qrlSNombre_Mama.Caption := txtNombreMama.text;
      qrSolicitud_Tarjeta.qrlSColor_Domicilio.Enabled := True;
   end;

   //Selecciona el Sexo del Cliente
   if rbMasculino.Checked then qrSolicitud_Tarjeta.qrcbMasculino.Brush.Color := clBlack
   else qrSolicitud_Tarjeta.qrcbFemenino.Brush.Color := clBlack;
   //Selecciona el Estado Civil
   case cmbEstado_Civil_Cliente.ItemIndex of
      1 : qrSolicitud_Tarjeta.qrcbSoltero.Brush.Color := clBlack;
      2 : qrSolicitud_Tarjeta.qrcbCasadobs.Brush.Color := clBlack;
      3 : qrSolicitud_Tarjeta.qrcbCasadobm.Brush.Color := clBlack;
      4 : qrSolicitud_Tarjeta.qrcbViudo.Brush.Color := clBlack;
      5 : qrSolicitud_Tarjeta.qrcbDivorciado.Brush.Color := clBlack;
      6 : qrSolicitud_Tarjeta.qrcbUnion.Brush.Color := clBlack;
   end;
   qrSolicitud_Tarjeta.qrlSDependientes.Caption := txtDependientes_Cliente.Text;
   qrSolicitud_Tarjeta.qrlSNom_Conyuge.Caption  := txtNombre_Conyuge_Cliente.Text;
   qrSolicitud_Tarjeta.qrlSPaterno_Cony.Caption := txtPaterno_Conyuge_Cliente.Text;
   qrSolicitud_Tarjeta.qrlSMaterno_Cony.Caption := txtMaterno_Conyuge_Cliente.Text;

   //Llena Domicilio
   qrSolicitud_Tarjeta.qrlSCalle.Caption := txtDomicilio_Cliente.Text;
   qrSolicitud_Tarjeta.qrlSNumero_Casa.Caption := txtNumCasa_Cliente.Text;
   qrSolicitud_Tarjeta.qrlSColonia.Caption := txtColonia_Cliente.Text;
   qrSolicitud_Tarjeta.qrlSCiudad.Caption  := txtCiudad_Cliente.Text;
   qrSolicitud_Tarjeta.qrlSEstado.Caption  := txtEstado_Cliente.Text;
   qrSolicitud_Tarjeta.qrlSCp.Caption      := txtCP_Cliente.Text;
   qrSolicitud_Tarjeta.qrlSReferencia_Dom.Caption := txtCalles_Cliente.Text;
   qrSolicitud_Tarjeta.qrlSColor_Domicilio.Caption := cColor_dom.text;
   if cmbCasa_Cliente.Text = 'Propia' then
      qrSolicitud_Tarjeta.qrcbPropia.Brush.Color := clBlack
   else if cmbCasa_Cliente.Text = 'Rentada' then
      qrSolicitud_Tarjeta.qrcbRentada.Brush.Color := clBlack
   else if cmbCasa_Cliente.Text = 'Prestada' then
      qrSolicitud_Tarjeta.qrcbPrestada.Brush.Color := clBlack
   else if cmbCasa_Cliente.Text = 'Familiar' then
      qrSolicitud_Tarjeta.qrcbFamiliar.Brush.Color := clBlack;
   qrSolicitud_Tarjeta.qrlSTPoblacion.Caption := txtMeses_Poblacion_Cliente.Text;
   qrSolicitud_Tarjeta.qrlSTDomicilio.Caption := txtMeses_Domicilio_Cliente.Text;
   qrSolicitud_Tarjeta.qrlSLada_Fijo.Caption  := copy('000'+txtTelefono_Cliente.Text,length('000'+txtTelefono_Cliente.Text)-9,3);
   qrSolicitud_Tarjeta.qrlSTel_Fijo.Caption   := copy('000'+txtTelefono_Cliente.Text,length('000'+txtTelefono_Cliente.Text)-6,7);
   //Ubica el Predio
   marca_predio;
   qrSolicitud_Tarjeta.qrlSCalle_Arriba.Caption := lbTrasera.Caption;
   qrSolicitud_Tarjeta.qrlSCalle_Abajo.Caption  := lbFrontal.Caption;
   qrSolicitud_Tarjeta.qrlSCalle_Izq.Caption    := lbIzq.Caption;
   qrSolicitud_Tarjeta.qrlSCalle_Der.Caption    := lbDer.Caption;

   //Llena Empleo
   qrSolicitud_Tarjeta.qrlSEmpresa.Caption := txtTrabajo_Cliente.Text;
   qrSolicitud_Tarjeta.qrlSPuesto.Caption  := txtPuesto_Cliente.Text;
   qrSolicitud_Tarjeta.qrlSLada_Trabajo.Caption := copy('000'+txtTel_Trabajo_Cliente.Text,length('000'+txtTel_Trabajo_Cliente.Text)-9,3);;
   qrSolicitud_Tarjeta.qrlSTel_Trabajo.Caption  := copy('000'+txtTel_Trabajo_Cliente.Text,length('000'+txtTel_Trabajo_Cliente.Text)-6,7);
   qrSolicitud_Tarjeta.qrlSDomi_Trabajo.Caption := txtDomicilio_Trabajo_Cliente.Text;
   qrSolicitud_Tarjeta.qrlSTColonia.Caption := txtColonia_Trabajo_Cliente.Text;
   qrSolicitud_Tarjeta.qrlSTCiudad.Caption  := txtCiudad_Trabajo_Cliente.Text;
   qrSolicitud_Tarjeta.qrlSTEstado.Caption  := txtEstado_Trabajo_cliente.Text;
   qrSolicitud_Tarjeta.qrlSIngreso.Caption  := txtSueldo_Cliente.Text;
   qrSolicitud_Tarjeta.qrlSTTrabajo.Caption := txtMeses_Trabajo_Cliente.Text;
   qrSolicitud_Tarjeta.qrlSEmail.Caption    := txtCorreoE_Cliente.Text;
   if cTipo.ItemIndex = 2 then begin//Para Credibips.
      qrSolicitud_Tarjeta.qrlSNum_Nomina.Caption := txtNum_Nomina.Text;
      qrSolicitud_Tarjeta.qrlSSucursal.Caption := txtExpediente.Text;
      qrSolicitud_Tarjeta.qrlSArea.Caption     := txtPlaza.Text;
      qrSolicitud_Tarjeta.qrlSNum_Nomina.Caption     := txtNum_Nomina.Text;
   end;

   //Llena Referencias Personales
   qrSolicitud_Tarjeta.qrlSReferencia1.Caption := edNombre_Rp1.Text;
   qrSolicitud_Tarjeta.qrlSRelacion1.Caption := cbRelacion_Rp1.Text;
   qrSolicitud_Tarjeta.qrlSLada_Referncia1.Caption := copy('000'+edTelefono_Rp1.Text,length('000'+edTelefono_Rp1.Text)-9,3);
   qrSolicitud_Tarjeta.qrlSTel_Referncia1.Caption  := copy('000'+edTelefono_Rp1.Text,length('000'+edTelefono_Rp1.Text)-6,7);
   qrSolicitud_Tarjeta.qrlSReferencia2.Caption := edNombre_Rp2.Text;
   qrSolicitud_Tarjeta.qrlSRelacion2.Caption := cbRelacion_Rp2.Text;
   qrSolicitud_Tarjeta.qrlSLada_Referncia2.Caption := copy('000'+edTelefono_Rp2.Text,length('000'+edTelefono_Rp2.Text)-9,3);
   qrSolicitud_Tarjeta.qrlSTel_Referncia2.Caption  := copy('000'+edTelefono_Rp2.Text,length('000'+edTelefono_Rp2.Text)-6,7);
   qrSolicitud_Tarjeta.qrlSReferencia3.Caption := edNombre_Rp3.Text;
   qrSolicitud_Tarjeta.qrlSRelacion3.Caption := edRelacion_Rp3.Text;
   qrSolicitud_Tarjeta.qrlSLada_Referncia3.Caption := copy('000'+edTelefono_Rp3.Text,length('000'+edTelefono_Rp3.Text)-9,3);
   qrSolicitud_Tarjeta.qrlSTel_Referncia3.Caption  := copy('000'+edTelefono_Rp3.Text,length('000'+edTelefono_Rp3.Text)-6,7);
   qrSolicitud_Tarjeta.qrlSReferencia4.Caption := edNombre_Rp4.Text;
   qrSolicitud_Tarjeta.qrlSRelacion4.Caption := edRelacion_Rp4.Text;
   qrSolicitud_Tarjeta.qrlSLada_Referncia4.Caption := copy('000'+edTelefono_Rp4.Text,length('000'+edTelefono_Rp4.Text)-9,3);
   qrSolicitud_Tarjeta.qrlSTel_Referncia4.Caption  := copy('000'+edTelefono_Rp4.Text,length('000'+edTelefono_Rp4.Text)-6,7);

   //Llena Referencias Comerciales
   qrSolicitud_Tarjeta.qrlSReferenciaC1.Caption := edVisa_Banco.Text;
   qrSolicitud_Tarjeta.qrlSReferenciaRc1.Caption := edVisa_Numero.Text;
   case cmbTipo_RC1.ItemIndex of
      1 : qrSolicitud_Tarjeta.qrcbCBancaria1.Brush.Color := clBlack;
      2 : qrSolicitud_Tarjeta.qrcbCComercial1.Brush.Color:= clBlack;
      3 : qrSolicitud_Tarjeta.qrcbPPersonal1.Brush.Color := clBlack;
      4 : qrSolicitud_Tarjeta.qrcbPHipoteca1.Brush.Color := clBlack;
      5 : qrSolicitud_Tarjeta.qrcbCAuto1.Brush.Color     := clBlack;
   end;
   qrSolicitud_Tarjeta.qrlSReferenciaC2.Caption := edMaster_Banco.Text;
   qrSolicitud_Tarjeta.qrlSReferenciaRc2.Caption := edMaster_Numero.Text;
   case cmbTipo_RC2.ItemIndex of
      1 : qrSolicitud_Tarjeta.qrcbCBancaria2.Brush.Color := clBlack;
      2 : qrSolicitud_Tarjeta.qrcbCComercial2.Brush.Color:= clBlack;
      3 : qrSolicitud_Tarjeta.qrcbPPersonal2.Brush.Color := clBlack;
      4 : qrSolicitud_Tarjeta.qrcbPHipoteca2.Brush.Color := clBlack;
      5 : qrSolicitud_Tarjeta.qrcbCAuto2.Brush.Color     := clBlack;
   end;

   //Datos de Autorizacion de Tramite de Credito
   qrSolicitud_Tarjeta.lbFecha_Autorizacion.Caption := uppercase(formatdatetime('"A " dd " DEL " mmmm " DEL " yyyy',date));
   qrSolicitud_Tarjeta.qrlSNombre_Aut.Caption := qrSolicitud_Tarjeta.qrlSNombre.Caption;
   qrSolicitud_Tarjeta.qrlSApellidos_Aut.Caption := qrSolicitud_Tarjeta.qrlSPaterno.Caption + ' ' +
                                                    qrSolicitud_Tarjeta.qrlSMaterno.Caption;
   qrSolicitud_Tarjeta.qrlSRFC_Aut.Caption := qrSolicitud_Tarjeta.qrlSRFC.Caption;
   qrSolicitud_Tarjeta.qrlSDomi_Aut.Caption := qrSolicitud_Tarjeta.qrlSCalle.Caption + ' '+
                                               qrSolicitud_Tarjeta.qrlSNumero_Casa.Caption;
   qrSolicitud_Tarjeta.qrlSColonia_Aut.Caption := qrSolicitud_Tarjeta.qrlSColonia.Caption;
   qrSolicitud_Tarjeta.qrlSCP_Aut.Caption := qrSolicitud_Tarjeta.qrlSCp.Caption;
   qrSolicitud_Tarjeta.qrlSCiudad_Aut.Caption := qrSolicitud_Tarjeta.qrlSCiudad.Caption;
   qrSolicitud_Tarjeta.qrlSEstado_Aut.Caption := qrSolicitud_Tarjeta.qrlSEstado.Caption;

   //Textos
   qrSolicitud_Tarjeta.qrTextFirma.Lines.Clear;
   qrSolicitud_Tarjeta.qrTextFirma.Lines.Text :=
   'Declaro bajo protesta de decir verdad que los datos '+
   'contenidos en esta solicitud son absolutamente ciertos. '+
   'Autorizo a la empresa CREDILAND, S.A. DE C.V. para que '+
   'realice cuantas investigaciones y verificaciones sean '+
   'precisas ahora y durante la duración del contrato de crédito, '+
   'teniendo perfecto conocimiento de la naturaleza y alcance de esta autorización.';
   qrSolicitud_Tarjeta.qrTextAutorizacion.Lines.Clear;
   qrSolicitud_Tarjeta.qrTextAutorizacion.Lines.Text := 'POR ESTE CONDUCTO AUTORIZO '+
   'EXPRESAMENTE A CREDILAND, S.A. DE C.V. PARA QUE POR MEDIO DE SUS '+
   'FUNCIONARIOS FACULTADOS LLEVE A CABO INVESTIGACIONES, SOBRE MI '+
   'COMPORTAMIENTO CREDITICIO EN LAS SOCIEDADES DE INFORMACION CREDITICIA '+
   'QUE ESTIME CONVENIENTE.ASI MISMO, DECLARO QUE CONOZCO LA NATURALEZA Y '+
   'ALCANCE DE LA INFORMACION DE SE SOLICITARA, DEL USO QUE CREDILAND, '+
   'S.A. DE C.V. HARA DE TAL INFORMACION Y DE QUE ESTA PODRA REALIZAR '+
   'CONSULTAS PERIODICAS DE MI HISTORIAL CREDITICIO, CONSINTIENDO QUE ESTA '+
   'AUTORIZACION SE ENCUENTRE VIGENTE POR UN PERIODO DE 2 AÑOS CONTADOS A '+
   'PARTIR DE LA FECHA DE SU EXPEDICION Y EN TODO CASO DURANTE EL TIEMPO QUE '+
   'MANTENGAMOS RELACION JURIDICA.';
   qrSolicitud_Tarjeta.qrTextCliente.Lines.Clear;
   qrSolicitud_Tarjeta.qrTextCliente.Lines.Text := 'ESTOY CONSCIENTE Y ACEPTO QUE '+
   'ESTE DOCUMENTO QUEDE BAJO PROPIEDAD DE CREDILAND, S.A. DE C.V. Y/O SOCIEDAD DE '+
   'INFORMACION CREDITICIA CONSULTADA PARA EFECTOS DE CONTROL Y CUMPLIMIENTO DEL '+
   'ARTICULO 28 DE LA LEY PARA REGULAR A LAS SOCIEDADES DE INFORMACION CREDITICIA.';
   qrSolicitud_Tarjeta.QRLNCuentaT.Caption := txtClave_Cuenta.Text;
   
   qrSolicitud_Tarjeta.Preview;
   qrSolicitud_Tarjeta.Free;
   qrSolicitud_Tarjeta := nil;
end;

procedure TfrmScoreCard.limpia_qrLabels;
var i : integer;
begin
   i := 0;
   if assigned(qrSolicitud_Tarjeta) then begin
      while i < qrSolicitud_Tarjeta.ComponentCount do begin
         if (copy(qrSolicitud_Tarjeta.Components[i].Name,1,4) = 'qrlS') and
            (qrSolicitud_Tarjeta.Components[i].ClassName = 'TQRLabel') then
            TQRLabel(qrSolicitud_Tarjeta.Components[i]).Caption := ''
         else if copy(qrSolicitud_Tarjeta.Components[i].Name,1,4) = 'qrcb' then
            TQRShape(qrSolicitud_Tarjeta.Components[i]).Brush.Color := clWhite;
         inc(i);
      end;
   end;
end;

procedure TfrmScoreCard.marca_predio;
begin
   if chpr7.Checked then qrSolicitud_Tarjeta.qrcbRP7.Brush.Color := clBlack
   else if chpr8.Checked then qrSolicitud_Tarjeta.qrcbRP8.Brush.Color := clBlack
   else if chpr9.Checked then qrSolicitud_Tarjeta.qrcbRP9.Brush.Color := clBlack
   else if chpr12.Checked then qrSolicitud_Tarjeta.qrcbRP12.Brush.Color := clBlack
   else if chpr13.Checked then qrSolicitud_Tarjeta.qrcbRP13.Brush.Color := clBlack
   else if chpr16.Checked then qrSolicitud_Tarjeta.qrcbRP16.Brush.Color := clBlack
   else if chpr17.Checked then qrSolicitud_Tarjeta.qrcbRP17.Brush.Color := clBlack
   else if chpr18.Checked then qrSolicitud_Tarjeta.qrcbRP18.Brush.Color := clBlack;
end;

function TfrmScoreCard.predio: string;
begin
   if chpr7.Checked then predio := '7'
   else if chpr8.Checked then predio := '8'
   else if chpr9.Checked then predio := '9'
   else if chpr12.Checked then predio := '12'
   else if chpr13.Checked then predio := '13'
   else if chpr16.Checked then predio := '16'
   else if chpr17.Checked then predio := '17'
   else if chpr18.Checked then predio := '18'
   else predio := '0';
end;

procedure TfrmScoreCard.cmdRechazarClick(Sender: TObject);
begin
   if (lbStatus.caption = 'PRE-AUTORIZADO') and (lbStatus.caption = 'INVESTIGACION') then begin
     if iNivel < 2 then exit;
     if trim(txtClave_Cuenta.Text) = '' then exit;
     if lbStatus.Caption = 'RECHAZADO' then exit;
     frmRechazar_Cuenta := TfrmRechazar_Cuenta.Create(Self);
     frmRechazar_Cuenta.iLlama := 2;
     frmRechazar_Cuenta.ShowModal;
   end
   else begin
     dmModulo_Datos.msqTemporal.Sql.Text:='Select puede_rechazar from usuarios where clave_usuario = "'+frmMain.sClave_usuario+'"';
     dmModulo_Datos.msqTemporal.Open;
     if dmModulo_Datos.msqTemporal.fieldbyname('puede_rechazar').AsInteger=1 then begin
        if trim(txtClave_Cuenta.Text) = '' then exit;
        if lbStatus.Caption = 'RECHAZADO' then exit;
        frmRechazar_Cuenta := TfrmRechazar_Cuenta.Create(Self);
        frmRechazar_Cuenta.iLlama := 2;
        frmRechazar_Cuenta.ShowModal;
     end
     else
        MessageDlg('No tiene autorizado pasar cuentas de estado '+lbStatus.Caption+' a RECHAZADO', mtError, [mbOK], 0);
     end;
end;

procedure TfrmScoreCard.ceTarjetaKeyPress(Sender: TObject; var Key: Char);
begin
   if Key = #13 then begin
      limpia_resumen;
      if ceTarjeta.Value = 0 then begin
         MessageDlg('Escriba el numero de previo a buscar', mtWarning, [mbOK], 0);
         ceTarjeta.SetFocus;
         Exit;
      end;
      Self.Tag := 0;
      dmModulo_Datos.msqTemporal.Sql.Text:='Select clave_cuenta,numero_tarjeta,'+
                     'domicilio,ciudad, Concat(nombre," ",paterno," ",materno) '+
                     'nombre_completo, cuenta_origen From cuentas Where numero_tarjeta= "'+
                     ceTarjeta.Text+'" ';
      dmModulo_Datos.msqTemporal.Open;
      if dmModulo_Datos.msqTemporal.RecordCount = 0 then begin
         MessageDlg('No existen datos coincidentes con los proporcionados...', mtError, [mbOK], 0);
         limpia_controles;
         Exit;
      end;
      if dmModulo_Datos.msqTemporal.RecordCount > 1 then begin
         frmListado := TfrmListado.Create(Self);
         frmlistado.illama := 8;
         frmListado.ShowModal;
         if Self.Tag = 0 then begin
            limpia_controles;
            Exit;
         end;
      end;
      sCtaOrigen := 'T'+copy(dmModulo_datos.msqTemporal.fieldbyname('cuenta_origen').AsString,0,3);
      carga_informacion(dmModulo_datos.msqTemporal.FieldByName('clave_cuenta').AsString);
      calcula_puntaje(2,nil);
   end;
end;

procedure TfrmScoreCard.edTarjetaKeyPress(Sender: TObject; var Key: Char);
begin
   if Key=#13 then begin
      limpia_resumen;
      if Trim(edTarjeta.Text) = '' then begin
         MessageDlg('! ! ! ATENCION ! ! !'+#13#10+
                    ' Escriba el Número'+#13#10+
                    '   de Autorización.', mtWarning, [mbOK], 0);
         edTarjeta.SetFocus;
         Exit;
      end;
      with dmModulo_datos do begin
         msqTemporal.Sql.Text:='SELECT clave_cuenta, cuenta_origen FROM corporativo.cuentas '+
           'WHERE tarjeta = "' + Trim(edTarjeta.Text) + '" '+
           'AND tarjeta <> "000000"';
         msqTemporal.Open;
         if (msqTemporal.IsEmpty) or (edTarjeta.Text='000000') then begin
            MessageDlg('La tarjeta tecleada no existe...', mtError, [mbOK], 0);
            limpia_controles;
            Exit;
         end;
         sCtaOrigen := 'T'+copy(dmModulo_datos.msqTemporal.fieldbyname('cuenta_origen').AsString,0,3);
         carga_informacion(msqTemporal.FieldByName('clave_cuenta').AsString);
         calcula_puntaje(2,nil);
      end;
   end;
end;


procedure TfrmScoreCard.txtClave_CuentaKeyPress(Sender: TObject; var Key: Char);
begin
    if Key = #13 then begin
        limpia_resumen();

        if Trim(txtClave_cuenta.Text) = '' then begin
            MessageDlg(
                '! ! ! A T E N C I O N ! ! !'+#13#10+
                ' Escriba la Clave de Cuenta', mtWarning, [mbOK], 0);
            txtClave_cuenta.SetFocus();
            Exit;
        end;

        with dmModulo_datos do begin
            msqTemporal.Sql.Text :=
                'SELECT '+
                        'clave_cuenta,'+
                        'cuenta_origen '+
                'FROM cuentas '+
                'WHERE clave_cuenta = "'+Trim(txtClave_cuenta.Text)+'"';
            msqTemporal.Open();
            sCuenta_Origen := msqTemporal.fieldbyname('cuenta_origen').AsString;

            if (msqTemporal.IsEmpty) or (txtClave_cuenta.Text = '000000') then begin
                MessageDlg('La Cuenta T especificada no existe...', mtError, [mbOK], 0);
                limpia_controles();
                Exit;
            end;

            sCtaOrigen := 'T'+Copy(dmModulo_datos.msqTemporal.fieldbyname('cuenta_origen').AsString,0,3);
            carga_informacion(msqTemporal.FieldByName('clave_cuenta').AsString);
            btnConsultaBuro.Enabled := iNivel >= 3;
            fgResumen.Enabled := False;
            verificarConsultasExitosasPreviasBuroCredito();
        end;
    end;
end;



procedure TfrmScoreCard.carga_informacion(CuentaT: String);
var sExpe, sPrevio : string;
begin
 inicializa_campos_modi(mdCampos);
 with dmModulo_datos do
 begin
  msqTemporal.Sql.Text := 'Select c.clave_cuenta,c.numero_tarjeta,c.cuenta_origen,'+
         'con.clave_conyuge,f.clave_fiador, c.determinante FROM cuentas c '+
         'LEFT JOIN conyuge con ON c.clave_cuenta = con.clave_cuenta '+
         'LEFT JOIN fiador f ON c.clave_cuenta = f.clave_cuenta '+
         'WHERE c.clave_cuenta = "'+ CuentaT +'"';
  msqTemporal.Open;
  if msqTemporal.IsEmpty then
  begin
   MessageDlg('No existen registros para los datos proporcionados...', mtError, [mbOK], 0);
   limpia_controles;
   Exit;
  end;
  sClave_cuenta  := CuentaT;
  sCuenta_Origen := msqTemporal.FieldByName('cuenta_origen').AsString;
  sClave_conyuge := msqTemporal.FieldByName('clave_conyuge').AsString;
  sClave_fiador  := msqTemporal.FieldByName('clave_fiador').AsString;
  sPrevio := msqTemporal.FieldByName('numero_tarjeta').AsString;
  bNuevo  := msqTemporal.FieldByName('numero_tarjeta').AsString = '';
  iDet := msqTemporal.FieldByName('determinante').AsInteger;
  limpia_controles;
  ceTarjeta.Text  := sPrevio;
  txtClave_Cuenta.Text := sClave_Cuenta;
  btnConsultaBuro.Visible := True;
  if bNuevo then
   cmdGuardar.Caption := 'Guardar'
  else
   cmdGuardar.Caption := 'Actualizar';

  msqTemporal.Sql.Text := 'SELECT ts.descripcion estatus,solo_lectura,nombre_soltera_mama,'+
      'color_casa,tarjeta,c.limite_credito,capacidad_pago,expediente,pagador,'+
      'numero_ficha,fecha_termino,fecha_entrega,fecha_captura,paterno,materno,'+
      'nombre,fecha_nacimiento,estado_civil,rfc,telefono_movil,sexo,domicilio,'+
      'numero_casa,c.colonia,categoria,municipio,domicilio_entre_calles,'+
      'comentarios_crediticios,c.ciudad,c.estado,c.telefono,codigo_postal,bc.casa,'+
      'meses_poblacion,meses_domicilio,dependientes,mail,tc.empresa,tc.puesto,sueldo_mensual,'+
      'direccion,tc.telefono telefono_1,tc.colonia colonia_1,tc.ciudad ciudad_1,'+
      'tc.estado estado_1,antiguedad,tarjeta_credito,bc.numero,plaza,bc.limite_credito '+
      'limite_credito_1,tarjeta_credito2,numero2,limite_credito2,expedientee, '+
      'ifnull(st.status,0) tipo_tel, ifnull(otros_ingresos,0) otros_ingresos, '+
      'fuente_ingresos, ifnull(total_ingresos,0) total_ingresos, b.comentario '+
      'FROM tipo_status ts, cuentas c '+
      'LEFT JOIN trabajo_cliente tc On c.clave_cuenta=tc.clave_cuenta '+
      'LEFT JOIN bienes_cliente bc On c.clave_cuenta=bc.clave_cuenta '+
      'LEFT JOIN datos_extra_credito dc ON c.clave_cuenta = dc.clave_cuenta '+
      'LEFT JOIN otros_ingresos oi ON c.clave_cuenta = oi.clave_cuenta '+
      'LEFT JOIN corporativo.status_telefono st ON c.clave_cuenta = st.clave_cuenta And '+
      'id_tipo = 4 And st.status = 6 '+
      'LEFT JOIN burocredito b ON b.clave_cuenta = c.clave_cuenta '+
      'WHERE ts.tipo = c.status AND c.clave_cuenta="'+CuentaT+'"';
  msqTemporal.Open;

  //--***Deshabilita los controles si ya es de solo lectura***--//
  txtNombre_Cliente.ReadOnly  := (msqTemporal.FieldByName('solo_lectura').AsInteger = 1) and (iNivel < 5);
  txtPaterno_Cliente.ReadOnly := (msqTemporal.FieldByName('solo_lectura').AsInteger = 1) and (iNivel < 5);
  txtMaterno_Cliente.ReadOnly := (msqTemporal.FieldByName('solo_lectura').AsInteger = 1) and (iNivel < 5);

  //Bloquea Datos de empleo para niveles menores a 4
  txtTrabajo_Cliente.ReadOnly := (msqTemporal.FieldByName('solo_lectura').AsInteger = 1) and (iNivel < 4);
  txtPuesto_Cliente.ReadOnly  := (msqTemporal.FieldByName('solo_lectura').AsInteger = 1) and (iNivel < 4);
  txtTel_trabajo_cliente.ReadOnly := (msqTemporal.FieldByName('solo_lectura').AsInteger = 1) and (iNivel < 4);
  txtDomicilio_Trabajo_cliente.ReadOnly := (msqTemporal.FieldByName('solo_lectura').AsInteger = 1) and (iNivel < 4);
  txtColonia_Trabajo_cliente.ReadOnly   := (msqTemporal.FieldByName('solo_lectura').AsInteger = 1) and (iNivel < 4);
  txtCiudad_Trabajo_Cliente.ReadOnly    := (msqTemporal.FieldByName('solo_lectura').AsInteger = 1) and (iNivel < 4);
  txtEstado_Trabajo_Cliente.ReadOnly    := (msqTemporal.FieldByName('solo_lectura').AsInteger = 1) and (iNivel < 4);
  txtSueldo_Cliente.ReadOnly  := (msqTemporal.FieldByName('solo_lectura').AsInteger = 1) and (iNivel < 4);
  txtMeses_Trabajo_Cliente.ReadOnly := (msqTemporal.FieldByName('solo_lectura').AsInteger = 1) and (iNivel < 4);


  //Oculta el Nombre de la mama para niveles inferiores a 4
  txtNombreMama.Text    := msqTemporal.FieldByName('nombre_soltera_mama').AsString;
  txtNombreMama.Visible := (iNivel >= 4) or (sclave_cuenta[1]<>'T');
  lblNombreMama.Visible := (iNivel >= 4) or (sclave_cuenta[1]<>'T');

  // Oculta el Color de la Casa para niveles inferiores a 4
  cColor_dom.itemindex := cColor_dom.Items.indexof(msqTemporal.FieldByName('color_casa').AsString);
  cColor_dom.Visible   := (iNivel >= 4) or (sclave_cuenta[1]<>'T');
  cColor_dom.Visible   := (iNivel >= 4) or (sclave_cuenta[1]<>'T');
  //Producto
  cTipo.Enabled := (msqTemporal.FieldByName('solo_lectura').AsInteger = 0) or (iNivel > 3);
  // Otros Ingresos
  txtOtrosIngresos.ReadOnly  := (msqTemporal.FieldByName('solo_lectura').AsInteger = 1) and (iNivel < 4);
  txtFuenteIngresos.ReadOnly := (msqTemporal.FieldByName('solo_lectura').AsInteger = 1) and (iNivel < 4);
  //--***Termina Deshabilitar los controles si ya es de solo lectura***--//

  edTarjeta.Text := msqTemporal.FieldByName('tarjeta').AsString;
  bTarjeta       := msqTemporal.FieldByName('tarjeta').AsString<>'';

  if(frmMain.sClave_usuario='215')then
        ceLim_Cred.ReadOnly :=(msqTemporal.FieldByName('solo_lectura').AsInteger =0)
  else
        ceLim_Cred.ReadOnly :=(msqTemporal.FieldByName('solo_lectura').AsInteger =1);
        
  ceLim_Cred.Value := msqTemporal.FieldByName('limite_credito').AsFloat;


  ceCap_Pago.Value := msqTemporal.FieldByName('capacidad_pago').AsFloat;
  asigna_valor(mdCampos, 23, FloatToStr(ceCap_pago.Value) , 'valor_anterior');
  asigna_valor(mdCampos, 23, FloatToStr(ceCap_pago.Value), 'valor_nuevo');

  // Identifica el tipo de Producto que es
  sExpe := msqTemporal.FieldByName('expediente').AsString;
  cTipo.ItemIndex := 0;
  if sExpe ='MTD' then cTipo.ItemIndex:= 1 //Tarjeta MTD
  else if sExpe='U001' then begin //Tarjeta Credibips
   cTipo.ItemIndex := 2;
   cTipo.Enabled   := False;
  end else if sexpe='CDTZ' then cTipo.ItemIndex := 3 //Tarjeta Creditazo
  else if sexpe = 'INME' then cTipo.ItemIndex := 4 //Tarjeta INMEDIATA
  else if sexpe = 'GARA' then cTipo.ItemIndex := 5 //Tarjeta GARANTIZADO
  else if sexpe = 'CMBC' then cTipo.ItemIndex := 6;//Tarjeta CAMBACEO
  asigna_valor(mdCampos, 31, cTipo.Text, 'valor_anterior');
  cTipoChange(nil);

  txtPagador.Text := msqTemporal.FieldByName('pagador').AsString;
  txtPagador.ReadOnly := iNivel < 3; //Solo JUF, Coordinadores y Gerente Corporativo 

      txtNum_Ficha.Text := msqTemporal.FieldByName('numero_ficha').AsString;
      if cTipo.ItemIndex = 2 then txtNum_Nomina.Text := txtNum_Ficha.Text;
      lbStatus.Caption := msqTemporal.FieldByName('estatus').AsString;
      lbStatus.Visible := True;
      asigna_valor(mdCampos, 24, lbStatus.Caption, 'valor_anterior');
      asigna_valor(mdCampos, 24, lbStatus.Caption, 'valor_nuevo');

      if lbStatus.Caption = 'RECHAZADO' then
      begin
       msqTemporal2.Sql.Text := 'SELECT descripcion '+
          'FROM corporativo.historial_cuentas_rechazadas cr '+
          'LEFT JOIN catalogo_causas_tarjeta cct ON cct.causa = cr.causa_rechazo '+
          'WHERE cr.clave_cuenta = "' + CuentaT + '" And Left(causa_rechazo,1) = "R" '+
          'ORDER BY id_rechazada desc Limit 1';
       msqTemporal2.Open;
       lbStatus.Hint := '';
       lbStatus.Hint := msqTemporal2.fieldbyname('descripcion').AsString;
       cmdRechazar.Enabled := false;
      end;
      if lbStatus.Caption = 'CANCELADO' then
      begin
         msqTemporal2.Sql.Text := 'SELECT descripcion '+
            'FROM corporativo.historial_cuentas_rechazadas cr '+
            'LEFT JOIN catalogo_causas_tarjeta cct ON cct.causa = cr.causa_rechazo '+
            'WHERE cr.clave_cuenta = "' + CuentaT + '" And Left(causa_rechazo,1) = "C"';
         msqTemporal2.Open;
         lbStatus.Hint := '';
         lbStatus.Hint := msqTemporal2.fieldbyname('descripcion').AsString;
         cmdCondicionar.Enabled := False;
        // cmdRechazar.Enabled:=false;
      end;

      deVigencia_credito.Clear;
      if (msqTemporal.FieldByName('fecha_termino').AsDateTime <> -693593) then begin
        deVigencia_credito.Date := msqTemporal.FieldByName('fecha_termino').AsDateTime;
        sFecha_Vig := msqTemporal.FieldByName('fecha_termino').AsString;
      end;

      //Consulta si ya esta vencida la tarjeta
      cmdVigencia.Enabled := False;
      if lbStatus.Caption = 'ACTIVADO' then begin
         msqTemporal2.Sql.Text := 'SELECT if((c.status = 2) and '+
            '(c.fecha_termino < curdate()), 1, 0) vencida '+
            'FROM cuentas c WHERE c.clave_cuenta = "'+ CuentaT +'" ';
         msqTemporal2.Open;
         if msqTemporal2.FieldByName('vencida').asinteger = 1 then
         begin //Ya esta vencida la tarjeta??
          msqTemporal2.Sql.Text := 'SELECT if(min(fecha_vencimiento) <= curdate(), 1, 0) atrasada '+
            'FROM cuentas c, ventas v, pagares p '+
            'WHERE v.folio_venta = p.folio_venta AND c.clave_cuenta = v.clave_cuenta AND '+
            'p.saldo_pagare > 0 AND v.clave_cuenta = "'+ CuentaT +'" '+
            'GROUP BY c.clave_cuenta';
          msqTemporal2.Open;
          if msqTemporal2.Eof or (msqTemporal2.FieldByName('atrasada').AsInteger = 0) then begin
             deVigencia_Credito.Date := IncYear(date,2);
             if iNivel > 2 then
               cmdVigencia.Enabled := true;
          end;
         end;
      end;

     { defecha_entrega.Clear;
      if (msqTemporal.FieldByName('fecha_entrega').AsDateTime<>-693593) then
        defecha_entrega.Date:=msqTemporal.FieldByName('fecha_entrega').AsDateTime;

      defecha_captura.Clear;
      if (msqTemporal.FieldByName('fecha_captura').AsDateTime<>-693593) then
        defecha_captura.Date:=msqTemporal.FieldByName('fecha_captura').AsDateTime
      else begin
        defecha_captura.Date:=msqTemporal.FieldByName('fecha_captura').AsDateTime;
        defecha_captura.Enabled := True;
      end;  }


      defecha_entrega.Clear;

      if (msqTemporal.FieldByName('fecha_entrega').AsDateTime<>-693593) then
                defecha_entrega.Date:=msqTemporal.FieldByName('fecha_entrega').AsDateTime;

      defecha_captura.Clear;

      if (msqTemporal.FieldByName('fecha_captura').AsDateTime<>-693593) then begin
                if (iNivel>=3)then begin
                        defecha_captura.Date:=msqTemporal.FieldByName('fecha_captura').AsDateTime;
                        defecha_captura.Enabled := True;
                end else begin
                        defecha_captura.Date:=msqTemporal.FieldByName('fecha_captura').AsDateTime;
                        defecha_captura.Enabled := False;
                end;

      end else begin
                if(iNivel>=3) then begin
                        defecha_captura.Date:=msqTemporal.FieldByName('fecha_captura').AsDateTime;
                        defecha_captura.Enabled := True;
                end else begin
                        defecha_captura.Date:=msqTemporal.FieldByName('fecha_captura').AsDateTime;
                        defecha_captura.Enabled := False;
                end;
      end;


      if (msqTemporal.FieldByName('solo_lectura').AsInteger = 1) and (iNivel < 4) then begin
         txtPaterno_cliente.ColorFlat := clMenu;
         txtMaterno_cliente.ColorFlat := clMenu;
         txtNombre_cliente.ColorFlat  := clMenu;
      end;

      //Carga Informacion del Titular
      txtPaterno_cliente.Text   := msqTemporal.FieldByName('paterno').AsString;
      asigna_valor(mdCampos, 2, txtPaterno_Cliente.Text, 'valor_anterior');
      asigna_valor(mdCampos, 2, txtPaterno_Cliente.Text, 'valor_nuevo');
      txtMaterno_cliente.Text   := msqTemporal.FieldByName('materno').AsString;
      asigna_valor(mdCampos, 3, txtMaterno_Cliente.Text, 'valor_anterior');
      asigna_valor(mdCampos, 3, txtMaterno_Cliente.Text, 'valor_nuevo');
      txtNombre_cliente.Text    := msqTemporal.FieldByName('nombre').AsString;
      asigna_valor(mdCampos, 1, txtNombre_Cliente.Text, 'valor_anterior');
      asigna_valor(mdCampos, 1, txtNombre_Cliente.Text, 'valor_nuevo');
      bBusca := false; //Evita volver a buscar el mismo nombre
      deNacimiento_Cliente.Date := msqTemporal.FieldByName('fecha_nacimiento').AsDateTime;
      cmbEstado_civil_cliente.ItemIndex := msqTemporal.FieldByName('estado_civil').AsInteger;
      txtRFC_cliente.Text       := msqTemporal.FieldByName('rfc').AsString;
      txtTel_Movil_Cliente.text := msqTemporal.FieldByName('telefono_movil').AsString;
      asigna_valor(mdCampos, 4, txtTel_Movil_Cliente.Text, 'valor_anterior');
      asigna_valor(mdCampos, 4, txtTel_Movil_Cliente.Text, 'valor_nuevo');
      if txtTel_Movil_Cliente.text = '' then txtTel_Movil_Cliente.ReadOnly := False;

      rbMasculino.Checked := msqTemporal.FieldByName('sexo').AsInteger = 1;
      rbFemenino.Checked := msqTemporal.FieldByName('sexo').AsInteger = 0;

      txtDomicilio_cliente.Text := msqTemporal.FieldByName('domicilio').AsString;
      asigna_valor(mdCampos, 5, txtDomicilio_Cliente.Text, 'valor_anterior');
      asigna_valor(mdCampos, 5, txtDomicilio_Cliente.Text, 'valor_nuevo');
      if txtDomicilio_cliente.text = '' then txtDomicilio_cliente.ReadOnly := False;

      txtNumcasa_cliente.Text := msqTemporal.FieldByName('numero_casa').AsString;
      asigna_valor(mdCampos, 6, txtNumCasa_Cliente.Text, 'valor_anterior');
      asigna_valor(mdCampos, 6, txtNumCasa_Cliente.Text, 'valor_nuevo');
      if txtNumcasa_cliente.text = '' then txtNumcasa_cliente.ReadOnly := False;

      txtColonia_cliente.Text:=msqTemporal.FieldByName('colonia').AsString;
      asigna_valor(mdCampos, 7, txtColonia_Cliente.Text, 'valor_anterior');
      asigna_valor(mdCampos, 7, txtColonia_Cliente.Text, 'valor_nuevo');
      txtCategoria_cliente.Text := msqTemporal.FieldByName('categoria').AsString;

      txtMunicipio_cliente.Text := msqTemporal.FieldByName('municipio').AsString;
    
      txtCalles_cliente.Text:=msqTemporal.FieldByName('domicilio_entre_calles').AsString;
      if txtCalles_cliente.Text = '' then txtCalles_cliente.ReadOnly := False;

      txtComentarios.Text := msqTemporal.FieldByName('comentarios_crediticios').AsString;
      // -- 10 de Junio de 2010
      if msqTemporal.FieldByName('comentario').AsString <> '' then
      begin
       txtComentarioBuro.Text := msqTemporal.FieldByName('comentario').AsString;
       txtComentarios.Height := 61;
      end else
        txtComentarios.Height := 89;

      txtCiudad_cliente.Text:=StringReplace(msqTemporal.FieldByName('ciudad').AsString,'"','',[rfReplaceAll]);
      asigna_valor(mdCampos, 8, txtCiudad_Cliente.Text, 'valor_anterior');
      asigna_valor(mdCampos, 8, txtCiudad_Cliente.Text, 'valor_nuevo');

      txtEstado_Cliente.text := msqTemporal.FieldByName('estado').AsString;
      asigna_valor(mdCampos, 9, txtEstado_Cliente.Text, 'valor_anterior');
      asigna_valor(mdCampos, 9, txtEstado_Cliente.Text, 'valor_nuevo');
  
      txtTelefono_cliente.Text:=msqTemporal.FieldByName('telefono').AsString;
      asigna_valor(mdCampos, 10, txtTelefono_Cliente.Text, 'valor_anterior');
      asigna_valor(mdCampos, 10, txtTelefono_Cliente.Text, 'valor_nuevo');
      if txtTelefono_cliente.text = '' then txtTelefono_cliente.ReadOnly := False;

      txtCP_Cliente.text := msqTemporal.FieldByName('codigo_postal').AsString;

      cmbCasa_cliente.ItemIndex := cmbCasa_cliente.Items.IndexOf(msqTemporal.FieldByName('casa').AsString);
      if msqTemporal.FieldByName('tipo_tel').AsInteger = 6 then
       cmbTipoTel.ItemIndex := 1 // Telefono de Recados
      else
       cmbTipoTel.ItemIndex := 0;
      txtMeses_Poblacion_Cliente.Value := msqTemporal.FieldByName('meses_poblacion').AsInteger;
      txtMeses_Domicilio_Cliente.Value := msqTemporal.FieldByName('meses_domicilio').AsInteger;

      txtDependientes_cliente.Text:=msqTemporal.FieldByName('dependientes').AsString;

      //Carga Informacion del Trabajo del Titualar
      txtCorreoE_Cliente.Text:=msqTemporal.FieldByName('mail').AsString;

      txtTrabajo_cliente.Text:=msqTemporal.FieldByName('empresa').AsString;
      asigna_valor(mdCampos, 11, txtTrabajo_Cliente.Text, 'valor_anterior');
      asigna_valor(mdCampos, 11, txtTrabajo_Cliente.Text, 'valor_nuevo');
      if txtTrabajo_cliente.text = '' then txtTrabajo_cliente.ReadOnly := False;

      txtPuesto_cliente.Text:=msqTemporal.FieldByName('puesto').AsString;
      asigna_valor(mdCampos, 12, txtPuesto_Cliente.Text, 'valor_anterior');
      asigna_valor(mdCampos, 12, txtPuesto_Cliente.Text, 'valor_nuevo');

      txtSueldo_cliente.Value:=msqTemporal.FieldByName('sueldo_mensual').AsFloat;
      asigna_valor(mdCampos, 18, txtSueldo_Cliente.Text, 'valor_anterior');
      asigna_valor(mdCampos, 18, txtSueldo_Cliente.Text, 'valor_nuevo');
      if txtSueldo_cliente.text = '' then txtSueldo_cliente.ReadOnly := False;

      txtDomicilio_trabajo_cliente.Text:=msqTemporal.FieldByName('direccion').AsString;
      asigna_valor(mdCampos, 14, txtDomicilio_trabajo_Cliente.Text, 'valor_anterior');
      asigna_valor(mdCampos, 14, txtDomicilio_trabajo_Cliente.Text, 'valor_nuevo');
      if txtDomicilio_trabajo_cliente.text = '' then txtDomicilio_trabajo_cliente.ReadOnly := False;

      txtTel_trabajo_cliente.Text:=msqTemporal.FieldByName('telefono_1').AsString;
      asigna_valor(mdCampos, 13, txtTel_Trabajo_Cliente.Text, 'valor_anterior');
      asigna_valor(mdCampos, 13, txtTel_Trabajo_Cliente.Text, 'valor_nuevo');
      if txtTel_trabajo_cliente.text = '' then txtTel_trabajo_cliente.ReadOnly := False;

      txtColonia_Trabajo_Cliente.text := msqTemporal.FieldByName('colonia_1').AsString;
      asigna_valor(mdCampos, 15, txtColonia_Trabajo_Cliente.Text, 'valor_anterior');
      asigna_valor(mdCampos, 15, txtColonia_Trabajo_Cliente.Text, 'valor_nuevo');
      if txtColonia_Trabajo_Cliente.text = '' then txtColonia_Trabajo_Cliente.ReadOnly := False;

      txtCiudad_Trabajo_Cliente.Text := msqTemporal.FieldByName('ciudad_1').AsString;
      asigna_valor(mdCampos, 16, txtCiudad_Trabajo_Cliente.Text, 'valor_anterior');
      asigna_valor(mdCampos, 16, txtCiudad_Trabajo_Cliente.Text, 'valor_nuevo');
      if txtCiudad_Trabajo_Cliente.text = '' then txtCiudad_Trabajo_Cliente.ReadOnly := False;

      txtEstado_Trabajo_Cliente.Text := msqTemporal.FieldByName('estado_1').AsString;
      asigna_valor(mdCampos, 17, txtEstado_trabajo_Cliente.Text, 'valor_anterior');
      asigna_valor(mdCampos, 17, txtEstado_trabajo_Cliente.Text, 'valor_nuevo');
      if txtEstado_Trabajo_Cliente.text = '' then txtEstado_Trabajo_Cliente.ReadOnly := False;

      try
         if msqTemporal.FieldByName('antiguedad').AsString <>'' then
         txtMeses_Trabajo_Cliente.Value := msqTemporal.FieldByName('antiguedad').AsInteger;
      except
         txtMeses_Trabajo_Cliente.Value := 0; 
      end;
      // Otros Ingresos
      txtOtrosIngresos.Text  := msqTemporal.FieldByName('otros_ingresos').AsString;
      txtFuenteIngresos.Text := msqTemporal.FieldByName('fuente_ingresos').AsString;
      txtTotalIngresos.Text  := msqTemporal.FieldByName('total_ingresos').AsString;
      //Referencias Comerciales
      edVisa_banco.Text:=msqTemporal.FieldByName('tarjeta_credito').AsString;
      edVisa_numero.Text:=msqTemporal.FieldByName('numero').AsString;
      try
         cmbTipo_RC1.ItemIndex := msqTemporal.FieldByName('limite_credito_1').AsInteger;
      except end;
      edMaster_banco.Text:=msqTemporal.FieldByName('tarjeta_credito2').AsString;
      edMaster_numero.Text:=msqTemporal.FieldByName('numero2').AsString;
      try
         cmbTipo_RC2.ItemIndex := msqTemporal.FieldByName('limite_credito2').AsInteger;
      except end;
      if cTipo.ItemIndex = 2 then begin
       txtExpediente.Text   := msqTemporal.fieldbyname('expedientee').AsString;
       txtPlaza.Text        := msqTemporal.fieldbyname('plaza').AsString;
      end;

      // Fecha de Elaboracion
      msqTemporal.Sql.Text := 'SELECT fecha_elaboracion '+
         'FROM corporativo.cuentas_fecha_elaboracion '+
         'WHERE clave_cuenta = "'+ CuentaT +'"';
      msqTemporal.Open;

    {  if msqTemporal.RecordCount > 0 then begin
        if (msqTemporal.FieldByName('fecha_elaboracion').AsString<>'01/01/0001') and
           (msqTemporal.FieldByName('fecha_elaboracion').AsString<>'') then
           defecha_elaboracion.Date := msqTemporal.FieldByName('fecha_elaboracion').AsDateTime
        else
           defecha_elaboracion.Date := defecha_captura.Date;
      end else begin
        defecha_elaboracion.Date := defecha_captura.Date;
        defecha_elaboracion.Enabled := True;
      end;  }
      //defecha_elaboracion.Enabled := False;


      if msqTemporal.RecordCount > 0 then begin
                if (msqTemporal.FieldByName('fecha_elaboracion').AsString<>'01/01/0001') and
                   (msqTemporal.FieldByName('fecha_elaboracion').AsString<>'') then begin
                                if(iNivel>=2)then begin
                                        defecha_elaboracion.Date := msqTemporal.FieldByName('fecha_elaboracion').AsDateTime;
                                        defecha_elaboracion.Enabled := True;
                                end else begin
                                        defecha_elaboracion.Date := msqTemporal.FieldByName('fecha_elaboracion').AsDateTime;
                                        defecha_elaboracion.Enabled := False;
                                end;

                end else begin
                        if(iNivel>=2)then begin
                                defecha_elaboracion.Date := defecha_captura.Date;
                                defecha_elaboracion.Enabled := True;
                        end else begin
                                defecha_elaboracion.Date := defecha_captura.Date;
                                defecha_elaboracion.Enabled := False;
                        end;

                end;
      end else
                if(iNivel>=2)then begin
                        defecha_elaboracion.Date := defecha_captura.Date;
                        defecha_elaboracion.Enabled := True;
                end else begin
                        defecha_elaboracion.Date := defecha_captura.Date;
                        defecha_elaboracion.Enabled := False;
                end;





      //Carga Información del Conyuge si es que tiene alguno Asociado
      if Trim(sClave_conyuge) <> '' then begin
         msqTemporal.Sql.Text:='SELECT paterno,materno,nombre FROM conyuge '+
            'Where clave_conyuge="'+sClave_conyuge+'"';
         msqTemporal.Open;
         if not msqTemporal.IsEmpty then begin
           txtPaterno_conyuge_Cliente.Text:=msqTemporal.FieldByName('paterno').AsString;
           if txtPaterno_conyuge_Cliente.text = '' then
              txtPaterno_conyuge_Cliente.ReadOnly := False;

           txtMaterno_conyuge_Cliente.Text:=msqTemporal.FieldByName('materno').AsString;
           if txtMaterno_conyuge_Cliente.text = '' then
              txtMaterno_conyuge_Cliente.ReadOnly := False;

           txtNombre_conyuge_Cliente.Text:=msqTemporal.FieldByName('nombre').AsString;
           if txtNombre_conyuge_Cliente.text = '' then
              txtNombre_conyuge_Cliente.ReadOnly := False;
         end;
      end;

      //Busca las Referencias del Cliente
      if sClave_Cuenta <> '' then begin
         msqTemporal.Sql.Text:='SELECT nombre, telefono, parentesco, domicilio '+
            'FROM referencias_personales Where clave_cuenta="'+CuentaT+'" '+
            'Order By numero_referencia';
         msqTemporal.Open;

         if msqTemporal.RecordCount>0 then begin
           edNombre_rp1.Text          := msqTemporal.FieldByName('nombre').AsString;
           edTelefono_rp1.Text        := msqTemporal.FieldByName('telefono').AsString;
           asigna_valor(mdCampos, 19, edTelefono_rp1.Text+'@'+edNombre_rp1.Text, 'valor_anterior');
           asigna_valor(mdCampos, 19, edTelefono_rp1.Text+'@'+edNombre_rp1.Text, 'valor_nuevo');
           if edNombre_rp1.text = '' then edNombre_rp1.ReadOnly := False;
           if edTelefono_rp1.text = '' then edTelefono_rp1.ReadOnly := False;
           cbRelacion_rp1.ItemIndex   := cbRelacion_rp1.Items.IndexOf(find_index(msqTemporal.FieldByName('parentesco').AsString,cbRelacion_rp1));
           txtDomic_rp1.Text := msqTemporal.FieldByName('domicilio').AsString;

           if msqTemporal.RecordCount>1 then begin
              msqTemporal.Next;
              edNombre_rp2.Text:=msqTemporal.FieldByName('nombre').AsString;
              cbRelacion_rp2.ItemIndex   := cbRelacion_rp2.Items.IndexOf(find_index(msqTemporal.FieldByName('parentesco').AsString,cbRelacion_rp2));
              edTelefono_rp2.Text:=msqTemporal.FieldByName('telefono').AsString;
              asigna_valor(mdCampos, 20, edTelefono_rp2.Text+'@'+edNombre_rp2.Text, 'valor_anterior');
              asigna_valor(mdCampos, 20, edTelefono_rp2.Text+'@'+edNombre_rp2.Text, 'valor_nuevo');
              if edNombre_rp2.text = '' then edNombre_rp2.ReadOnly := False;
              if edTelefono_rp2.text = '' then edTelefono_rp2.ReadOnly := False;
              txtDomic_rp2.Text := msqTemporal.FieldByName('domicilio').AsString;
           end;

           if msqTemporal.RecordCount>2 then begin
              msqTemporal.Next;
              edNombre_rp3.Text:=msqTemporal.FieldByName('nombre').AsString;
              edRelacion_rp3.ItemIndex := edRelacion_rp3.Items.IndexOf(find_index(msqTemporal.FieldByName('parentesco').AsString,edRelacion_rp3));
              edTelefono_rp3.Text:=msqTemporal.FieldByName('telefono').AsString;
              asigna_valor(mdCampos, 21, edTelefono_rp3.Text+'@'+edNombre_rp3.Text, 'valor_anterior');
              asigna_valor(mdCampos, 21, edTelefono_rp3.Text+'@'+edNombre_rp3.Text, 'valor_nuevo');
              if edNombre_rp3.text = '' then edNombre_rp3.ReadOnly := False;
              if edTelefono_rp3.text = '' then edTelefono_rp3.ReadOnly := False;
              txtDomic_rp3.Text := msqTemporal.FieldByName('domicilio').AsString;
           end;

           if msqTemporal.RecordCount>3 then begin
              msqTemporal.Next;
              edNombre_rp4.Text:=msqTemporal.FieldByName('nombre').AsString;
              edRelacion_rp4.ItemIndex:=edRelacion_rp4.Items.IndexOf(find_index(msqTemporal.FieldByName('parentesco').AsString,edRelacion_rp4));
              edTelefono_rp4.Text:=msqTemporal.FieldByName('telefono').AsString;
              asigna_valor(mdCampos, 22, edTelefono_rp4.Text+'@'+edNombre_rp4.Text, 'valor_anterior');
              asigna_valor(mdCampos, 22, edTelefono_rp4.Text+'@'+edNombre_rp4.Text, 'valor_nuevo');
              if edNombre_rp4.text = '' then edNombre_rp4.ReadOnly := False;
              if edTelefono_rp4.text = '' then edTelefono_rp4.ReadOnly := False;
              txtDomic_rp4.Text := msqTemporal.FieldByName('domicilio').AsString;
           end;
         end;
      end;//Fin referencias del Cliente

      if Trim(sClave_fiador) <> '' then carga_datos_fiador(sClave_fiador);

      //Datos del Archivo y Otros
      msqTemporal.Filtered := false;
      msqTemporal.Sql.Text:='SELECT solicitud,contrato,verificacion_domiciliaria,'+
             'acuse_recibo,folio_acuse,fecha_acuse,comprobante_domicilio,'+
             'comprobante_ingresos,autorizacion_buro,reporte_buro,envia_exp,'+
             'fecha_envia_exp,folio_identificacion,tipo_identificacion,'+
             'calle_frontal,calle_izq,calle_dch,calle_trasera,numero_cuartos '+
             'FROM datos_investigacion WHERE folio_cuenta="'+CuentaT+'"';
      msqTemporal.Open;
      cTipoIden.ItemIndex:=-1;
      if msqTemporal.RecordCount <> 0 then begin
         chbSolicitud.Checked        := msqTemporal.fieldbyname('solicitud').AsInteger=1;
         chbContrato.Checked         := msqTemporal.fieldbyname('contrato').AsInteger=1;
         chbVerificacion.Checked     := msqTemporal.fieldbyname('verificacion_domiciliaria').AsInteger=1;
         chbAcuse.Checked            := msqTemporal.fieldbyname('acuse_recibo').AsInteger=1;
         txtFolio_Recibo.Text        := msqTemporal.fieldbyname('folio_acuse').AsString;
         txtFecha.Date               := msqTemporal.fieldbyname('fecha_acuse').AsDateTime;
         chbComprobanteDom.Checked   := msqTemporal.fieldbyname('comprobante_domicilio').AsInteger=1;
         chbComprobanteIng.Checked   := msqTemporal.fieldbyname('comprobante_ingresos').AsInteger=1;
         chbAutorizacionBuro.Checked := msqTemporal.fieldbyname('autorizacion_buro').AsInteger=1;
         chbReporteBuro.Checked      := msqTemporal.fieldbyname('reporte_buro').AsInteger=1;
         chbEnviaExp.Checked         := msqTemporal.fieldbyname('envia_exp').AsInteger=1;

         chbSolicitud.Enabled        := (iNivel > 0) and (msqTemporal.fieldbyname('solicitud').AsInteger=0);
         chbContrato.Enabled         := (iNivel > 0) and (msqTemporal.fieldbyname('contrato').AsInteger=0);
         chbVerificacion.Enabled     := (iNivel > 0) and (msqTemporal.fieldbyname('verificacion_domiciliaria').AsInteger=0);
         chbComprobanteDom.Enabled   := (iNivel > 0) and (msqTemporal.fieldbyname('comprobante_domicilio').AsInteger=0);
         chbComprobanteIng.Enabled   := (iNivel > 0) and (msqTemporal.fieldbyname('comprobante_ingresos').AsInteger=0);
         chbEnviaExp.Enabled         := (iNivel > 0) and (msqTemporal.fieldbyname('envia_exp').AsInteger=0);
         txtFechaEnvio.Enabled       := (iNivel > 0) and (msqTemporal.fieldbyname('envia_exp').AsInteger=0);
         chbAcuse.Enabled            := (iNivel > 0) and (msqTemporal.fieldbyname('acuse_recibo').AsInteger=0);
         txtFolio_Recibo.Enabled     := (iNivel > 0) and (msqTemporal.fieldbyname('acuse_recibo').AsInteger=0);
         txtFecha.Enabled            := (iNivel > 0) and (msqTemporal.fieldbyname('acuse_recibo').AsInteger=0);
         chbAutorizacionBuro.Enabled := (iNivel > 0) and (msqTemporal.fieldbyname('autorizacion_buro').AsInteger=0);
         chbReporteBuro.Enabled      := (iNivel > 0) and (msqTemporal.fieldbyname('reporte_buro').AsInteger=0);

         txtFechaEnvio.Date          := msqTemporal.fieldbyname('fecha_envia_exp').AsDateTime;  
         txtFolio.Text               := msqTemporal.fieldbyname('folio_identificacion').AsString;

         cTipoIden.ItemIndex:=-1;
         if msqTemporal.fieldbyname('tipo_identificacion').asstring='CREDENCIAL ELECTOR' then
            cTipoIden.ItemIndex:=1
         else if msqTemporal.fieldbyname('tipo_identificacion').asstring='LICENCIA PARA CONDUCIR' then
            cTipoIden.ItemIndex:=2
         else if msqTemporal.fieldbyname('tipo_identificacion').asstring='CARTILLA MILITAR' then begin
            cTipoIden.ItemIndex:=3;
            cTipoIden.ItemIndex:=6;
         end else if msqTemporal.fieldbyname('tipo_identificacion').asstring='PASAPORTE' then
            cTipoIden.ItemIndex:=4
         else if msqTemporal.fieldbyname('tipo_identificacion').asstring='CÉDULA PROFESIONAL' then
            cTipoIden.ItemIndex:=5;

         gbIdentificacion.Enabled := cTipoIden.ItemIndex < 1;

         //Datos del Croquis
         if trim(msqTemporal.fieldbyname('calle_frontal').AsString) <> '' then
            lbFrontal.Caption := msqTemporal.fieldbyname('calle_frontal').AsString
         else
            lbFrontal.Caption := 'calle abajo';

         if trim(msqTemporal.fieldbyname('calle_izq').AsString) <> '' then
            lbIzq.Caption := msqTemporal.fieldbyname('calle_izq').AsString
         else
            lbIzq.Caption := 'calle izquierda';

         if trim(msqTemporal.fieldbyname('calle_dch').AsString) <> '' then
            lbDer.Caption := msqTemporal.fieldbyname('calle_dch').AsString
         else
            lbDer.Caption := 'calle derecha';

         if trim(msqTemporal.fieldbyname('calle_trasera').AsString) <> '' then
            lbTrasera.Caption := msqTemporal.fieldbyname('calle_trasera').AsString
         else
            lbTrasera.Caption := 'calle arriba';
         ubica_predio(msqTemporal.fieldbyname('numero_cuartos').AsInteger);
      end;
      jbpCliente.ActivePageIndex:=0;
      bBusca := False;
      //Valida si la ya se realizaron las verificaciones
      //correspondientes a la cuenta, si es así habilita el
      //boton de score, tambien se habilita si la cuenta ya esta en status de activado.
      msqTemporal.sql.Text := 'SELECT vf.finalizada, if(c.fecha_captura="2013-02-28" and '+
        '(c.cuenta_origen like "C41%" or c.cuenta_origen like "C42%"),1,vf.validada)validada '+
        'FROM corporativo.cuentas c left join corporativo.verificacion_telefonica vf using(clave_cuenta)'+
        'WHERE c.clave_cuenta = "'+ CuentaT +'" ';
      msqTemporal.Open;
      iVTel := 0;
      cmdTelefonica.Enabled := False;
      if not msqTemporal.Eof then begin
         iVTel := msqTemporal.FieldByName('validada').AsInteger;
         cmdTelefonica.Enabled := msqTemporal.FieldByName('finalizada').AsInteger = 1;
      end;
      iVDomi := 0;
      msqTemporal.sql.Text := 'SELECT 1 validada FROM verificacion_domiciliaria '+
         'WHERE clave_cuenta = "'+ CuentaT +'" '+
         'AND tipo = "VALI"';
      msqTemporal.Open;
      if not msqTemporal.Eof then iVDomi := msqTemporal.fieldbyname('validada').AsInteger;
      msqTemporal.sql.Text := 'SELECT clave_cuenta '+
         'FROM corporativo.cuentas '+
         'WHERE clave_cuenta = "'+ CuentaT +'" '+
         'AND fecha_captura="2013-02-28" and '+
         '(cuenta_origen like "C41%" or cuenta_origen like "C42%")';
      msqTemporal.Open;
      if not msqTemporal.Eof then iVDomi :=1;
      //Solo si ya se hicieron las validaciones o
      //la CuentaT esta activada se habilita el boton para correr segundo score.
      cmdActualiza_Score.enabled := ((iVTel = 1) and (iVDomi = 1)) or (lbStatus.Caption = 'ACTIVADO');
      cmdAplicar.Enabled := (((iVTel = 1) and (iVDomi = 1)) or (lbStatus.Caption = 'ACTIVADO') or (lbStatus.Caption = 'AUTORIZADO'));
      if lbStatus.Caption  = 'ACTIVADO' then cmdActualiza_Score.Visible := false;
      cmdActualiza_Score.Visible := (edTarjeta.Text = '')and (lbStatus.Caption <> 'RECHAZADO');
   end;
end;

procedure TfrmScoreCard.cTipoChange(Sender: TObject);
begin
   controles_pnCredinomina(True);
   pnCredinomina.Visible := False;
   case cTipo.ItemIndex of
      1 : begin //MTD
             txtTrabajo_Cliente.Text    := 'AMA DE CASA';
             txtSueldo_Cliente.Enabled  :=False;
             txtSueldo_Cliente.Text     := sSueldoMTD;
             txtTrabajo_Cliente.Enabled :=False;
             txtMeses_Trabajo_Cliente.Value:=6;
             cmdMCredinomina.Visible    := False;
          end;
      2 : begin //CREDIBIPS
             bBusca := True;
             txtMaterno_Cliente.OnExit(nil);
             lbNum_Nomina.Visible  := True;
             txtNum_Nomina.Visible := True;
             txtTrabajo_Cliente.Enabled := True;
             txtSueldo_Cliente.Enabled  := True;
             txtSueldo_Cliente.Value := 0;
             label1.Visible := False;
             txtConvenio.Visible := False;
             cmdMCredinomina.Visible := True;
             controles_pnCredinomina(False);
             Label143.Caption := 'Sucursal:';
             Label144.Caption := 'Area:';
             Label143.Visible := true;
             label144.Visible := true;
             txtExpediente.Visible := true;
             txtPlaza.Visible := true;
          end;
      3 : begin //Creditazo
             txtTrabajo_Cliente.Clear;
             lbNum_Nomina.Visible := False;
             txtNum_Nomina.Visible := False;
             txtSueldo_Cliente.Enabled := True;
             txtTrabajo_Cliente.Enabled := True;
             label1.Visible := False;
             txtConvenio.Visible := False;
             cmdMCredinomina.Visible := False;
          end;
      6 : begin //Cambaceo
             txtTrabajo_Cliente.Clear;
             lbNum_Nomina.Visible := False;
             txtNum_Nomina.Visible := False;
             txtSueldo_Cliente.Enabled := True;
             txtTrabajo_Cliente.Enabled := True;
             label1.Visible := False;
             txtConvenio.Visible := False;
             cmdMCredinomina.Visible := False;
      end
      else begin
         lbNum_Nomina.Visible := False;
         txtNum_Nomina.Visible := False;
         txtTrabajo_Cliente.Enabled := true;
         txtSueldo_Cliente.Enabled := true;
         txtSueldo_Cliente.Value := 0;
         label1.Visible := False;
         txtConvenio.Visible := False;
         cmdMCredinomina.Visible := False;
      end;
   end;
   asigna_valor(mdCampos,31,cTipo.Text, 'valor_nuevo');
end;

procedure TfrmScoreCard.controles_pnCredinomina(B: Boolean);
var i : integer;
begin
 i := 0;
 with pnCredinomina do begin
  while i < ControlCount do begin
   if TControl(Controls[i]).Name <> 'cmdListo' then
     TControl(Controls[i]).Visible := B;
   inc(i);
  end;
 end;
end;

procedure TfrmScoreCard.cmdListoClick(Sender: TObject);
begin
   pnCredinomina.Visible := False;
end;

procedure TfrmScoreCard.cmdMCredinominaClick(Sender: TObject);
begin
 pnCredinomina.Visible := True;
 pnCredinomina.Left := 7;
 pnCredinomina.Top := 36;
 txtExpediente.SetFocus;
end;

procedure TfrmScoreCard.txtPagadorChange(Sender: TObject);
begin
   lresp.Caption:='';
end;

procedure TfrmScoreCard.txtPagadorExit(Sender: TObject);
var spag : string;
begin
   spag := TRIM(txtPagador.text);
   lresp.Caption := '';
   if spag = '' then exit;
   dmModulo_datos.msqUsuarios.Sql.Text:='SELECT nombre nom '+
         'FROM corporativo.promotores '+
         'Where clave_promotor ="'+spag+'" ';
   dmModulo_datos.msqUsuarios.Open;
   if dmModulo_datos.msqUsuarios.RecordCount = 0 then begin
      MessageDlg('No se encontró la clave del promotor', mtWarning, [mbOK], 0);
      txtPagador.Clear;
      exit;
   end;
   lresp.Caption := dmModulo_datos.msqUsuarios.FieldByname('nom').AsString;
end;

procedure TfrmScoreCard.cmdVigenciaClick(Sender: TObject);
begin
   if trim(txtClave_Cuenta.Text) = '' then exit;
   if deVigencia_Credito.Date <= date then begin 
      MessageDlg('Introduzaca una '+#13#10+
                 ' Vigencia Valida', mtWarning, [mbOK], 0);
      exit;
   end;
   dmModulo_Datos.msqTemporal.Sql.Text := 'UPDATE corporativo.cuentas SET '+
      'fecha_termino = "'+ formatdatetime('yyyy-mm-dd',deVigencia_Credito.Date) +'" '+
      'WHERE clave_cuenta = "'+txtClave_cuenta.Text+'"';
   dmModulo_Datos.msqTemporal.ExecSql;
   // Almacenar Historial de Vigencia
   dmModulo_Datos.msqTemporal.Sql.Text := 'INSERT INTO corporativo.historial_cuentas_modificadas SET '+
        'id_tipo = 27, '+
        'clave_cuenta = "'+ txtClave_Cuenta.Text +'", '+
        'valor_anterior = "'+ sFecha_Vig +'", '+
        'valor_nuevo = "'+ deVigencia_Credito.Text +'", '+
        'fecha = curdate(), '+
        'hora = curtime(), '+
        'clave_usuario = "'+ frmMain.sClave_usuario +'"';
   dmModulo_Datos.msqTemporal.ExecSql;
   sFecha_Vig := deVigencia_Credito.Text;
end;

procedure TfrmScoreCard.jbpClienteChanging(Sender: TObject;
  var AllowChange: Boolean);
begin
  if Trim(txtNombre_cliente.Text)='' then begin
    MessageBox(Handle,'Proporcione el Nombre del cliente...',
                      'Solicitud de Crédito',MB_ICONERROR);
    jbpCliente.ActivePageIndex := 0;
    txtNombre_cliente.SetFocus;
    AllowChange:=False;
  end;
end;

function TfrmScoreCard.find_index(s: string; cb: TFlatComboBox): string;
var
  i:integer;
begin
 // Busca un código en el combo dado en base a parte de él
 for i:=0 to cb.Items.Count-1 do
  if s = Copy(cb.Items[i],1,Length(s)) then begin
     Result:=cb.Items[i];
     Break;
  end;
end;

//  DATOS DEL FIADOR //
procedure TfrmScoreCard.carga_datos_fiador(CuentaF: String);
begin
 with dmModulo_datos do
 begin
  msqTemporal.Filtered := false;
  msqTemporal.Sql.Text:='Select paterno,materno,nombre,fecha_nac,edo_civil,'+
        'telefono_movil,bc.dependientes,tipo_propiedad,domicilio,numero_casa,'+
        'f.colonia,f.ciudad,f.estado,f.telefono,codigo_postal,meses_poblacion,'+
        'meses_domicilio,ubicacion_predio,datos_escritura,empresa,puesto,'+
        'sueldo_mensual,direccion,tc.telefono telefono_1,antiguedad,tc.colonia '+
        'colonia_1,tc.ciudad ciudad_1,tc.estado estado_1,sexo,firma_pagare,importe_pagare '+
        'FROM fiador f '+
        'LEFT JOIN trabajo_cliente tc ON f.clave_fiador = tc.clave_cuenta '+
        'LEFT JOIN bienes_cliente bc ON f.clave_fiador = bc.clave_cuenta '+
        'WHERE f.clave_fiador="'+ CuentaF +'" ';
  msqTemporal.Open;
  if not msqTemporal.Eof then
  begin
   txtPaterno_aval.Text   := msqTemporal.FieldByName('paterno').AsString;
   txtMaterno_aval.Text   := msqTemporal.FieldByName('materno').AsString;
   txtNombre_aval.Text    := msqTemporal.FieldByName('nombre').AsString;
   deNacimiento_Aval.Text := msqTemporal.FieldByName('fecha_nac').AsString;
   cmbEstado_Civil_Aval.ItemIndex := msqTemporal.FieldByName('edo_civil').AsInteger;
   txtTelefonoM_Aval.Text := msqTemporal.FieldByName('telefono_movil').AsString;
   txtDependientes_aval.AsInteger := msqTemporal.FieldByName('dependientes').AsInteger;
   cmbCasa_Aval.ItemIndex := cmbCasa_Aval.Items.IndexOf(msqTemporal.FieldByName('tipo_propiedad').AsString);
   txtDomicilio_aval.Text:=msqTemporal.FieldByName('domicilio').AsString;
   txtNumCasa_aval.Text:=msqTemporal.FieldByName('numero_casa').AsString;
   txtColonia_aval.Text:=msqTemporal.FieldByName('colonia').AsString;
   txtCiudad_aval.Text:=StringReplace(msqTemporal.FieldByName('ciudad').AsString,'"','',[rfReplaceAll]);
   txtEstado_aval.Text:=StringReplace(msqTemporal.FieldByName('estado').AsString,'"','',[rfReplaceAll]);
   txtTelefonoF_aval.Text:=msqTemporal.FieldByName('telefono').AsString;
   txtCP_aval.Text:=msqTemporal.FieldByName('codigo_postal').AsString;
   txtMesesP_Aval.Text := msqTemporal.FieldByName('meses_poblacion').AsString;
   txtMesesD_Aval.Text := msqTemporal.FieldByName('meses_domicilio').AsString;
   txtUbicacion_predio_aval.Text:=msqTemporal.FieldByName('ubicacion_predio').AsString;
   txtDatos_escritura_aval.Text:=msqTemporal.FieldByName('datos_escritura').AsString;
   txtTrabajo_Aval.Text := msqTemporal.FieldByName('empresa').AsString;
   txtPuesto_Aval.Text := msqTemporal.FieldByName('puesto').AsString;
   txtSueldo_Aval.Text := msqTemporal.FieldByName('sueldo_mensual').AsString;
   txtDomicilio_Trabajo_Aval.Text := msqTemporal.FieldByName('direccion').AsString;
   txtTel_Trabajo_Aval.Text := msqTemporal.FieldByName('telefono_1').AsString;
   txtMeses_Trabajo_Aval.Text := msqTemporal.FieldByName('antiguedad').AsString;
   txtColonia_Trabajo_Aval.Text := msqTemporal.FieldByName('colonia_1').AsString;
   txtCiudad_Trabajo_Aval.Text := msqTemporal.FieldByName('ciudad_1').AsString;
   txtEstado_Trabajo_Aval.Text := msqTemporal.FieldByName('estado_1').AsString;
   rbMasculino_Aval.Checked := msqTemporal.FieldByName('sexo').AsInteger = 1;
   rbFemenino_Aval.Checked := msqTemporal.FieldByName('sexo').AsInteger = 0;
   chbPagare.Checked := msqTemporal.fieldbyname('firma_pagare').AsInteger = 1;
   chbPagare.Enabled := (iNivel > 0) and (msqTemporal.fieldbyname('firma_pagare').AsInteger=0);
   txtVPagare.Enabled := (iNivel > 0) and (msqTemporal.fieldbyname('firma_pagare').AsInteger=0);
   txtVPagare.Value := msqTemporal.fieldbyname('importe_pagare').AsCurrency;
  end;
  // Datos del Conyuge del Aval
  msqTemporal.Sql.Text := 'SELECT nombre,paterno,materno FROM conyuge '+
         'WHERE clave_cuenta = "'+CuentaF+'"';
   msqTemporal.Open;
  if msqTemporal.RecordCount > 0 then
  begin
   txtNombre_Conyuge_Aval.Text := msqTemporal.fieldbyname('nombre').AsString;
   txtPaterno_Conyuge_Aval.Text := msqTemporal.fieldbyname('paterno').AsString;
   txtMaterno_Conyuge_Aval.Text := msqTemporal.fieldbyname('materno').AsString;
  end;

  // Datos de las Referencias del Aval
  msqTemporal.Sql.Text:='Select nombre,telefono,parentesco From referencias_personales '+
      'Where clave_cuenta="'+CuentaF+'" Order By parentesco';
  msqTemporal.Open;
  msqTemporal.Filter:='parentesco="FA" or parentesco="HI" or '+
                      'parentesco="HE" or Parentesco= "PA"';
  msqTemporal.Filtered:=True;
  if not msqTemporal.Eof then
  begin
   txtNombre_rf1_aval.Text    := msqTemporal.FieldByName('nombre').AsString;
   txtTelefono_rf1_aval.Text  := msqTemporal.FieldByName('telefono').AsString;
   cmbRelacion_rf1_Aval.ItemIndex := cmbRelacion_rf1_Aval.Items.IndexOf(
                                     find_index(msqTemporal.FieldByName('parentesco').AsString,
                                     cmbRelacion_rf1_aval));;
   if msqTemporal.RecordCount > 1 then
   begin
    msqTemporal.Next;
    txtNombre_rf2_aval.Text := msqTemporal.FieldByName('nombre').AsString;
    txtTelefono_rf2_aval.Text := msqTemporal.FieldByName('telefono').AsString;
    cmbRelacion_rf2_Aval.ItemIndex := cmbRelacion_rf2_Aval.Items.IndexOf(
                                      find_index(msqTemporal.FieldByName('parentesco').AsString,
                                      cmbRelacion_rf2_aval));
   end;
  end;
  msqTemporal.Filtered:=False;
  msqTemporal.Filter:='parentesco="VE" Or parentesco="AM"';
  msqTemporal.Filtered:=True;
  if msqTemporal.RecordCount>0 then
  begin
   txtNombre_rp1_aval.Text:=msqTemporal.FieldByName('nombre').AsString;
   cmbRelacion_rp1_aval.ItemIndex:=cmbRelacion_rp1_aval.Items.IndexOf(find_index(msqTemporal.FieldByName('parentesco').AsString,cmbRelacion_rp1_aval));
   txtTelefono_rp1_aval.Text:=msqTemporal.FieldByName('telefono').AsString;
   if msqTemporal.RecordCount>1 then
   begin
    msqTemporal.Next;
    txtNombre_rp2_aval.Text:=msqTemporal.FieldByName('nombre').AsString;
    cmbRelacion_rp2_aval.ItemIndex:=cmbRelacion_rp2_aval.Items.IndexOf(find_index(msqTemporal.FieldByName('parentesco').AsString,cmbRelacion_rp2_aval));
    txtTelefono_rp2_aval.Text  := msqTemporal.FieldByName('telefono').AsString;
   end;
  end;
 end;
end;

procedure TfrmScoreCard.ubica_predio(i: integer);
begin
   case i of
      7 : chpr7.Checked := True;
      8 : chpr8.Checked := True;
      9 : chpr9.Checked := True;
      12 : chpr12.Checked := True;
      13 : chpr13.Checked := True;
      16 : chpr16.Checked := True;
      17 : chpr17.Checked := True;
      18 : chpr18.Checked := True;
   end;
end;

procedure TfrmScoreCard.chpr8Click(Sender: TObject);
begin
   chpr7.Color := clYellow;
   chpr8.Color := clYellow;
   chpr9.Color := clYellow;
   chpr12.Color := clYellow;
   chpr13.Color := clYellow;
   chpr16.Color := clYellow;
   chpr17.Color := clYellow;
   chpr18.Color := clYellow;
   TmxFlatRadioButton(Sender).Color := clRed;
end;

procedure TfrmScoreCard.ceCap_PagoChange(Sender: TObject);
begin
  asigna_valor(mdCampos, 23, FloatToStr(ceCap_pago.Value), 'valor_nuevo');
end;

procedure TfrmScoreCard.txtNombre_clienteChange(Sender: TObject);
begin
   bBusca := true;
   asigna_valor(mdCampos, 1,txtNombre_Cliente.Text, 'valor_nuevo');
end;

procedure TfrmScoreCard.txtPaterno_clienteChange(Sender: TObject);
begin
   bBusca := true;
   asigna_valor(mdCampos, 2,txtPaterno_Cliente.Text, 'valor_nuevo');
end;

procedure TfrmScoreCard.txtMaterno_clienteChange(Sender: TObject);
begin
   if trim(txtClave_Cuenta.Text) = '' then bBusca := true;
   asigna_valor(mdCampos, 3,txtMaterno_Cliente.Text, 'valor_nuevo');
end;

procedure TfrmScoreCard.txtMaterno_clienteKeyPress(Sender: TObject;
  var Key: Char);
begin
  if (Key = #13) then deNacimiento_Cliente.SetFocus;
end;

procedure TfrmScoreCard.txtMaterno_clienteExit(Sender: TObject);
begin
   if bBusca and (trim(txtClave_Cuenta.Text) = '') then buscar_cuentas('nombre');
end;

procedure TfrmScoreCard.buscar_cuentas(q: string);
var sNom, sPat, sMat : string;
begin
 Self.Tag:=0;
 sNom := Trim(txtNombre_cliente.Text);
 sPat := Trim(txtPaterno_cliente.Text);
 sMat := Trim(txtMaterno_cliente.Text);
 if q = 'nombre' then
 begin //Busca por Nombre
  if (Trim(txtPaterno_cliente.Text) <> '') or (Trim(txtMaterno_cliente.Text) <> '') or
     (Trim(txtNombre_cliente.Text)  <> '') then
  begin
   if (cTipo.ItemIndex <> 2) and busca_referencias and (trim(txtClave_Cuenta.Text) <> '') then
   begin
    carga_informacion(txtClave_Cuenta.Text);
   end else
   if (cTipo.ItemIndex = 2) then
   begin //Es CrediBips???
    dmModulo_datos.msqTemporal.Sql.Text:= 'Select "" clave_cuenta,"0" numero_tarjeta,cuenta_origen,'+
                 'CONCAT(calle," ",colonia)domicilio,'+
                 'ciudad,Concat(nombre," ",paterno," ",materno) nombre_completo,'+
                 'nombre,paterno,materno,colonia,edocivil,sexo,cp,telefono,rfc,'+
                 'nombre_puesto puesto, numnomina,id_numnomina,'+
                 '(to_days(curdate())-to_days(fecha_ingreso))/30.416 anos '+
                 'From personal.empleado e '+
                 'Left Join personal.puesto p on e.id_puesto=p.id_puesto '+
                 'Where paterno Like "'+Trim(txtPaterno_cliente.Text)+'%" '+
                 'And materno Like "'+Trim(txtMaterno_cliente.Text)+'%" '+
                 'And nombre Like "'+Trim(txtNombre_cliente.Text)+'%" '+
                 //'And (to_days(curdate())-to_days(fecha_ingreso))/30.416 > 5 '+
                 'AND contrato_base = 1 '+
                 'AND id_status in (0,3) Order by nombre_completo';
    dmModulo_datos.msqTemporal.Open;
    if dmModulo_datos.msqTemporal.IsEmpty then
    begin
     limpia_controles;
     MessageDlg('No existen datos coincidentes con los proporcionados...'+#10+
                'o la fecha de ingreso es menor de 5 meses en la empresa' , mtError, [mbOK], 0);
     Exit;
    end;
    frmListado:=TfrmListado.Create(Self);
    frmlistado.illama:=8;
    frmListado.ShowModal;
    if Self.Tag = 0 then begin
     limpia_controles;
     Exit;
    end;
    // se asignan los valores del empleados
    ceTarjeta.Value := dmModulo_Datos.msqTemporal.fieldbyname('numero_tarjeta').AsInteger;
    sCuenta_Origen:= dmModulo_datos.msqTemporal.FieldByName('cuenta_origen').AsString;
    txtPaterno_cliente.Text   := dmModulo_datos.msqTemporal.FieldByName('paterno').AsString;
    txtMaterno_cliente.Text   := dmModulo_datos.msqTemporal.FieldByName('materno').AsString;
    txtNombre_cliente.Text    := dmModulo_datos.msqTemporal.FieldByName('nombre').AsString;
    txtDomicilio_cliente.Text := dmModulo_datos.msqTemporal.FieldByName('domicilio').AsString;
    txtColonia_cliente.Text   := dmModulo_datos.msqTemporal.FieldByName('colonia').AsString;
    txtCiudad_cliente.Text    := StringReplace(dmModulo_datos.msqTemporal.FieldByName('ciudad').AsString,'"','',[rfReplaceAll]);
    txtTelefono_cliente.Text  := dmModulo_datos.msqTemporal.FieldByName('telefono').AsString;
    txtRFC_cliente.Text:=dmModulo_datos.msqTemporal.FieldByName('rfc').AsString;
    txtNum_Ficha.Text:=dmModulo_datos.msqTemporal.FieldByName('id_numnomina').AsString;
    txtNum_Nomina.Text := txtNum_Ficha.Text;
    txtTrabajo_cliente.Text:='';
    if dmModulo_datos.msqTemporal.FieldByName('numnomina').AsString[1]= 'G' then
      txtTrabajo_cliente.Text:='GRUPO AUXILIAR EN SERVICIOS ADMINISTRATIVOS, S.A. DE C.V.'
    else if dmModulo_datos.msqTemporal.FieldByName('numnomina').AsString[1]= 'E' then
      txtTrabajo_cliente.Text:='IMPULSORA EMPRESARIAL DE XALAPA, S.A. DE C.V.';
    txtPuesto_cliente.Text:=dmModulo_datos.msqTemporal.FieldByName('puesto').AsString;
    txtDomicilio_trabajo_cliente.Text:='CARRETERA XALAPA-VERACRUZ KM. 18+300 PISO 1, LOC. CORRAL FALSO';
    txtTel_trabajo_cliente.Text:='8-41-81-00';
    txtMeses_Trabajo_Cliente.Text:=dmModulo_datos.msqTemporal.FieldByName('anos').AsString;
    cmbEstado_civil_cliente.ItemIndex := 0;
   end else
   begin
    if MessageDlg('      !!!! No se encontro ninguna coincidencia.  !!!!      '+#13#10+
                  'Para continuar y capturar un cliente nuevo presione Yes'+#13#10+
                  '    Para buscar nuevamente información presione Cancel   ', mtConfirmation, [mbYes,mbCancel], 0) = mrCancel then
    begin
     cmdCancelar.Click;
     txtNombre_Cliente.Text  := sNom;
     txtPaterno_Cliente.Text := sPat;
     txtMaterno_Cliente.Text := sMat;
     txtNombre_Cliente.SetFocus;
    end;
   end;
  end;
 end else
 if q = 'rfc' then
 begin
  if (Trim(txtPaterno_cliente.Text) = '') and (Trim(txtMaterno_cliente.Text) = '') and
     (Trim(txtNombre_cliente.Text)  = '') then
  begin
   if busca_rfc and (trim(txtClave_Cuenta.Text) <> '') then begin
      carga_informacion(txtClave_Cuenta.Text);
   end else
   begin
    if MessageDlg('      !!!! No se encontro ninguna coincidencia.  !!!!      '+#13#10+
                  'Para continuar y capturar un cliente nuevo presione Yes'+#13#10+
                  '    Para buscar nuevamente información presione Cancel   ', mtConfirmation, [mbYes,mbCancel], 0) = mrCancel then
    begin
     cmdCancelar.Click;
     txtNombre_Cliente.Text  := sNom;
     txtPaterno_Cliente.Text := sPat;
     txtMaterno_Cliente.Text := sMat;
     txtNombre_Cliente.SetFocus;
    end;
   end;
  end;
 end;
 bBusca := False;
end;

function TfrmScoreCard.busca_referencias: Boolean;
var folios : string;
begin
   result := true;
   folios := '';
   //Verifica que existan cuentas con el nombre
   msqReferencias.Sql.Text := 'SELECT cu.clave_cuenta '+
    'FROM cuentas cu '+
    'WHERE cu.nombre = "'+txtNombre_Cliente.Text+'" '+
    'AND cu.paterno = "'+txtPaterno_Cliente.Text+'" '+
    'AND cu.materno = "'+txtMaterno_Cliente.Text+'" '+
    'GROUP BY cu.clave_cuenta ORDER BY nombre';
   msqReferencias.Open;
   if msqReferencias.RecordCount = 0 then result := false;

   //Z con ventas
   msqReferencias.Sql.Text := 'SELECT cu.clave_cuenta '+
    'FROM cuentas cu, tipo_status ts, ventas v  '+
    'LEFT JOIN credito c ON v.folio_venta = c.folio_venta '+
    'WHERE v.clave_cuenta LIKE "Z%" '+
    'AND ts.tipo = cu.status '+
    'AND cu.nombre = "'+txtNombre_Cliente.Text+'" '+
    'AND cu.paterno = "'+txtPaterno_Cliente.Text+'" '+
    'AND cu.materno = "'+txtMaterno_Cliente.Text+'" '+
    'AND v.clave_cuenta = cu.clave_cuenta '+
    'GROUP BY cu.clave_cuenta ORDER BY nombre';
   msqReferencias.Open;
   while not msqReferencias.Eof do begin
      folios := folios + '"'+msqReferencias.fieldbyname('clave_cuenta').AsString+'",';
      msqReferencias.Next;
   end;
   //Z domiciliarias
   msqReferencias.Sql.Text := 'SELECT cu.clave_cuenta '+
      'FROM cuentas cu '+
      'LEFT JOIN ventas v ON  cu.clave_cuenta = v.clave_cuenta '+
      'WHERE cu.clave_cuenta like "Z%" and cu.status = 1 '+
      'and folio_venta is null '+
      'AND cu.nombre = "'+txtNombre_Cliente.Text+'" '+
      'AND cu.paterno = "'+txtPaterno_Cliente.Text+'" '+
      'AND cu.materno = "'+txtMaterno_Cliente.Text+'" '+
      'GROUP BY cu.clave_cuenta ORDER BY nombre';
   msqReferencias.Open;
   while not msqReferencias.Eof do begin
      folios := folios + '"'+msqReferencias.fieldbyname('clave_cuenta').AsString+'",';
      msqReferencias.Next;
   end;
   //T con ventas
   msqReferencias.Sql.Text := 'SELECT cu.clave_cuenta '+
    'FROM tipo_status ts, cuentas cu '+
    'LEFT JOIN ventas v ON v.clave_cuenta = cu.clave_cuenta '+
    'LEFT JOIN credito c ON v.folio_venta = c.folio_venta '+
    'WHERE v.clave_cuenta LIKE "T%" '+
    'AND ts.tipo = cu.status '+
    'AND cu.nombre  = "'+txtNombre_Cliente.Text+'" '+
    'AND cu.paterno = "'+txtPaterno_Cliente.Text+'" '+
    'AND cu.materno = "'+txtMaterno_Cliente.Text+'" '+
    'GROUP BY cu.clave_cuenta ORDER BY nombre';
   msqReferencias.Open;
   while not msqReferencias.Eof do begin
      folios := folios + '"'+msqReferencias.fieldbyname('clave_cuenta').AsString+'",';
      msqReferencias.Next;
   end;
   //T sin Ventas
   msqReferencias.Sql.Text := 'SELECT cu.clave_cuenta '+
      'FROM cuentas cu '+
      'LEFT JOIN ventas v ON cu.clave_cuenta = v.clave_cuenta '+
      'WHERE cu.clave_cuenta like "T%" '+
      'and folio_venta is null '+
      'AND cu.nombre = "'+txtNombre_Cliente.Text+'" '+
      'AND cu.paterno = "'+txtPaterno_Cliente.Text+'" '+
      'AND cu.materno = "'+txtMaterno_Cliente.Text+'" '+
      'GROUP BY cu.clave_cuenta ORDER BY nombre';
   msqReferencias.Open;
   while not msqReferencias.Eof do begin
      folios := folios + '"'+msqReferencias.fieldbyname('clave_cuenta').AsString+'",';
      msqReferencias.Next;
   end;
   folios := copy(folios,1,length(folios)-1);
   if folios <> '' then begin
      msqReferencias.Sql.Text := 'SELECT cu.clave_cuenta, nombre, paterno, materno, '+
         'max(v.folio_venta) folio_venta, cu.rfc, numero_ficha, '+
         'concat(domicilio, " #", numero_casa, " COL. ",colonia, " ", ciudad) domicilio_completo, '+
         'max(fecha_venta) fecha_venta, fecha_nacimiento, '+
         'upper(concat("T", left(cuenta_origen,3))) clave_muebleria, '+
         'tipo_venta, tarjeta, limite_credito, cu.expediente '+
         'FROM corporativo.cuentas cu '+
         'LEFT JOIN corporativo.ventas v USING(clave_cuenta) '+
         'LEFT JOIN corporativo.credito c USING(folio_venta) '+
         'LEFT JOIN corporativo.tipos_venta tv ON tv.clave = v.tipo_venta '+
         'WHERE cu.clave_cuenta in ('+folios+') '+
         'GROUP BY cu.clave_cuenta';
      msqReferencias.Open;
      if msqReferencias.RecordCount = 0 then result := false;
   end;
   if folios = '' then result := false;
   if result then begin
      frmConsulta_Nombre := TfrmConsulta_Nombre.Create(Self);
      frmConsulta_Nombre.illama := 2;
      frmConsulta_Nombre.ShowModal;
   end;
end;

function TfrmScoreCard.busca_rfc: Boolean;
var folios : string;
begin
   result := true;
   folios := '';
   //Verifica que existan cuentas con el nombre
   msqReferencias.Sql.Text := 'SELECT cu.clave_cuenta '+
    'FROM cuentas cu '+
    'WHERE cu.rfc = "'+txtRFC_Cliente.Text+'" '+
    'GROUP BY cu.clave_cuenta '+
    'ORDER BY nombre';
   msqReferencias.Open;
   if msqReferencias.RecordCount = 0 then result := false;

   //Z con ventas
   msqReferencias.Sql.Text := 'SELECT cu.clave_cuenta '+
    'FROM tipo_status ts, cuentas cu '+
    'LEFT JOIN ventas v ON v.clave_cuenta = cu.clave_cuenta '+
    'LEFT JOIN credito c ON v.folio_venta = c.folio_venta '+
    'WHERE v.clave_cuenta LIKE "Z%" and ts.tipo = cu.status '+
    'AND cu.rfc = "'+txtRFC_Cliente.Text+'" '+
    'GROUP BY cu.clave_cuenta ORDER BY nombre';
   msqReferencias.Open;
   while not msqReferencias.Eof do begin
      folios := folios + '"'+msqReferencias.fieldbyname('clave_cuenta').AsString+'",';
      msqReferencias.Next;
   end;
   //Z domiciliarias
   msqReferencias.Sql.Text := 'SELECT cu.clave_cuenta '+
      'FROM cuentas cu '+
      'LEFT JOIN ventas v ON cu.clave_cuenta = v.clave_cuenta '+
      'WHERE cu.clave_cuenta like "Z%" and cu.status = 1 '+
      'and folio_venta is null '+
      'AND cu.rfc = "'+txtRFC_Cliente.Text+'" '+
      'GROUP BY cu.clave_cuenta ORDER BY nombre';
   msqReferencias.Open;
   while not msqReferencias.Eof do begin
      folios := folios + '"'+msqReferencias.fieldbyname('clave_cuenta').AsString+'",';
      msqReferencias.Next;
   end;
   //T con ventas
   msqReferencias.Sql.Text := 'SELECT cu.clave_cuenta '+
    'FROM cuentas cu '+
    'LEFT JOIN ventas v ON v.clave_cuenta = cu.clave_cuenta '+
    'LEFT JOIN credito c ON v.folio_venta = c.folio_venta '+
    'LEFT JOIN tipo_status ts ON ts.tipo = cu.status '+
    'WHERE v.clave_cuenta LIKE "T%" '+
    'AND cu.RFC  = "'+txtRFC_Cliente.Text+'" '+
    'GROUP BY cu.clave_cuenta ORDER BY nombre';
   msqReferencias.Open;
   while not msqReferencias.Eof do begin
      folios := folios + '"'+msqReferencias.fieldbyname('clave_cuenta').AsString+'",';
      msqReferencias.Next;
   end;
   //T sin Ventas
   msqReferencias.Sql.Text := 'SELECT cu.clave_cuenta '+
      'FROM cuentas cu '+
      'LEFT JOIN ventas v ON cu.clave_cuenta = v.clave_cuenta '+
      'WHERE cu.clave_cuenta like "T%" '+
      'and folio_venta is null '+
      'AND cu.rfc = "'+txtRFC_Cliente.Text+'" '+
      'GROUP BY cu.clave_cuenta ORDER BY nombre';
   msqReferencias.Open;
   while not msqReferencias.Eof do begin
      folios := folios + '"'+msqReferencias.fieldbyname('clave_cuenta').AsString+'",';
      msqReferencias.Next;
   end;
   folios := copy(folios,1,length(folios)-1);
   if folios <> '' then begin
      msqReferencias.Sql.Text := 'SELECT cu.clave_cuenta, nombre, paterno, materno, '+
         'max(v.folio_venta) folio_venta, cu.rfc, numero_ficha, '+
         'concat(domicilio, " #", numero_casa, " COL. ",colonia, " ", ciudad) domicilio_completo, '+
         'max(fecha_venta) fecha_venta, fecha_nacimiento, '+
         'upper(concat("T", left(cuenta_origen,3))) clave_muebleria, '+
         'tipo_venta, tarjeta, limite_credito, cu.expediente '+
         'FROM corporativo.cuentas cu '+
         'LEFT JOIN corporativo.ventas v USING(clave_cuenta) '+
         'LEFT JOIN corporativo.credito c USING(folio_venta) '+
         'LEFT JOIN corporativo.tipos_venta tv ON tv.clave = v.tipo_venta '+
         'WHERE cu.clave_cuenta in ('+folios+') GROUP BY cu.clave_cuenta';
      msqReferencias.Open;
      if msqReferencias.RecordCount = 0 then result := false;
   end;
   if folios = '' then result := false;
   if result then begin
      frmConsulta_Nombre := TfrmConsulta_Nombre.Create(Self);
      frmConsulta_Nombre.illama := 2;
      frmConsulta_Nombre.ShowModal;
   end;
end;

procedure TfrmScoreCard.deNacimiento_ClienteExit(Sender: TObject);
var srfc : string;
begin
   if deNacimiento_Cliente.Date <= 0 then exit;
   if length(txtRFC_Cliente.Text) > 10 then exit;
   if deNacimiento_Cliente.Date >= date then begin
      MessageDlg('   !  !  !  ATENCION  !  !  !'+#13#10+
                 'FAVOR DE VERIFICAR QUE LA'+#13#10+
                 '    FECHA DE NACIMIENTO'+ #13#10+
                 'SEA MENOR A LA FECHA ACTUAL', mtWarning, [mbOK], 0);
      deNacimiento_Cliente.SetFocus;
      exit;
   end;
   srfc := formatdatetime('yymmdd',deNacimiento_Cliente.Date);
   txtRFC_Cliente.Text := genera_rfc(txtPaterno_Cliente.Text,
                                     txtMaterno_Cliente.Text,
                                     txtNombre_Cliente.Text,
                                     srfc);
end;

function TfrmScoreCard.genera_rfc(paterno, materno, nombre,
  fecha: string): string;
var letras : string;
begin
   if trim(paterno) = '' then letras := 'XX'
   else letras := copy(paterno,1,2);
   if trim(materno) = '' then letras := letras + 'X'
   else letras := letras + copy(materno,1,1);
   letras := letras + copy(nombre,1,1);
   result := letras + fecha;
end;

procedure TfrmScoreCard.txtRFC_clienteChange(Sender: TObject);
begin
   bBusca := True;
end;

procedure TfrmScoreCard.txtRFC_clienteExit(Sender: TObject);
begin
   if (trim(txtRFC_Cliente.Text) <> '') and bBusca then buscar_cuentas('rfc');
end;

procedure TfrmScoreCard.txtTel_Movil_ClienteChange(Sender: TObject);
begin
   asigna_valor(mdCampos, 4,txtTel_Movil_Cliente.Text, 'valor_nuevo');
end;

procedure TfrmScoreCard.txtTel_Movil_ClienteKeyPress(Sender: TObject;
  var Key: Char);
begin
   if key in ['1','2','3','4','5','6','7','8','9','0',#8] then
   else key := #0;
end;

procedure TfrmScoreCard.txtDomicilio_clienteChange(Sender: TObject);
begin
   asigna_valor(mdCampos, 5,txtDomicilio_Cliente.Text, 'valor_nuevo');
end;

procedure TfrmScoreCard.txtNumcasa_clienteChange(Sender: TObject);
begin
   asigna_valor(mdCampos, 6,txtNumCasa_Cliente.Text, 'valor_nuevo');
end;

procedure TfrmScoreCard.txtColonia_clienteChange(Sender: TObject);
begin
   asigna_valor(mdCampos, 7,txtColonia_Cliente.Text, 'valor_nuevo');
end;

procedure TfrmScoreCard.txtCiudad_clienteChange(Sender: TObject);
begin
   asigna_valor(mdCampos, 8,txtCiudad_Cliente.Text, 'valor_nuevo');
end;

procedure TfrmScoreCard.txtEstado_ClienteChange(Sender: TObject);
begin
   asigna_valor(mdCampos, 9,txtEstado_Cliente.Text, 'valor_nuevo');
end;

procedure TfrmScoreCard.txtTelefono_clienteChange(Sender: TObject);
begin
   asigna_valor(mdCampos, 10,txtTelefono_Cliente.Text, 'valor_nuevo');
end;

procedure TfrmScoreCard.txtTelefono_clienteKeyPress(Sender: TObject;
  var Key: Char);
begin
   if key in ['1','2','3','4','5','6','7','8','9','0',#8] then
   else key := #0;
end;

procedure TfrmScoreCard.txtTrabajo_clienteChange(Sender: TObject);
begin
   asigna_valor(mdCampos, 11,txtTrabajo_Cliente.Text, 'valor_nuevo');
end;

procedure TfrmScoreCard.txtPuesto_clienteChange(Sender: TObject);
begin
   asigna_valor(mdCampos, 12,txtPuesto_Cliente.Text, 'valor_nuevo');
end;

procedure TfrmScoreCard.txtTel_trabajo_clienteChange(Sender: TObject);
begin
   asigna_valor(mdCampos, 13,txtTel_Trabajo_Cliente.Text, 'valor_nuevo');
end;

procedure TfrmScoreCard.txtTel_trabajo_clienteKeyPress(Sender: TObject;
  var Key: Char);
begin
   if key in ['1','2','3','4','5','6','7','8','9','0',#8] then
   else key := #0;
end;

procedure TfrmScoreCard.txtDomicilio_trabajo_clienteChange(
  Sender: TObject);
begin
   asigna_valor(mdCampos, 14,txtDomicilio_trabajo_Cliente.Text, 'valor_nuevo');
end;

procedure TfrmScoreCard.txtColonia_Trabajo_ClienteChange(Sender: TObject);
begin
   asigna_valor(mdCampos, 15,txtColonia_trabajo_Cliente.Text, 'valor_nuevo');
end;

procedure TfrmScoreCard.txtCiudad_Trabajo_ClienteChange(Sender: TObject);
begin
   asigna_valor(mdCampos, 16,txtCiudad_Trabajo_Cliente.Text, 'valor_nuevo');
end;

procedure TfrmScoreCard.txtEstado_Trabajo_ClienteChange(Sender: TObject);
begin
   asigna_valor(mdCampos, 17,txtEstado_Trabajo_Cliente.Text, 'valor_nuevo');
end;

procedure TfrmScoreCard.txtSueldo_clienteChange(Sender: TObject);
begin
   asigna_valor(mdCampos, 18,txtSueldo_Cliente.Text, 'valor_nuevo');
end;

procedure TfrmScoreCard.edTelefono_rp1Change(Sender: TObject);
begin
   asigna_valor(mdCampos, 19,edTelefono_rp1.Text+'@'+edNombre_rp1.Text, 'valor_nuevo');
end;

procedure TfrmScoreCard.edTelefono_rp2Change(Sender: TObject);
begin
   asigna_valor(mdCampos, 20,edTelefono_rp2.Text+'@'+edNombre_rp2.Text, 'valor_nuevo');
end;

procedure TfrmScoreCard.edTelefono_rp2KeyPress(Sender: TObject;
  var Key: Char);
begin
   if key in ['1','2','3','4','5','6','7','8','9','0',#8] then
   else key := #0;
end;

procedure TfrmScoreCard.edTelefono_rp1KeyPress(Sender: TObject;
  var Key: Char);
begin
   if key in ['1','2','3','4','5','6','7','8','9','0',#8] then
   else key := #0;
end;

procedure TfrmScoreCard.edTelefono_rp3Change(Sender: TObject);
begin
   asigna_valor(mdCampos, 21,edTelefono_rp3.Text+'@'+edNombre_rp3.Text, 'valor_nuevo');
end;

procedure TfrmScoreCard.edTelefono_rp3KeyPress(Sender: TObject;
  var Key: Char);
begin
  if key in ['1','2','3','4','5','6','7','8','9','0',#8] then
  else key := #0;
end;

procedure TfrmScoreCard.edTelefono_rp4Change(Sender: TObject);
begin
   asigna_valor(mdCampos, 22,edTelefono_rp4.Text+'@'+edNombre_rp4.Text, 'valor_nuevo');
end;

procedure TfrmScoreCard.edTelefono_rp4KeyPress(Sender: TObject;
  var Key: Char);
begin
   if key in ['1','2','3','4','5','6','7','8','9','0',#8] then
   else key := #0;
end;

procedure TfrmScoreCard.cmbTipo_RC2Exit(Sender: TObject);
begin
   jbpCliente.ActivePageIndex := jbpCliente.ActivePageIndex + 1;
   if gbExpediente.Enabled then chbSolicitud.SetFocus;
end;

procedure TfrmScoreCard.txtTelefonoF_AvalExit(Sender: TObject);
begin
   Extras_Aval.ActivePageIndex := Extras_Aval.ActivePageIndex + 1;
   txtTrabajo_Aval.SetFocus;
end;

procedure TfrmScoreCard.txtMeses_Trabajo_AvalExit(Sender: TObject);
begin
   Extras_Aval.ActivePageIndex := Extras_Aval.ActivePageIndex + 1;
   txtNombre_RP1_Aval.SetFocus;
end;

procedure TfrmScoreCard.txtTelefono_RP2_AvalExit(Sender: TObject);
begin
   Extras_Aval.ActivePageIndex := Extras_Aval.ActivePageIndex + 1;
   txtNombre_RF1_Aval.SetFocus;
end;

procedure TfrmScoreCard.txtTelefono_RF2_AvalExit(Sender: TObject);
begin
   jbpCliente.ActivePageIndex := jbpCliente.ActivePageIndex + 1;
   chbSolicitud.SetFocus;
end;

procedure TfrmScoreCard.lbTraseraDblClick(Sender: TObject);
begin
   nCalle := 4;
   txtNombre_Calle.Text    := lbTrasera.Caption;
   txtNombre_Calle.Visible := True;
   txtNombre_Calle.SetFocus;
end;

procedure TfrmScoreCard.lbFrontalDblClick(Sender: TObject);
begin
   nCalle := 2;
   txtNombre_Calle.Text := lbFrontal.Caption;
   txtNombre_Calle.Visible := True;
   txtNombre_Calle.SetFocus;
end;

procedure TfrmScoreCard.lbIzqDblClick(Sender: TObject);
begin
   nCalle := 1;
   txtNombre_Calle.Text := lbIzq.Caption;
   txtNombre_Calle.Visible := True;
   txtNombre_Calle.SetFocus;
end;

procedure TfrmScoreCard.lbDerDblClick(Sender: TObject);
begin
   nCalle := 3;
   txtNombre_Calle.Text := lbDer.Caption;
   txtNombre_Calle.Visible := True;
   txtNombre_Calle.SetFocus;
end;

procedure TfrmScoreCard.txtNombre_CalleExit(Sender: TObject);
begin
   if trim(txtnombre_Calle.Text) <> '' then begin
      case ncalle of
         1 : lbIzq.Caption     := txtNombre_Calle.Text;
         2 : lbFrontal.Caption := txtNombre_Calle.Text;
         3 : lbDer.Caption     := txtNombre_Calle.Text;
         4 : lbTrasera.Caption := txtNombre_Calle.Text;
      end;
   end;
   txtNombre_Calle.Visible := False;
end;

procedure TfrmScoreCard.ceCap_Pag_QuinChange(Sender: TObject);
begin
    if ceCap_Pag_Quin.Value > 0 then begin
        if lbQuien.Caption = 'CLIENTE' then begin
            ceCap_Pag_Men.Value := ceCap_Pag_Quin.Value * 2;
            cap_pago_p.Caption := FloatToStr(RoundTo((ceCap_Pag_Men.Value / txtSueldo_Cliente.Value)*100,-2)) + '%';
        end else begin
            ceCap_Pag_Men.Value := ceCap_Pag_Quin.Value * 2;
            cap_pago_p.Caption := FloatToStr(RoundTo((ceCap_Pag_Men.Value / txtSueldo_Aval.Value)*100,-2)) + '%';
        end;
        llena_lineas(ceCap_Pag_Men.Value, ftGarantia, ftMaximo);
    end else
        ceCap_Pag_Men.Value := ceCap_Pag_Quin.Value;

    asigna_valor(mdCampos, 23, FloatToStr(ceCap_Pag_Quin.Value), 'valor_nuevo');
end;

procedure TfrmScoreCard.ceCap_Pag_QuinExit(Sender: TObject);
begin
    if lbQuien.Caption = 'CLIENTE' then begin
        if cTipo.ItemIndex = 2 then begin //CrediBips
            if ceCap_Pag_Men.Value > (txtSueldo_Cliente.Value / 5) then begin
                messagebox(handle,
                    'La Capacidad de Pago Mensual no debe'+#13+#10+
                    ' exceder el 20% del Sueldo Mensual. ' , 'Atención...', 48);
                ceCap_Pag_Quin.Value := txtSueldo_Cliente.Value / 10;
            end;
        end;

        if ceCap_Pag_Men.Value > (txtSueldo_Cliente.Value / 3.34) then begin
            messagebox(handle,
                'La Capacidad de Pago Mensual no debe'+#13+#10+
                ' exceder el 30% del Sueldo Mensual. ' , 'Atención...', 48);
            ceCap_Pag_Quin.Value := txtSueldo_Cliente.Value / 6.66;
        end;

        if ceCap_Pag_Men.Value < (txtSueldo_Cliente.Value * 0.1) then begin
            messagebox(handle,
                'La Capacidad de Pago Mensual no debe'+#13+#10+
                ' ser Menor del 10% del Sueldo Mensual. ' , 'Atención...', 48);
            ceCap_Pag_Quin.Value := txtSueldo_Cliente.Value * 0.05;
        end;

        if (ceCap_Pag_Quin.Value > 386) and (iNivel = 2) then begin // Auxiliar
            messagebox(handle,
                '  Solo puede Autorizar hasta $ 385.00'+#13+#10+
                '    de Capacidad de Pago Quincenal. '+#13+#10+
                ' Para Capacidades mayores pongasé en contacto '+#13+#10+
                'con el Jefe de Unidad Financiera Correpondiente.' , 'Atención...', 48);
            ceCap_Pag_Quin.Value := 385;
        end;

        if (ceCap_Pag_Quin.Value > 963) and (iNivel = 3) then begin // Jefe de Unidad Financiera
            messagebox(handle,
                '  Solo puede Autorizar hasta $ 962.00'+#13+#10+
                '    de Capacidad de Pago Quincenal. '+#13+#10+
                ' Para Capacidades mayores pongasé en contacto '+#13+#10+
                'con algún Coordinador de Servicios Financieros.' , 'Atención...', 48);
            ceCap_Pag_Quin.Value := 962;
        end;

        if (ceCap_Pag_Quin.Value > 1155) and (iNivel = 4) then begin // Coordinadores ó Supervisor
            messagebox(handle,
                '  Solo puede Autorizar hasta $1,154.00'+#13+#10+
                '    de Capacidad de Pago Quincenal. '+#13+#10+
                ' Para Capacidades mayores pongasé en contacto '+#13+#10+
                'con el Gerente Corporativo de Servicios Financieros.' , 'Atención...', 48);
            ceCap_Pag_Quin.Value := 1154;
        end;
    end else begin
        if ceCap_Pag_Men.Value > (txtSueldo_Aval.Value / 2) then begin
            messagebox(handle,
                'La Capacidad de Pago Mensual no debe'+#13+#10+
                ' exceder el 50% del Sueldo Mensual. ' , 'Atención...', 48);
            ceCap_Pag_Quin.Value := txtSueldo_Aval.Value / 4;
        end;
    end;
end;


procedure TfrmScoreCard.cmdAplicarClick(Sender: TObject);
var
sql : String;
begin
    if (lbStatus.Caption = 'CANCELADO') and (iNivel < 4) then begin
        MessageDlg('No se puede cambiar status de la cuenta porque esta Cancelada', mtWarning, [mbOK], 0);
        Exit;
    end;

    // Cambiar de Status Rechazado ó Caducado a Investigacion
    if ((lbStatus.Caption = 'RECHAZADO') or (lbStatus.Caption = 'CADUCADO')) and
        (cmbStatus2.Text = 'INVESTIGACION') then begin
        // PARA OPCION DE TRANSFERENCIAS DE RECHAZOS
        msqTemp2.Sql.Text :=
            'SELECT '+
                    'id,'+
                    'clave_cuenta,'+
                    'status_actual '+
            'FROM transferencias_rechazos '+
            'WHERE clave_cuenta = "'+txtClave_Cuenta.Text+'"';
        msqTemp2.Open();

        if msqTemp2.RecordCount <> 0 then begin
            if msqTemp2.FieldByName('status_actual').AsInteger < 2 then begin
                MessageDlg(
                    'La cuenta se transfirió a unidad de negocio para su '+#13+
                    'recuperación y no se ha recepcionado. Verifique.', mtError, [mbOK], 0);
                Exit;
            end;
            dmModulo_Datos.msqTemporal.Sql.Text :=
                'UPDATE transferencias_rechazos SET '+
                'status_actual = 3,'+
                'fecha_ultimo_mov = CURDATE(),'+
                'usuario = "'+frmMain.sClave_usuario+'" '+
                'WHERE id = "'+msqTemp2.fieldbyname('id').asstring+'"';
            dmModulo_Datos.msqTemporal.ExecSql();

            dmModulo_Datos.msqTemporal.Sql.Text :=
                'INSERT INTO transferencias_rechazos_historico SET '+
                'clave_cuenta = "'+txtClave_Cuenta.Text+'",'+
                'fecha_movimiento = CURDATE(),'+
                'status = 3,'+
                'usuario = "'+frmMain.sClave_usuario+'"';
            dmModulo_Datos.msqTemporal.ExecSql();
        end;

        dmModulo_Datos.msqTemporal.Sql.Text :=
            'UPDATE cuentas SET '+
            'status = "'+inttostr(cmbStatus2.itemindex)+'" '+
            'WHERE clave_cuenta = "'+ sClave_Cuenta +'"';
        dmModulo_Datos.msqTemporal.ExecSql();

        if dmModulo_Datos.msqTemporal.RowsAffected > 0 then
            lbStatus.Caption := 'INVESTIGACION';

        if mdCampos.Locate('id_tipo','24',[]) then begin //Almacena Status
            if (mdCampos.FieldByName('valor_anterior').AsString <> '') and
                (Trim(mdCampos.FieldByName('valor_anterior').AsString) <> Trim(mdCampos.FieldByName('valor_nuevo').AsString)) then begin

                dmModulo_Datos.msqTemporal.Sql.Text :=
                    'INSERT INTO corporativo.historial_cuentas_modificadas SET '+
                    'id_tipo = "24",'+
                    'clave_cuenta = "'+ txtClave_cuenta.Text +'",'+
                    'valor_anterior = "'+ mdCampos.FieldByName('valor_anterior').AsString +'",'+
                    'valor_nuevo = "'+ mdCampos.FieldByName('valor_nuevo').AsString +'",'+
                    'fecha = CURDATE(),'+
                    'hora = CURTIME(),'+
                    'clave_usuario = "'+ sClave_Usuario +'"';
                dmModulo_Datos.msqTemporal.ExecSql();
            end;
        end;
        asigna_valor(mdCampos,24, cmbStatus2.Text,'valor_anterior');
        asigna_valor(mdCampos,24, cmbStatus2.Text,'valor_nuevo');
        Exit;
    end;

    // Confirma si ya fue validada la Verificación Telefonica
    if (defecha_captura.Date > 39632) and (cTipo.ItemIndex <> 2) then begin
        dmModulo_datos.msqTemporal.Sql.Text :=
            'SELECT clave_cuenta '+
            'FROM '+
                    'corporativo.cuentas AS c '+
                    'LEFT JOIN corporativo.verificacion_telefonica USING(clave_cuenta) '+
            'WHERE '+
                    'clave_cuenta = "'+ txtClave_Cuenta.text +'" AND '+
                    '(validada = 1 OR '+
                            '(c.fecha_captura="2013-02-28" AND '+
                                    '(c.cuenta_origen LIKE "C41%" OR c.cuenta_origen LIKE "C42%")))';
        dmModulo_datos.msqTemporal.Open();

        if dmModulo_datos.msqTemporal.RecordCount = 0 then begin
            MessageDlg(
                'Primero debe Validar la Verificación Telefonica'+#13+
                '       correspondiente a esta Cuenta..', mtWarning, [mbOK], 0);
            Exit;
        end;
    end;

    ceCap_Pag_QuinExit(nil);
    if cTipo.ItemIndex <> 2 then begin //No es CrediBips
        if (lbStatus.Caption = 'ACTIVADO') or (lbStatus.Caption = 'AUTORIZADO') then begin
            sql :=
                'UPDATE corporativo.cuentas SET '+
                'capacidad_pago = "'+FloatToStr(ceCap_Pag_Quin.Value)+'",'+
                'limite_credito = IF((' + floattostr(ceCap_Pag_Quin.Value)+'*'+IntToStr(plazo_tope*2)+') > 40000, 40000,('+FloatToStr(ceCap_Pag_Quin.Value)+'*'+IntToStr(plazo_tope*2)+')),'+
                'fecha_actualizacion = CURDATE(),'+
                'fecha_termino = DATE_ADD(CURDATE(),INTERVAL 2 year),'+
                'solo_lectura = 1 '+
                'WHERE clave_cuenta = "'+ sClave_Cuenta +'"';
            dmModulo_Datos.msqTemporal.Sql.Text := sql;
            dmModulo_Datos.msqTemporal.ExecSql();
        end;

        // Establece fecha de autorizada
        if lbStatus.Caption = 'AUTORIZADO' then begin
            dmModulo_Datos.msqTemporal.Sql.Text :=
                'UPDATE cuentas SET '+
                'fecha_autorizada = CURDATE() '+
                'WHERE '+
                        'clave_cuenta = "'+ txtClave_Cuenta.Text +'" AND '+
                        'fecha_autorizada = "0000-00-00"';
            dmModulo_Datos.msqTemporal.ExecSql();
        end;

        if iNivel > 2 then begin
            //Cambia Status de Cuenta

            //VERIFICA SI LA CUENTA FUE TRANSFERIDA A UN COMO RECHAZADA PARA RECUPERARLA
            msqTemp2.Sql.Text :=
                'SELECT '+
                        'id,'+
                        'clave_cuenta,'+
                        'status_actual '+
                'FROM transferencias_rechazos '+
                'WHERE clave_cuenta = "'+txtClave_Cuenta.Text+'"';
            msqTemp2.Open();

            if msqTemp2.RecordCount <> 0 then begin
                if msqTemp2.FieldByName('status_actual').AsInteger < 2 then begin
                    MessageDlg(
                        'La cuenta se transfirió a unidad de negocio para su '+#13+
                        'recuperación y no se ha recepcionado. Verifique.', mtError, [mbOK], 0);
                    Exit;
                end;

                dmModulo_Datos.msqTemporal.Sql.Text :=
                    'UPDATE transferencias_rechazos SET '+
                    'status_actual = 3,'+
                    'fecha_ultimo_mov = CURDATE(),'+
                    'usuario = "'+frmMain.sClave_usuario+'" '+
                    'WHERE id = "'+msqTemp2.fieldbyname('id').asstring+'"';
                dmModulo_Datos.msqTemporal.ExecSql();

                dmModulo_Datos.msqTemporal.Sql.Text :=
                    'INSERT INTO transferencias_rechazos_historico SET '+
                    'clave_cuenta = "'+txtClave_Cuenta.Text+'",'+
                    'fecha_movimiento = CURDATE(),'+
                    'status = 3,'+
                    'usuario = "'+frmMain.sClave_usuario+'"';
                dmModulo_Datos.msqTemporal.ExecSql();
            end;

            dmModulo_Datos.msqTemporal.Sql.Text :=
                'UPDATE corporativo.cuentas SET '+
                'status = "'+IntToStr(cmbStatus2.itemindex)+'" '+
                'WHERE clave_cuenta = "'+txtClave_Cuenta.Text+'"';
            dmModulo_Datos.msqTemporal.ExecSql();

            // Establece fecha de activada
            if cmbStatus2.Text = 'ACTIVADO' then begin
                dmModulo_Datos.msqTemporal.Sql.Text :=
                    'UPDATE cuentas SET '+
                    'fecha_activada = CURDATE() '+
                    'WHERE '+
                            'clave_cuenta = "'+ txtClave_Cuenta.Text +'" AND '+
                            'fecha_activada = "0000-00-00" ';
                dmModulo_Datos.msqTemporal.ExecSql();
            end;
        end;

        // Cambia Determinante de Cuenta
        dmModulo_Datos.msqTemporal.Sql.Text :=
            'UPDATE corporativo.cuentas SET '+
            'determinante = 8 '+
            'WHERE clave_cuenta = "'+ txtClave_Cuenta.Text +'"';
        dmModulo_Datos.msqTemporal.ExecSql();
    end else begin
        //Es CrediBips
        if (lbStatus.Caption = 'ACTIVADO') and (iNivel >= 4) then begin
            //Todavia no esta Activada la cuenta
            sql :=
                'UPDATE corporativo.cuentas SET '+
                'capacidad_pago = "'+FloatToStr(ceCap_Pag_Quin.Value)+'",'+
                'limite_credito = IF(('+FloatToStr(ceCap_Pag_Quin.Value)+'*'+IntToStr(plazo_tope*2)+') > 40000, 40000,('+FloatToStr(ceCap_Pag_Quin.Value)+'*'+IntToStr(plazo_tope*2)+')),'+
                'fecha_actualizacion = CURDATE(),'+
                'fecha_termino = DATE_ADD(CURDATE(),INTERVAL 2 YEAR) '+
                'WHERE clave_cuenta = "'+ sClave_Cuenta +'"';
            dmModulo_Datos.msqTemporal.Sql.Text := sql;
            dmModulo_Datos.msqTemporal.ExecSql();
        end else begin
            if iNivel >= 4 then begin
                dmModulo_Datos.msqTemporal.Sql.Text :=
                    'UPDATE corporativo.cuentas SET '+
                    'determinante = 8,'+
                    'capacidad_pago = "'+FloatToStr(ceCap_Pag_Quin.Value)+'",'+
                    'limite_credito = IF(('+FloatToStr(ceCap_Pag_Quin.Value)+'*'+IntToStr(plazo_tope*2)+') > 40000, 40000,('+FloatToStr(ceCap_Pag_Quin.Value)+'*'+IntToStr(plazo_tope*2)+')),'+
                    'fecha_actualizacion = CURDATE(),'+
                    'fecha_termino = DATE_ADD(CURDATE(),INTERVAL 2 year) '+
                    'WHERE clave_cuenta = "'+ sClave_Cuenta +'"';
                dmModulo_Datos.msqTemporal.ExecSql();
            end;
        end;
    end;

    dmModulo_Datos.msqTemporal.Sql.Text :=
        'SELECT clave_cuenta '+
        'FROM corporativo.seguimiento_tarjeta '+
        'WHERE clave_cuenta = "'+sClave_Cuenta+'"';
    dmModulo_Datos.msqTemporal.Open();

    if dmModulo_Datos.msqTemporal.RecordCount > 0 then begin //Ya existe por lo menos un registro
        if iStatus = 1 then begin
            dmModulo_Datos.msqTemporal.Sql.Text :=
                'UPDATE seguimiento_tarjeta SET '+
                'fecha_preautorizada = CURDATE(),'+
                'fecha_actualizacion = NOW(), '+
                'usuario_autoriza = "'+sClave_Usuario +'",'+
                'causa = "" '+
                'WHERE clave_cuenta = "'+sClave_Cuenta+'"';
            dmModulo_Datos.msqTemporal.ExecSql();
        end;
        if iStatus = 9 then begin
            dmModulo_Datos.msqTemporal.Sql.Text :=
                'UPDATE seguimiento_tarjeta SET '+
                'causa = "'+obtiene_causa+'" '+
                'WHERE clave_cuenta = "'+sClave_Cuenta+'"';
            dmModulo_Datos.msqTemporal.ExecSql();
        end;
    end else begin //Inserta el registro en seguimiento tarjeta
        if iStatus = 1 then begin
            dmModulo_Datos.msqTemporal.Sql.Text :=
                'INSERT INTO seguimiento_tarjeta SET '+
                'fecha_preautorizada = CURDATE(),'+
                'fecha_actualizacion = NOW(), '+
                'usuario_autoriza = "'+sClave_usuario+'",'+
                'clave_cuenta = "'+sClave_Cuenta+'"';
            dmModulo_Datos.msqTemporal.ExecSql();
        end;
        if iStatus = 9 then begin
            dmModulo_Datos.msqTemporal.Sql.Text :=
                'INSERT INTO seguimiento_tarjeta SET '+
                'causa = "'+obtiene_causa+'",'+
                'clave_cuenta = "'+sClave_Cuenta+'",'+
                'fecha_actualizacion = NOW()';
            dmModulo_Datos.msqTemporal.ExecSql();
        end;
    end;

    //Si hubo cambios en la capacidad de pago o status, se almacenan
    if mdCampos.Locate('id_tipo','23',[]) then begin //Almacena Capacidad de Pago
        if (mdCampos.FieldByName('valor_anterior').AsString <> '') and
            (Trim(mdCampos.FieldByName('valor_anterior').AsString) <> Trim(mdCampos.FieldByName('valor_nuevo').AsString)) then begin

            dmModulo_Datos.msqTemporal.Sql.Text :=
                'INSERT INTO corporativo.historial_cuentas_modificadas SET '+
                'id_tipo = "23",'+
                'clave_cuenta = "'+txtClave_cuenta.Text+'",'+
                'valor_anterior = "'+mdCampos.fieldbyname('valor_anterior').AsString+'",'+
                'valor_nuevo = "'+mdCampos.FieldByName('valor_nuevo').AsString+'",'+
                'fecha = CURDATE(),'+
                'hora = CURTIME(),'+
                'clave_usuario = "'+sClave_Usuario+'"';
            dmModulo_Datos.msqTemporal.ExecSql();
        end;
    end;

    if mdCampos.Locate('id_tipo','24',[]) then begin //Almacena Status
        if (mdCampos.FieldByName('valor_anterior').AsString <> '') and
            (Trim(mdCampos.FieldByName('valor_anterior').AsString) <> Trim(mdCampos.FieldByName('valor_nuevo').AsString)) then begin

            dmModulo_Datos.msqTemporal.Sql.Text :=
                'INSERT INTO corporativo.historial_cuentas_modificadas SET '+
                'id_tipo = "24",'+
                'clave_cuenta = "'+txtClave_cuenta.Text+'",'+
                'valor_anterior = "'+mdCampos.FieldByName('valor_anterior').AsString +'",'+
                'valor_nuevo = "'+mdCampos.FieldByName('valor_nuevo').AsString+'",'+
                'fecha = CURDATE(),'+
                'hora = CURTIME(),'+
                'clave_usuario = "'+sClave_Usuario+'"';
            dmModulo_Datos.msqTemporal.ExecSql();
        end;
    end;

    asigna_valor(mdCampos,23, ceCap_Pag_Quin.Text,'valor_anterior');
    asigna_valor(mdCampos,23, ceCap_Pag_Quin.Text,'valor_nuevo');
    asigna_valor(mdCampos,24, cmbStatus2.Text,'valor_anterior');
    asigna_valor(mdCampos,24, cmbStatus2.Text,'valor_nuevo');
end;


procedure TfrmScoreCard.cmdActualiza_ScoreClick(Sender: TObject);
begin
    if iNivel < 2 then begin
        MessageDlg(
            '! ! ! A T E N C I O N ! ! !'+#13+
            '      No cuenta con el '+#13+
            '   Nivel necesario para'+#13+
            '  correr segundo Score', mtError, [mbOK], 0);
        Exit;
    end;

    if Trim(txtClave_Cuenta.Text) = '' then begin
        MessageDlg(
            '  ! ! ! ! ! A T E N C I O N ! ! ! ! !'+#13+
            'Primero Seleccione una Cuenta'+#13+
            '   para correr Segundo Score.', mtError, [mbOK], 0);
        Exit;
    end;

    if iNivel = 2 then begin
        if (lbStatus.Caption <> 'PRE-AUTORIZADO') and
            (lbStatus.Caption <> 'AUTORIZADO') and
            (lbStatus.Caption <> 'ACTIVADO') and
            (lbStatus.Caption <> 'INVESTIGACION') and
            (lbStatus.Caption <> 'CONDICIONADO') and
            (lbStatus.Caption <> 'CADUCADO') then begin
            MessageDlg(
                'No puede Correr Segundo Score'+#13+
                'porque el Status de la Cuenta'+#13+
                'no corresponde a alguno de '+#13+
                'los siguientes:'+#13+''+#13+
                '- PRE-AUTORIZADO'+#13+
                '- AUTORIZADO'+#13+
                '- ACTIVADO'+#13+
                '- INVESTIGACION'+#13+
                '- CONDICIONADO'+#13+
                '- CADUCADO', mtError, [mbOK], 0);
            Exit;
        end;
    end;

    //Es CrediBips
    if (cTipo.ItemIndex = 2) and (iNivel < 5) then begin
        MessageDlg(
            '  ! ! ! ! ! A T E N C I O N ! ! ! ! !'+#13#10#13#10+
            '   Solo el Gerente Corporativo '+#13#10+
            'de Servicios Financieros, puede'+#13#10+
            '    realizar cambios en tarjetas'+#13#10+
            '                 CREDIBIPS', mtError, [mbOK], 0);
        Exit;
    end;

    //Valida Documentacion del Expediente.
    msqcuentas_migradas.Sql.Text :=
        'SELECT clave_cuenta '+
        'FROM cuentas '+
        'WHERE '+
                'clave_cuenta = "'+txtClave_Cuenta.Text+'" AND '+
                'fecha_captura = "2013-02-28" AND '+
                '(cuenta_origen LIKE "C41%" OR cuenta_origen LIKE "C42%")';
    msqcuentas_migradas.Open();
    if msqcuentas_migradas.Eof then begin
        if not chbSolicitud.Checked or
            not chbContrato.Checked or
            not chbVerificacion.Checked or
            not chbAutorizacionBuro.Checked then begin
            MessageDlg(
                ' ! ! ! A T E N C I O N ! ! ! '+#13+
                'No puede Correr 2º Score'+#13+
                ' porque falta información'+#13+
                '         del expediente.', mtWarning, [mbOK], 0);
            jbpCliente.ActivePageIndex := 1;
            Exit;
        end;

        if Trim(txtFolio.Text) = '' then begin
            MessageDlg(
                'Debe Indicar el Folio de la Identificación'+#13+
                '     Oficial, antes de Correr el 2º Score', mtWarning, [mbOK], 0);
            jbpCliente.ActivePageIndex := 1;
            txtFolio.SetFocus;
            Exit;
        end;

        cmbStatus2.Visible := True;
        lresultado.Visible := True;

        //Verifica si ya se realizo la validacion de la Telefonica
        dmModulo_Datos.msqTemporal.Sql.Text :=
            'SELECT clave_cuenta '+
            'FROM corporativo.verificacion_telefonica '+
            'WHERE '+
                    'clave_cuenta = "'+ txtClave_Cuenta.Text +'" AND '+
                    'validada = 1';
        dmModulo_Datos.msqTemporal.Open();
        if dmModulo_Datos.msqTemporal.Eof then begin
            MessageDlg(
                '  !  !  !  !  !    A  T  E  N  C  I  O  N   !  !  !  !  !'+#13+
                '  No puede Correr el 2° Score debido a que'+#13+
                'No Se ha Validado la Verificación Telefonica', mtError, [mbOK], 0);
            Exit;
        end;

        //Verifica si ya se realizo la validacion de la Domiciliaria
        dmModulo_Datos.msqTemporal.Sql.Text :=
            'SELECT clave_cuenta '+
            'FROM corporativo.verificacion_domiciliaria '+
            'WHERE '+
                    'clave_cuenta = "'+ txtClave_Cuenta.Text +'" AND '+
                    'tipo = "VALI"';
        dmModulo_Datos.msqTemporal.Open();
        if dmModulo_Datos.msqTemporal.Eof then begin
            MessageDlg(
                '  !  !  !  !  !    A  T  E  N  C  I  O  N   !  !  !  !  !'+#13+
                '  No puede Correr el 2° Score debido a que'+#13+
                'No Se ha Validado la Verificación Domiciliaria', mtError, [mbOK], 0);
            Exit;
        end;
    end;
    calcula_puntaje(2,Sender);
end;


procedure TfrmScoreCard.verificarConsultasExitosasPreviasBuroCredito();
var
claveCuenta : String;
version : String;
score : Integer;
edad : Integer;
montoMaximo : Double;
resultado : String;
tasaInteresAnual : Double;
porcentajeIngresoMensual : Double;
riesgo : Double;
financiero : Double;
capacidadPago : Double;
ingresoMensual : Double;
pagosMensualesIB : Double;
hit : Boolean;
textoHit : String;
sucursal : String;
    function obtenerVersion(cuenta : String; query : TZMySqlquery): String;
    begin
        query.Sql.Text :=
            'SELECT MAX(version) AS version '+
            'FROM EVALUA_segmento_PN '+
            'WHERE clave_cuenta = "'+cuenta+'"';
        query.Open();
        result := query.FieldByName('version').AsString;
    end;
    function obtenerSucursal(cuenta : String; query : TZMySqlquery): String;
    begin
        query.Sql.Text :=
            'SELECT CONCAT("T",LEFT(cuenta_origen,3)) AS sucursal '+
            'FROM corporativo.cuentas '+
            'WHERE clave_cuenta = "'+Trim(cuenta)+'"';
        query.Open();
        result := query.FieldByName('sucursal').AsString;
    end;
    procedure negativoObtenerMontoYResultado(suc : String; edad : Integer; var monto : Double; var resul : String; query : TZMySqlquery);
    begin
        query.Sql.Text :=
            'SELECT '+
                    'monto_maximo,'+
                    'resultado '+
            'FROM EVALUA_reglas_capacidad '+
            'WHERE '+
                    'tipo_regla = "EDAD" AND '+
                    'param1 = "'+IntToStr(edad)+'" AND '+
                    'sucursal = "'+suc+'"';
        query.Open();
        if not query.IsEmpty() then begin
            monto := query.FieldByName('monto_maximo').AsFloat;
            resul := query.FieldByName('resultado').AsString;
            Exit;
        end;

        query.Sql.Text :=
            'SELECT '+
                    'monto_maximo,'+
                    'resultado '+
            'FROM EVALUA_reglas_capacidad '+
            'WHERE '+
                    'tipo_regla = "EDAD" AND '+
                    'param1 = "'+IntToStr(edad)+'" AND '+
                    'sucursal = "*"';
        query.Open();
        if not query.IsEmpty() then begin
            monto := query.FieldByName('monto_maximo').AsFloat;
            resul := query.FieldByName('resultado').AsString;
            Exit;
        end;

        monto := 0;
        resul := 'RECHAZADO';
    end;
    procedure rangoObtenerMontoYResultado(suc : String; sc : Integer; var monto : Double; var resul : String; query : TZMySqlquery);
    var
    i : String; // inicio
    t : String; // termino
    begin
        query.Sql.Text := // Buscar reglas para la sucursal
            'SELECT '+
                    'CAST(param1 AS SIGNED) AS _param1,'+
                    'param1,'+
                    'param2,'+
                    'monto_maximo,'+
                    'resultado '+
            'FROM EVALUA_reglas_capacidad '+
            'WHERE '+
                    'tipo_regla = "RANGO" AND '+
                    'sucursal = "'+suc+'" '+
            'ORDER BY _param1 ASC';
        query.Open();
        while not query.Eof do begin
            i := Trim(query.FieldByName('param1').AsString);
            t := Trim(query.FieldByName('param2').AsString);
            if (i = '') and (t <> '') then begin // termino
                if sc < StrToInt(t) then begin
                    monto := query.FieldByName('monto_maximo').AsFloat;
                    resul := query.FieldByName('resultado').AsString;
                    Exit;
                end;
            end else if (i <> '') and (t = '') then begin // inicio
                if sc > StrToInt(i) then begin
                    monto := query.FieldByName('monto_maximo').AsFloat;
                    resul := query.FieldByName('resultado').AsString;
                    Exit;
                end;
            end else if (i <> '') and (t <> '') then begin // inicio y termino
                if (sc >= StrToInt(i)) and (sc <= StrToInt(t)) then begin
                    monto := query.FieldByName('monto_maximo').AsFloat;
                    resul := query.FieldByName('resultado').AsString;
                    Exit;
                end;
            end;
            query.Next();
        end;

        query.Sql.Text := // Buscar reglas generales
            'SELECT '+
                    'CAST(param1 AS SIGNED) AS _param1,'+
                    'param1,'+
                    'param2,'+
                    'monto_maximo,'+
                    'resultado '+
            'FROM EVALUA_reglas_capacidad '+
            'WHERE '+
                    'tipo_regla = "RANGO" AND '+
                    'sucursal = "*" '+
            'ORDER BY _param1 ASC';
        query.Open();
        while not query.Eof do begin
            i := Trim(query.FieldByName('param1').AsString);
            t := Trim(query.FieldByName('param2').AsString);
            if (i = '') and (t <> '') then begin // termino
                if sc < StrToInt(t) then begin
                    monto := query.FieldByName('monto_maximo').AsFloat;
                    resul := query.FieldByName('resultado').AsString;
                    Exit;
                end;
            end else if (i <> '') and (t = '') then begin // inicio
                if sc > StrToInt(i) then begin
                    monto := query.FieldByName('monto_maximo').AsFloat;
                    resul := query.FieldByName('resultado').AsString;
                    Exit;
                end;
            end else if (i <> '') and (t <> '') then begin // inicio y termino
                if (sc >= StrToInt(i)) and (sc <= StrToInt(t)) then begin
                    monto := query.FieldByName('monto_maximo').AsFloat;
                    resul := query.FieldByName('resultado').AsString;
                    Exit;
                end;
            end;
            query.Next();
        end;

        // Caso default
        monto := 0;
        resul := 'RECHAZADO';
    end;
    procedure mostrarCapacidadDePago(cap : Double; res : String; sc : Integer);
    begin
        ceCap_Pag_Quin.Value := cap;
        if cap < 0 then
            ceCap_Pag_Men.Value := cap
        else
            ceCap_Pag_Men.Value := cap * 2;

        cmbStatus2.ItemIndex := cmbStatus2.Items.IndexOf(res);
        lbCalificacion.Caption := IntToStr(sc) + ' Pts.';
    end;
    function obtenerIngresoMensual() : Double;
    begin
        result := txtSueldo_cliente.Value;
    end;
    function obtenerScore(cuenta : String; ver : String; query : TZMySqlQuery): Integer;
    var
    tmp : String;
    begin
        query.Sql.Text :=
            'SELECT SC01 AS valor '+
            'FROM EVALUA_segmento_SC '+
            'WHERE '+
                    'clave_cuenta = "'+cuenta+'" AND '+
                    'version = "'+ver+'"';
        query.Open();
        tmp := Trim(query.FieldByName('valor').AsString);
        try
            result := StrToInt(tmp);
        except
            result := -1;
        end;
    end;
    function obtenerPorcentajeIngresoMensual(suc : String; query : TZMySqlQuery) : Double;
    begin
        query.Sql.Text :=
            'SELECT param1 '+
            'FROM EVALUA_reglas_capacidad '+
            'WHERE '+
                    'tipo_regla = "INGRESO_MENSUAL" AND '+
                    'sucursal = "'+suc+'"';
        query.Open();
        if not query.IsEmpty() then begin
            result := query.FieldByName('param1').AsFloat/100;
            Exit;
        end;

        query.Sql.Text :=
            'SELECT param1 '+
            'FROM EVALUA_reglas_capacidad '+
            'WHERE '+
                    'tipo_regla = "INGRESO_MENSUAL" AND '+
                    'sucursal = "*"';
        query.Open();
        if not query.IsEmpty() then begin
            result := query.FieldByName('param1').AsFloat/100;
            Exit;
        end;

        result := 0.30;
    end;
    function obtenerTasaInteresAnualizada(suc : String; query : TZMySqlQuery) : Double;
    begin
        query.Sql.Text :=
            'SELECT param1 '+
            'FROM EVALUA_reglas_capacidad '+
            'WHERE '+
                    'tipo_regla = "TASA_INTERES" AND '+
                    'sucursal = "'+suc+'"';
        query.Open();
        if not query.IsEmpty() then begin
            result := query.FieldByName('param1').AsFloat/100;
            Exit;
        end;

        query.Sql.Text :=
            'SELECT param1 '+
            'FROM EVALUA_reglas_capacidad '+
            'WHERE '+
                    'tipo_regla = "TASA_INTERES" AND '+
                    'sucursal = "*"';
        query.Open();
        if not query.IsEmpty() then begin
            result := query.FieldByName('param1').AsFloat/100;
            Exit;
        end;

        result := 0.60;
    end;
    function obtenerEdad(fechaActual : TDate): Integer;
    begin
        result := YearsBetween(fechaActual,deNacimiento_Cliente.Date);
    end;
    function tieneHit(cuenta : String; ver : String; query : TZMySqlQuery): Boolean;
    begin
        query.Sql.Text :=
            'SELECT COUNT(clave_cuenta) AS cantidad '+
            'FROM EVALUA_segmento_TL '+
            'WHERE '+
                    'clave_cuenta = "'+cuenta+'" AND '+
                    'version = "'+ver+'"';
        query.Open();
        result := query.FieldByName('cantidad').AsInteger > 0;
    end;
    function obtenerPagosMensuales(cuenta : String; ver : String; query : TZMySqlQuery): Double;
    var
    totalPagos : Double;
    frecPago : String;
    montoPagar : Double;
    saldoActual : Double;
    tmp : String;
    begin
        totalPagos := 0;
        query.Sql.Text :=
            'SELECT '+
                    'TL22 AS saldo_actual,'+
                    'TL12 AS monto_pagar,'+
                    'TL11 AS frecuencia_pagos '+
            'FROM EVALUA_segmento_TL '+
            'WHERE '+
                    'clave_cuenta = "'+cuenta+'" AND '+
                    'version = "'+ver+'"';
        query.Open();
        while not query.Eof do begin
            tmp := Trim(query.FieldByName('saldo_actual').AsString);
            if tmp = '' then begin
                saldoActual := 0
            end else begin
                tmp := StringReplace(tmp,'$','',[rfReplaceAll]);
                tmp := StringReplace(tmp,'+','',[rfReplaceAll]);
                saldoActual := StrToInt(tmp);
            end;
            if saldoActual <= 0 then begin
                query.Next();
                Continue;
            end;
            montoPagar := query.FieldByName('monto_pagar').AsFloat;
            frecPago := Trim(query.FieldByName('frecuencia_pagos').AsString);
            if frecPago = 'B' then begin //BIMESTRAL
                montoPagar := montoPagar / 2;
            end else if frecPago = 'D' then begin //DIARIO
                montoPagar := montoPagar * 30.4;
            end else if frecPago = 'H' then begin //SEMESTRAL
                montoPagar := montoPagar / 6;
            end else if frecPago = 'K' then begin //CATORCENAL
                montoPagar := (montoPagar/28) * 30.4;
            end else if frecPago = 'M' then begin //MENSUAL
                montoPagar := montoPagar;
            end else if frecPago = 'P' then begin //DEDUCCION DEL SALARIO
                MessageDlg(
                    'SE HA DETECTADO UNA CUENTA CON FORMA DE PAGO:'+#13+
                    '"P" (DEDUCCIÓN DEL SALARIO), SE IGNORARÁ EN EL CÁLCULO', mtWarning, [mbOK], 0);
                query.Next();
                Continue;
            end else if frecPago = 'Q' then begin //TRIMESTRAL
                montoPagar := montoPagar / 3;
            end else if frecPago = 'S' then begin //QUINCENAL
                montoPagar := montoPagar * 2;
            end else if frecPago = 'V' then begin //VARIABLE
                MessageDlg(
                    'SE HA DETECTADO UNA CUENTA CON FORMA DE PAGO:'+#13+
                    '"V" (VARIABLE), SE IGNORARÁ EN EL CÁLCULO', mtWarning, [mbOK], 0);
                query.Next();
                Continue;
            end else if frecPago = 'W' then begin //SEMANAL
                montoPagar := (montoPagar/7) * 30.4;
            end else if frecPago = 'Y' then begin //ANUAL
                montoPagar := montoPagar/12;
            end else if frecPago = 'Z' then begin //PAGO MINIMO PARA CUENTAS REVOLVENTES
                MessageDlg(
                    'SE HA DETECTADO UNA CUENTA CON FORMA DE PAGO:'+#13+
                    '"Z" (PAGO MÍNIMO), SE IGNORARÁ EN EL CÁLCULO', mtWarning, [mbOK], 0);
                query.Next();
                Continue;
            end;

            if saldoActual < montoPagar then
                totalPagos := totalPagos + saldoActual
            else
                totalPagos := totalPagos + montoPagar;
            query.Next();
        end;
        result := totalPagos;
    end;
begin
    claveCuenta := Trim(txtClave_Cuenta.Text);
    // Verificar si se han realizado consultas previas al buro de
    // credito (los resultados de estas consultas se almacenan en las
    // tablas que inician con "EVALUA_"
    dmModulo_datos.msqTemporal.Sql.Text :=
        'SELECT clave_cuenta '+
        'FROM corporativo.EVALUA_segmento_PN '+
        'WHERE clave_cuenta = "'+claveCuenta+'"';
    dmModulo_datos.msqTemporal.Open();
    if dmModulo_datos.msqTemporal.IsEmpty() then begin
        ButtonResultadoBuro.Enabled := False;
        ButtonRecalcular.Enabled := True;
    end else begin
        ButtonResultadoBuro.Enabled := True;

        sucursal := obtenerSucursal(claveCuenta, dmModulo_datos.msqTemporal);
        tasaInteresAnual := obtenerTasaInteresAnualizada(sucursal, dmModulo_datos.msqTemporal);
        porcentajeIngresoMensual := obtenerPorcentajeIngresoMensual(sucursal, dmModulo_datos.msqTemporal);
        ingresoMensual := obtenerIngresoMensual();
        edad := obtenerEdad(frmMain.dFecha_server);

        version := obtenerVersion(claveCuenta, dmModulo_datos.msqTemporal);
        score := obtenerScore(claveCuenta, version, dmModulo_datos.msqTemporal);

        // por lo general la variable "pagoMensualDeCliente" contiene el valor
        // -1, a menos que se haya especificado un monto diferente utilizando
        // para ello el boton ButtonRecalcular (Re-calcular)
        if pagoMensualDeCliente = -1 then
            pagosMensualesIB := obtenerPagosMensuales(claveCuenta, version, dmModulo_datos.msqTemporal)
        else
            pagosMensualesIB := pagoMensualDeCliente;
        hit := tieneHit(claveCuenta, version, dmModulo_datos.msqTemporal);

        montoMaximo := 0;
        resultado := '';

        if score < 0 then begin
            if hit or (edad > 22) then begin
                negativoObtenerMontoYResultado(sucursal, 22, montoMaximo, resultado, dmModulo_datos.msqTemporal)
            end else if hit and (edad < 23) then begin
                negativoObtenerMontoYResultado(sucursal, 23, montoMaximo, resultado, dmModulo_datos.msqTemporal)
            end;
        end else begin
            rangoObtenerMontoYResultado(sucursal, score, montoMaximo, resultado, dmModulo_datos.msqTemporal);
        end;

        riesgo := (montoMaximo*(1+tasaInteresAnual))/24;
        financiero := ((ingresoMensual*porcentajeIngresoMensual) - pagosMensualesIB)/2;

        if riesgo < financiero then
            capacidadPago := riesgo
        else
            capacidadPago := financiero;

        if capacidadPago <= 0 then
            resultado := 'RECHAZADO';


        calcula_puntaje(2, Nil, score, capacidadPago, montoMaximo, resultado);

        //mostrarCapacidadDePago(capacidadPago, resultado, score);
        //fgResumen.Enabled := iNivel >= 3;

        ButtonRecalcular.Enabled := True;

        if hit then
            textoHit := 'Si'
        else
            textoHit := 'No';
        MessageDlg(
            'VENTANA PARA VALIDACION DE MODULO'+#13+#13+
            'tasa de interes anual: '+FloatToStr(tasaInteresAnual)+#13+
            'porcentaje de ingreso mensual: '+FloattoStr(porcentajeIngresoMensual)+#13+
            'score: '+IntToStr(score)+#13+
            'edad: '+IntToStr(edad)+#13+
            'ingreso mensual: '+FloatToStr(ingresoMensual)+#13+
            'pagos mensuales ib: '+FloatToStr(pagosMensualesIB)+#13+
            'hit: '+textoHit+#13+
            'riesgo: '+FloatToStr(riesgo)+#13+
            'financiero: '+FloatToStr(financiero)+#13+
            'resultado: '+resultado
            , mtInformation, [mbOK], 0);
    end;
end;


procedure TfrmScoreCard.calcula_puntaje(
        n: Integer;
        quien : TObject;
        score : Integer = 0;
        capacidadPago : Double = 0;
        montoMaximo : Double = 0;
        resultado : String = '');
var
ptelefonos : Integer;
preferencias : Integer;
sql : String;
edad : Double;
query : TZMySqlQuery;
begin
    query := dmModulo_datos.msqTemporal;

    if dateActual = 0 then begin
        query.Sql.Text := 'SELECT CURDATE() AS fecha_actual';
        query.Open();
        dateActual := query.FieldByName('fecha_actual').AsDateTime;
    end;

    edad := (dateActual - deNacimiento_Cliente.Date)/365.23;

    if n = 1 then begin //es el primer score???
        if (edad < 18) or (edad > 70) then begin
            messagebox(handle, 'El cliente no Tiene la edad requerida.','Atención...',48);
            cmbStatus2.ItemIndex := 9;
            Exit;
        end;
        if (txtMeses_Trabajo_Cliente.Value < 6) and (cTipo.ItemIndex <> 2) then begin
            messagebox(handle, 'El cliente no Tiene la Antiguedad Requerida en el Trabajo.','Atención...',48);
            cmbStatus2.ItemIndex := 9;
            Exit;
        end;
        if txtMeses_Poblacion_Cliente.Value < 6 then begin
            messagebox(handle, 'El cliente no Tiene la Antiguedad Requerida en la Población.','Atención...',48);
            cmbStatus2.ItemIndex := 9;
            Exit;
        end;
        if txtSueldo_Cliente.Value < 2000 then begin
            messagebox(handle, 'El cliente no Tiene el Ingreso Minimo Requerido.','Atención...',48);
            cmbStatus2.ItemIndex := 9;
            Exit;
        end;
    end;
    
    if (n = 2) and (quien <> nil) then begin
        if ((edad < 18) or (edad > 70)) and (trim(txtNombre_Aval.Text) = '') then begin
            MessageBox(handle,
                'El cliente no Tiene la edad requerida.'+#13#10+
                '  Se requiere un Aval para Continuar. ','Atención...',48);
            cmbStatus2.ItemIndex := 9;
            Exit;
        end;
    end;

    cmdDomiciliaria.Enabled := True;
    cmdTelefonica.Enabled := True;

    if (cTipo.ItemIndex <> 2) and (n = 2) then begin
        ptelefonos := obtiene_ptelefonos;
        preferencias := obtiene_preferencias(sClave_Cuenta);
    end else if cTipo.ItemIndex = 2 then begin //Es CrediBips
        pTelefonos := 15;
        preferencias := 10;
        cmdDomiciliaria.Enabled := False;
        cmdTelefonica.Enabled := False;
    end else begin //Es Primer Score de Cliente
        pTelefonos := obtiene_ptelefonos;
        pReferencias := 10;
        cmdDomiciliaria.Enabled := False;
        cmdTelefonica.Enabled := False;
    end;

    lbQuien.Caption := 'CLIENTE';
    lbCalificacion.Caption := '0';
    ceCap_Pag_Men.Value := 0;
    ceCap_Pag_Quin.Value := 0;
    mdLineas.EmptyTable;

    if (n = 2) and
        (preferencias = 0) and
        (quien <> Nil) and
        (lbStatus.Caption <> 'ACTIVADO') and
        (lbStatus.Caption <> 'RECHAZADO') then begin

        cmbStatus2.ItemIndex := cmbStatus2.Items.IndexOf('RECHAZADO');

        //Procede a Rechazar la Cuenta.
        //Inserta el registro en la tabla Historial_Cuentas_Rechazadas
        query.Sql.Text :=
            'INSERT INTO corporativo.historial_cuentas_rechazadas SET '+
            'clave_cuenta = "'+ txtClave_Cuenta.Text +'",'+
            'causa_rechazo = "RE02",'+
            'fecha = CURDATE(),'+
            'hora = CURTIME(),'+
            'clave_usuario = "'+ sClave_Usuario +'"';
        query.ExecSql();

        //Actualiza fecha y Causa en Tabla Seguimiento Tarjeta
        query.Sql.Text :=
            'UPDATE corporativo.seguimiento_tarjeta SET '+
            'fecha_rechazada = NOW(),'+
            'causa = "RE02" '+
            'WHERE clave_cuenta = "'+ txtClave_Cuenta.Text +'"';
        query.ExecSql();

        //Actualiza Status de la Cuenta en la tabla Cuentas
        query.Sql.Text :=
            'UPDATE corporativo.cuentas SET '+
            'status = 3,'+
            'fecha_actualizacion = CURDATE(),'+
            'solo_lectura = 1 '+
            'WHERE clave_cuenta = "'+txtClave_cuenta.Text+'"';
        query.ExecSql();

        //Inserta registro en historico cuentas modificadas
        query.Sql.Text :=
            'INSERT INTO corporativo.historial_cuentas_modificadas SET '+
            'id_tipo = 24,'+
            'clave_cuenta = "'+ txtClave_Cuenta.Text +'",'+
            'valor_anterior = "RECHAZA x Malas Referencias",'+
            'valor_nuevo = "RECHAZADO",'+
            'fecha = CURDATE(),'+
            'hora = CURTIME(), '+
            'clave_usuario = "'+ sClave_Usuario +'"';
        query.ExecSql();

        messagebox(handle, 'El cliente es rechazado por Malas Referencias', 'Atención...', 48);
        exit;
    end;

    if (n = 2) and
        (ptelefonos <= 0) and
        (lbStatus.Caption <> 'ACTIVADO') and
        (quien <> Nil) then begin
        messagebox(handle, 'El cliente Solo cuenta con Telefono Móvil.','Atención...',48);
        cmbStatus2.ItemIndex := cmbStatus2.Items.IndexOf('CONDICIONADO');
        if quien = Nil then
            Exit;
    end;

    {sql :=
        'SELECT sum(pe.calificacion + pap.calificacion + pibm.calificacion + '+
        'pat.calificacion + pec.calificacion + pad.calificacion + '+
        'ppr.calificacion + ((pibm.calificacion - pibm.base) * '+
        floattostr(txtDependientes_Cliente.Value)+') + '+
        inttostr(ptelefonos + preferencias)+') total, '+
        'if(sum(pe.calificacion + pap.calificacion + pibm.calificacion + '+
        'pat.calificacion + pec.calificacion + pad.calificacion + '+
        'ppr.calificacion + ((pibm.calificacion - pibm.base) * '+
        floattostr(txtDependientes_Cliente.Value)+') + '+
        inttostr(ptelefonos + preferencias)+') < '+inttostr(40)+', '+
        '"CONDICIONADO","AUTORIZADO") resultado, ifnull('+
        '((pibm.fmin + ((sum(pe.calificacion + pap.calificacion + pibm.calificacion + '+
        ' pat.calificacion + pec.calificacion + pad.calificacion + '+
        'ppr.calificacion + ((pibm.calificacion - pibm.base) * '+
        floattostr(txtDependientes_Cliente.Value)+') + '+
        inttostr(ptelefonos + preferencias)+') - '+inttostr(40)+') * '+
        '((pibm.fmax - pibm.fmin)/pibm.factor))) * '+floattostr(txtSueldo_Cliente.Value)+'),0) cap_pago, '+
        'ifnull((((pibm.fmin + ((sum(pe.calificacion + pap.calificacion + pibm.calificacion + '+
        'pat.calificacion + pec.calificacion + pad.calificacion + '+
        'ppr.calificacion + ((pibm.calificacion - pibm.base) * '+
        floattostr(txtDependientes_Cliente.Value)+') + '+
        inttostr(ptelefonos + preferencias)+') - '+inttostr(40)+') * '+
        '((pibm.fmax - pibm.fmin)/pibm.factor))) * '+floattostr(txtSueldo_Cliente.Value)+')/2),0) '+
        'cap_pago_quincenal, pibm.tmaximo, pibm.tgarantia '+
        'FROM corporativo.puntaje_edad pe '+
                'INNER JOIN corporativo.puntaje_poblacion pap ON '+
                        floattostr(txtMeses_Poblacion_Cliente.Value)+' BETWEEN pap.min AND pap.max '+
                        'AND pap.clave_muebleria = pe.clave_muebleria '+
                'INNER JOIN corporativo.puntaje_ingreso_bmensual pibm ON '+
                        floattostr(txtSueldo_Cliente.Value)+' BETWEEN pibm.min AND pibm.max '+
                        'AND pibm.clave_muebleria = pe.clave_muebleria '+
                'INNER JOIN corporativo.puntaje_ant_trabajo pat ON '+
                        floattostr(txtMeses_Trabajo_Cliente.Value)+' BETWEEN pat.min AND pat.max '+
                        'AND pat.clave_muebleria = pe.clave_muebleria '+
                'INNER JOIN corporativo.puntaje_edo_civil pec ON pec.estado = "'+
                        cmbEstado_Civil_Cliente.Items.Strings[cmbEstado_Civil_Cliente.ItemIndex]+'" '+
                'INNER JOIN corporativo.puntaje_ant_domicilio pad ON '+
                        floattostr(txtMeses_Domicilio_Cliente.Value)+' BETWEEN pad.min and pad.max '+
                        'AND pad.clave_muebleria = pe.clave_muebleria '+
                'INNER JOIN corporativo.puntaje_propiedad ppr ON ppr.tipo = "'+
                        cmbCasa_Cliente.Items.Strings[cmbCasa_Cliente.ItemIndex]+'" '+
                        'AND ppr.clave_muebleria = pe.clave_muebleria '+
        'WHERE '+inttostr(trunc(edad))+' BETWEEN pe.min AND pe.max '+
                'AND pe.clave_muebleria = "'+ sCtaOrigen +'" '+
        'GROUP BY pe.clave_muebleria';
    query.Sql.Text := sql;
    query.Open;
    lbCalificacion.Caption := query.fieldbyname('total').AsString + ' PTOS';

    if ceCap_Pag_Men.Value > -1 then begin
        ceCap_Pag_Men.Value := query.fieldbyname('cap_pago').AsCurrency;
        ceCap_Pag_Quin.Value := query.fieldbyname('cap_pago_quincenal').AsCurrency;
        try
            cap_pago_p.Caption := floattostr(RoundTo((ceCap_Pag_Men.Value / txtSueldo_Cliente.Value) * 100,-2)) + '%';
        except
            cap_pago_p.Caption := '0';
        end;
        ftMaximo := query.fieldbyname('tMaximo').AsCurrency;
        ftGarantia := query.fieldbyname('tGarantia').AsCurrency;
    end;}

    ftMaximo := montoMaximo;
    ftGarantia := 8000;
    if capacidadPago >= 0 then begin
        ceCap_Pag_Men.Value := capacidadPago * 2;
        ceCap_Pag_Quin.Value := capacidadPago;
        try
            cap_pago_p.Caption := FloatToStr(RoundTo(
                (ceCap_Pag_Men.Value / txtSueldo_Cliente.Value) * 100,-2)) + '%';
        except
            cap_pago_p.Caption := '0';
        end;
    end else begin
        ceCap_Pag_Men.Value := 0;
        ceCap_Pag_Quin.Value := 0;
        cap_pago_p.Caption := '0';
    end;

    llena_lineas(ceCap_Pag_Men.Value, ftGarantia, ftMaximo);

    fgResumen.Enabled :=
        ((cmbStatus2.Text = 'AUTORIZADO') and (lbStatus.Caption <> 'RECHAZADO')) or
        (iNivel > 1);
    cmbStatus2.ItemIndex := cmbStatus2.Items.IndexOf(resultado);
    cmbStatus2.Enabled := iNivel > 3; //Solo Niveles > a 3
    cmdAplicar.Enabled :=
        (lbStatus.Caption = 'ACTIVADO') or
        (cmbStatus2.Text = 'AUTORIZADO') or
        (lbStatus.Caption = 'RECHAZADO');

    case n of
    1 :
        begin //Primer score
            if (cTipo.ItemIndex <> 2) then begin //No es CrediBips
                if (cmbStatus2.Text = 'AUTORIZADO') then
                    cmbStatus2.ItemIndex := 0
                else
                    cmbStatus2.ItemIndex := 9;
            end else begin  //Es CrediBips.
                cmbStatus2.ItemIndex := 9;
                cmbStatus2.Enabled := False;
            end;
        end;
    2 :
        begin //Segundo Score
            if cTipo.ItemIndex <> 2 then begin //No es CrediBips
                if quien = nil then begin ///solo simula
                    if cmbStatus2.Text = 'AUTORIZADO' then begin
                        if lbStatus.Caption = 'ACTIVADO' then
                            cmbStatus2.ItemIndex := cmbStatus2.Items.IndexOf('ACTIVADO')
                        else if lbStatus.Caption = 'CONDICIONADO' then
                            cmbStatus2.ItemIndex := cmbStatus2.Items.IndexOf('PRE-AUTORIZADO')
                        else
                            cmbStatus2.ItemIndex := cmbStatus2.Items.IndexOf(lbStatus.Caption);
                    end else
                        cmbStatus2.ItemIndex := cmbStatus2.Items.IndexOf('CONDICIONADO');
                end else begin //dio clic en el boton Score
                    if cmbStatus2.Text = 'AUTORIZADO' then begin
                        if lbStatus.Caption = 'ACTIVADO' then //Si esta Activado, No cambia Status
                            cmbStatus2.ItemIndex := cmbStatus2.Items.IndexOf('ACTIVADO')
                        else if lbStatus.Caption = 'INVESTIGACION' then
                            cmbStatus2.ItemIndex := cmbStatus2.Items.IndexOf('AUTORIZADO')
                        else
                            cmbStatus2.ItemIndex := cmbStatus2.Items.IndexOf(lbStatus.Caption);
                    end else
                        cmbStatus2.ItemIndex := cmbStatus2.Items.IndexOf('RECHAZADO');

                    //Se actualiza el Status de la Cuenta.
                    if iNivel = 2 then begin  // Cambia Status de Cuenta
                        query.Sql.Text :=
                            'UPDATE cuentas SET '+
                            'status = "'+ inttostr(cmbStatus2.ItemIndex) +'" '+
                            'WHERE clave_cuenta = "'+ txtClave_Cuenta.Text +'"';
                        query.ExecSql();

                        //Inserta Registro en Historial Cuentas Modificadas
                        query.Sql.Text :=
                            'INSERT INTO corporativo.historial_cuentas_modificadas SET '+
                            'id_tipo = "24", '+
                            'clave_cuenta = "'+ txtClave_cuenta.Text +'", '+
                            'valor_anterior = "'+ lbStatus.Caption +'", '+
                            'valor_nuevo = "'+ cmbStatus2.Text +'", '+
                            'fecha = CURDATE(), '+
                            'hora = CURTIME(), '+
                            'clave_usuario = "'+ sClave_Usuario +'"';
                        query.ExecSql();
                        lbStatus.Caption := cmbStatus2.Text;
                        cmdAplicar.Click; //Si es un JUF da clic en Aplicar
                    end;

                    //Si esta Autorizada se almacena la fecha para pago
                    if cmbStatus2.Text = 'AUTORIZADO' then begin
                        // Establece fecha de autorizada
                        query.Sql.Text :=
                            'UPDATE cuentas SET '+
                            'fecha_autorizada = curdate() '+
                            'WHERE '+
                                    'clave_cuenta = "'+ sClave_cuenta +'" AND '+
                                    'fecha_autorizada = "0000-00-00"';
                        query.ExecSql;

                        query.Sql.Text :=
                            'SELECT clave_cuenta '+
                            'FROM corporativo.seguimiento_tarjeta '+
                            'WHERE clave_cuenta = "'+ sClave_Cuenta +'"';
                        query.Open;

                        if query.Eof then
                            query.Sql.Text :=
                                'INSERT INTO seguimiento_tarjeta SET '+
                                'clave_cuenta = "'+ sClave_cuenta +'",'+
                                'fecha_pago = CURDATE(),'+
                                'fecha_actualizacion = NOW()'
                        else
                            query.Sql.Text :=
                                'UPDATE seguimiento_tarjeta SET '+
                                'fecha_pago = curdate(),'+
                                'fecha_actualizacion = NOW() '+
                                'WHERE '+
                                        'clave_cuenta = "'+ sClave_cuenta +'" AND '+
                                        'fecha_pago = "0000-00-00"';
                        query.ExecSql;
                    end;
                end;
            end else begin //Es CrediBips
                cmbStatus2.Enabled := iNivel > 3;
                cmbStatus2.ItemIndex := cmbStatus2.Items.IndexOf('AUTORIZADO');
                if lbStatus.Caption = 'ACTIVADO' then //Ya esta Activada la Tarjeta???
                    cmbStatus2.ItemIndex := cmbStatus2.Items.IndexOf('ACTIVADO');
            end;

            asigna_valor(mdCampos, 24, cmbStatus2.Text, 'valor_nuevo');

            //si dio clic en el boton Score, Bloquea la cuenta para solo lectura
            if (quien <> nil) and
                (TFlatButton(quien).Name = 'cmdActualiza_Score') then begin
                sql :=
                    'UPDATE cuentas SET '+
                    'solo_lectura = 1 '+
                    'WHERE clave_cuenta = "'+sClave_Cuenta+'"';
                query.Sql.Text := sql;
                query.ExecSql();
            end;
        end;
    end;
end;

procedure TfrmScoreCard.llena_lineas(cap_pag, minimo, maximo: Currency);
begin
    msqPlazos.Sql.Text :=
        'SELECT plazo_tope '+
        'FROM mueblerias '+
        'WHERE clave_muebleria = "'+frmMain.sClave_muebleria+'"';
    msqPlazos.Open();
    plazo_tope := msqPlazos.fieldbyname('plazo_tope').AsInteger;

    mdLineas.EmptyTable();
    msqPlazos.Sql.Text :=
        'SELECT meses '+
        'FROM pcredito '+
        'WHERE '+
                'meses > 3 AND '+
                'meses <= '+IntToStr(plazo_tope)+' '+
        'GROUP BY meses';
    msqPlazos.Open();
    while not msqPlazos.Eof do begin
        mdLineas.Append;
        mdLineas['plazo'] := msqPlazos.FieldByName('meses').AsString+ ' Meses';

        if (msqPlazos.FieldByName('meses').AsInteger * cap_pag) < maximo then
            mdLineas['linea_cred'] := msqPlazos.FieldByName('meses').AsInteger * cap_pag
        else
            mdLineas['linea_cred'] := Maximo;
            
        mdLineas.Post();
        msqPlazos.Next();
    end;
end;

function TfrmScoreCard.obtiene_preferencias(sClave : String): integer;
var tsip, tsi : Integer;
begin
 tsi := 0;
 tsip := 0;
 if sClave = '' then result := 0
 else
 begin
  with dmModulo_datos do
  begin
   msqTemporal.Sql.Text := 'SELECT recomienda, '+
         'if(parentesco in ("PA","HI","FA","HE"), 3,2) puntos '+
         'FROM corporativo.referencias_personales '+
         'WHERE clave_cuenta = "'+ sClave +'" AND recomienda is not null';
   msqTemporal.Open;
   while not msqTemporal.Eof do
   begin
    if msqTemporal.FieldByName('recomienda').AsInteger = 1 then
    begin //Si lo recomienda
     tsip := tsip + msqTemporal.FieldByName('puntos').AsInteger;
     tsi := tsi + 1;
    end;
    msqTemporal.Next;
   end;
   if msqTemporal.RecordCount > 0 then
   begin
    if ((tsi / msqTemporal.RecordCount) * 10) >= 5 then result := tsip //Si lo recomiendan
    else result := 0; //Es rechazado por malas referencias
   end else result := -1; //No se ha realizado la verificacion telefonica
  end;
 end;
end;

function TfrmScoreCard.obtiene_ptelefonos: integer;
var
 itel, iFijo, iMovil, iTrabajo : Integer;
begin
 with dmModulo_datos do
 begin
  itel := 0;
  msqTemporal.Sql.Text := 'SELECT tipo, calificacion FROM puntaje_telefono_referencias '+
                           'WHERE id in (2,1,3)';
  msqTemporal.Open;
  iFijo := msqTemporal.FieldByName('calificacion').AsInteger;
  msqTemporal.Next;
  iMovil := msqTemporal.FieldByName('calificacion').AsInteger;
  msqTemporal.Next;
  iTrabajo := msqTemporal.FieldByName('calificacion').AsInteger;
  msqTemporal.Next;
  if (trim(txtTel_Movil_Cliente.Text) <> '') or (trim(txtTelefono_Cliente.Text) <> '') or
     (trim(txtTel_Trabajo_Cliente.Text) <> '') then
  begin
   if trim(txtTelefono_Cliente.Text) <> '' then iTel := itel + iFijo;
   if trim(txtTel_Movil_Cliente.Text) <> '' then iTel := itel + iMovil;
   if trim(txtTel_Trabajo_Cliente.Text) <> '' then itel := itel + iTrabajo;
   result := itel;
   end else result := -10;
   if (txtClave_Cuenta.Text <> '') then
   begin
    msqTemporal.Sql.Text := 'SELECT telefonos_confirmados puntos '+
                            'FROM corporativo.cuentas '+
                            'WHERE clave_cuenta = "'+ sClave_Cuenta +'"';
    msqTemporal.Open;
    if msqTemporal.FieldByName('puntos').AsInteger > 0 then
    begin
     case msqTemporal.FieldByName('puntos').AsInteger of
       1,2,4 : if trim(txtTel_Movil_Cliente.Text) = '' then result := 5;
       3,5,6 : result := 10;
       7 : result := 15;
     end;
    end;
  end;
 end;
end;

function TfrmScoreCard.obtiene_ptelefonos_aval: integer;
var itel : Integer;
begin
   itel := 0;
   if (trim(txtTelefonoM_Aval.Text) <> '') and (trim(txtTelefonoF_Aval.Text) = '') and
      (trim(txtTel_Trabajo_Aval.Text) = '') then
      itel := -15;
   if (trim(txtTelefonoM_Aval.Text) <> '') or (trim(txtTelefonoF_Aval.Text) <> '') or
      (trim(txtTel_Trabajo_Aval.Text) <> '') then
   begin
    cmdTelefonica.Enabled := True;
    if trim(txtTelefonoM_Aval.Text) <> '' then iTel := itel + 5;
    if trim(txtTelefonoF_Aval.Text) <> '' then iTel := itel + 5;
    if trim(txtTel_Trabajo_Aval.Text) <> '' then itel := itel + 5;
    result := itel;
   end else result := -10;
   if (txtClave_Cuenta.Text <> '') then
   begin
    with dmModulo_datos do
    begin
     msqTemporal.Sql.Text := 'SELECT telefonos_confirmados puntos '+
                             'FROM corporativo.fiador '+
                             'WHERE clave_fiador = "'+ sClave_Fiador +'"';
     msqTemporal.Open;
     if msqTemporal.FieldByName('puntos').AsInteger > 0 then
     begin
      case msqTemporal.FieldByName('puntos').AsInteger of
        1,2,4 : if trim(txtTelefonoM_Aval.Text) = '' then result := 5;
        3,5,6 : result := 10;
        7 : result := 15;
      end;
     end;
    end;
   end;
end;

function TfrmScoreCard.puntaje_aval : integer;
var sql : string;
    ptelefonos, edad, preferencias : integer;
begin
   limpia_resumen;
   edad := YearsBetween(date, deNacimiento_Aval.Date);
   if (edad < 18) or (edad > 70) then begin
      messagebox(handle, 'El Aval no Tiene la edad requerida.','Atención...',48);
      cmbStatus2.ItemIndex := cmbStatus2.Items.IndexOf('RECHAZADO');
      Result := 3;
      exit;
   end;
   if (txtMeses_Trabajo_Aval.Value < 6) then begin
      messagebox(handle, 'El Aval no Tiene la Antiguedad Requerida en el Trabajo.','Atención...',48);
      cmbStatus2.ItemIndex := cmbStatus2.Items.IndexOf('RECHAZADO');
      Result := 3;
      exit;
   end;
   if (txtMesesP_Aval.Value < 6) then begin
      messagebox(handle, 'El Aval no Tiene la Antiguedad Requerida en la Población.','Atención...',48);
      cmbStatus2.ItemIndex := cmbStatus2.Items.IndexOf('RECHAZADO');
      Result := 3;
      exit;
   end;
   if (txtSueldo_Aval.Value < 2000) then begin
      messagebox(handle, 'El Aval no Tiene el Ingreso Minimo Requerido.','Atención...',48);
      cmbStatus2.ItemIndex := cmbStatus2.Items.IndexOf('RECHAZADO');
      Result := 3;
      exit;
   end;
   ptelefonos   := obtiene_ptelefonos_aval;
   preferencias := obtiene_preferencias(sClave_fiador);
   lbCalificacion.Caption := '0';
   ceCap_Pag_Men.Value    := 0;
   ceCap_Pag_Quin.Value   := 0;
   mdLineas.EmptyTable;

   if (preferencias = 0) then begin
      messagebox(handle, 'El Aval es rechazado por Malas Referencias', 'Atención...', 48);
      cmbStatus2.ItemIndex := cmbStatus2.Items.IndexOf('RECHAZADO');
      Result := 3;
      exit;
   end;
   if (ptelefonos <= 0) then begin
      messagebox(handle, 'El Aval no cumple con los requisitos Minimos.','Atención...',48);
      cmbStatus2.ItemIndex := cmbStatus2.Items.IndexOf('RECHAZADO');
      Result := 3;
      exit;
   end;
   if preferencias = -1 then preferencias := 0;

   sql := 'SELECT sum(pe.calificacion + pap.calificacion + pibm.calificacion + '+
         'pat.calificacion + pec.calificacion + pad.calificacion + '+
         'ppr.calificacion + ((pibm.calificacion - pibm.base) * '+
         floattostr(txtDependientes_Aval.Value)+') + '+
         IntToStr(preferencias)+') total, '+
         'if(sum(pe.calificacion + pap.calificacion + pibm.calificacion + '+
         'pat.calificacion + pec.calificacion + pad.calificacion + '+
         'ppr.calificacion + ((pibm.calificacion - pibm.base) * '+
         floattostr(txtDependientes_Aval.Value)+') + '+
         IntToStr(preferencias)+') < '+inttostr(40)+', '+
         '"RECHAZADO","AUTORIZADO") resultado, '+
         '((pibm.fmin + ((sum(pe.calificacion + pap.calificacion + pibm.calificacion + '+
         ' pat.calificacion + pec.calificacion + pad.calificacion + '+
         'ppr.calificacion + ((pibm.calificacion - pibm.base) * '+
         floattostr(txtDependientes_Aval.Value)+') + '+
         IntToStr(preferencias)+') - '+inttostr(40)+') * '+
         '((pibm.fmax - pibm.fmin)/pibm.factor))) * '+floattostr(txtSueldo_Aval.Value)+') cap_pago, '+
         '(((pibm.fmin + ((sum(pe.calificacion + pap.calificacion + pibm.calificacion + '+
         'pat.calificacion + pec.calificacion + pad.calificacion + '+
         'ppr.calificacion + ((pibm.calificacion - pibm.base) * '+
         floattostr(txtDependientes_Aval.Value)+') + '+
         IntToStr(preferencias)+') - '+inttostr(40)+') * '+
         '((pibm.fmax - pibm.fmin)/pibm.factor))) * '+floattostr(txtSueldo_Aval.Value)+')/2) '+
         'cap_pago_quincenal, pibm.tmaximo, pibm.tgarantia '+
         'FROM corporativo.puntaje_edad pe '+
         'INNER JOIN corporativo.puntaje_poblacion pap ON '+
         floattostr(txtMesesP_Aval.Value)+' BETWEEN pap.min AND pap.max '+
         'AND pap.clave_muebleria = pe.clave_muebleria '+
         'INNER JOIN corporativo.puntaje_ingreso_bmensual pibm ON '+
         floattostr(txtSueldo_Aval.Value)+' BETWEEN pibm.min AND pibm.max '+
         'AND pibm.clave_muebleria = pe.clave_muebleria '+
         'INNER JOIN corporativo.puntaje_ant_trabajo pat ON '+
         floattostr(txtMeses_Trabajo_Aval.Value)+' BETWEEN pat.min AND pat.max '+
         'AND pat.clave_muebleria = pe.clave_muebleria '+
         'INNER JOIN corporativo.puntaje_edo_civil pec ON pec.estado = "'+
         cmbEstado_Civil_Aval.Items.Strings[cmbEstado_Civil_Aval.ItemIndex]+'" '+
         'INNER JOIN corporativo.puntaje_ant_domicilio pad ON '+
         floattostr(txtMesesD_Aval.Value)+' BETWEEN pad.min and pad.max '+
         'AND pad.clave_muebleria = pe.clave_muebleria '+
         'INNER JOIN corporativo.puntaje_propiedad ppr ON ppr.tipo = "'+
         cmbCasa_Aval.Items.Strings[cmbCasa_Aval.ItemIndex]+'" '+
         'AND ppr.clave_muebleria = pe.clave_muebleria '+
         'WHERE '+inttostr(edad)+' BETWEEN pe.min AND pe.max '+
         'AND pe.clave_muebleria = "'+sCtaOrigen+'" '+
         'GROUP BY pe.clave_muebleria';
   with dmModulo_Datos do begin
      msqTemporal.Filtered := false;
      msqTemporal.Sql.Text := sql;
      msqTemporal.Open;
      lbQuien.Caption        := 'AVAL';
      cmbStatus2.Enabled     := False;
      cmbStatus2.ItemIndex   := cmbStatus2.Items.IndexOf(msqTemporal.fieldbyname('resultado').AsString);
      lbCalificacion.Caption := msqTemporal.fieldbyname('total').AsString + ' PTOS';
      ceCap_Pag_Men.Value    := msqTemporal.fieldbyname('cap_pago').AsCurrency;
      ceCap_Pag_Quin.Value   := msqTemporal.fieldbyname('cap_pago_quincenal').AsCurrency;
      cap_pago_p.Caption     := floattostr(RoundTo((ceCap_Pag_Men.Value / txtSueldo_Aval.Value) * 100,-2)) + '%';
      ftMaximo               := msqTemporal.fieldbyname('tMaximo').AsCurrency;
      ftGarantia             := msqTemporal.fieldbyname('tGarantia').AsCurrency;
      llena_lineas(ceCap_Pag_Men.Value, ftGarantia, ftMaximo);
      Result := cmbStatus2.ItemIndex;
   end;
end;



procedure TfrmScoreCard.cmbStatus2Change(Sender: TObject);
begin
   if cmbStatus2.Text = 'RECHAZADO' then begin
      MessageDlg('! ! ! ! ! A T E N C I O N ! ! ! ! ! '+#13#10+''+#13#10+
                 ' No esta Permitido Rechazar'+#13#10+
                 ' la cuenta desde esta Opción.'+#13#10+
                 ' Para hacerlo, utilice el Botón'+#13#10+
                 'RECHAZAR de esta ventana.', mtError, [mbOK], 0);
      cmbStatus2.ItemIndex := cmbStatus2.Items.IndexOf(lbStatus.Caption);
      Exit;
   end;
   if (iNIvel < 4) and (cmbStatus2.Text = 'INCOBRABLE') then begin
      MessageDlg('!  !  !  !  !   A  T  E  N  C  I  O  N  !  !  !  !  !'+#13#10+
                 'Para cambiar a Status de INCOBRABLE'+#13#10+
                 ' comuniquese con el GTE. Corporativo'+#13#10+
                 ' ó con el Coordinador Administrativo de '+#13#10+
                 '                Servicios Financieros', mtWarning, [mbOK], 0);
      cmbStatus2.ItemIndex := cmbStatus2.Items.IndexOf(lbStatus.Caption);
      Exit;
   end;
   asigna_valor(mdCampos, 24, cmbStatus2.Text, 'valor_nuevo');
end;

procedure TfrmScoreCard.cmdComp_DomiClick(Sender: TObject);
begin
 frmComp_Domi := TfrmComp_Domi.Create(self);
 frmComp_Domi.iLlama := 0;
 frmComp_Domi.ShowModal;
end;

procedure TfrmScoreCard.txtCP_clienteKeyPress(Sender: TObject;
  var Key: Char);
begin
   if (Key = #13) and (Length(txtCP_cliente.Text) = 5) then cmdComp_Domi.Click;
end;

procedure TfrmScoreCard.cmdGuardarClick(Sender: TObject);
var sCuentaZ, auxCuenta : string;
begin
   if not cmdGuardar.Visible then exit;
   if not valida_datos then exit;
   cmdGuardar.Enabled:=False;

   if bNuevo then
   begin //Si es nuevo Inserta
      calcula_puntaje(1,sender);
      sCuentaZ := trim(txtClave_Cuenta.Text);

      if not almacena_cliente then exit; //Almacena los datos del Cliente
      auxCuenta := sClave_Cuenta;
      if copy(sCuentaZ,1,1) = 'Z' then
      begin//Cambiar a cuenta T la Z
         dmModulo_Datos.msqTemporal.Sql.Text := 'UPDATE corporativo.conyuge SET '+ //Cambia Conyuge
            'clave_cuenta = "'+txtClave_Cuenta.Text+'" '+
            'WHERE clave_cuenta = "'+sCuentaZ+'"';
         dmModulo_Datos.msqTemporal.ExecSql;
         dmModulo_Datos.msqTemporal.Sql.Text := 'UPDATE corporativo.fiador SET '+  //Cambia Aval
            'clave_cuenta = "'+txtClave_Cuenta.Text+'" '+
            'WHERE clave_cuenta = "'+sCuentaZ+'"';
         dmModulo_Datos.msqTemporal.ExecSql;
      end else begin //Almacena la Información del Conyuge y del Aval
        almacena_conyuge;
        almacena_aval;
      end;
      almacena_fecha_pago(auxCuenta, cmbStatus2.Text);
      txtClave_Cuenta.Text := auxCuenta;
      carga_informacion(auxCuenta);
   end else
    begin //Si ya existe Actualiza.
      calcula_puntaje(2,nil);
      if not actualiza_cliente then exit;
      if not actualiza_conyuge then exit;
      if not actualiza_aval then Exit;
      almacena_fecha_pago(txtClave_Cuenta.Text, cmbStatus2.Text);
      guarda_modificaciones(mdCampos, txtClave_Cuenta.Text,1);
   end;
   actualiza_datos_anteriores; //Carga los nuevos valores para el campo valor_anterior

   if bNuevo then
      MessageDlg('     Los Datos fueron '+#13#10+
                 'Almacenados con Exito.', mtInformation, [mbOK], 0)
   else
      MessageDlg('     Los Datos fueron '+#13#10+
                 'Actualizados con Exito.', mtInformation, [mbOK], 0);

   bNuevo := False;
   cmdGuardar.Caption := 'Actualizar';
   cmdGuardar.Enabled := True;
end;

function TfrmScoreCard.valida_datos: Boolean;
var nRef : Integer;
begin
   result := true;
   if trim(txtPagador.Text) = ''then begin
      MessageBox(Handle,'Debe Introducir la Clave del Promotor...','Solicitud de Crédito',MB_ICONERROR);
      jbpCliente.ActivePageIndex := 0;
      txtPagador.SetFocus;
      result := false;
      Exit;
   end;
   if cTipo.Text = '' then begin
      MessageBox(Handle,'Seleccione el Tipo de Crédito...','Solicitud de Crédito',MB_ICONERROR);
      jbpCliente.ActivePageIndex := 0;
      cTipo.SetFocus;
      result := false;
      Exit;
   end;
   if Trim(txtNombre_cliente.Text)=''then begin
      MessageBox(Handle,'Proporcione el Nombre del cliente...','Solicitud de Crédito',MB_ICONERROR);
      jbpCliente.ActivePageIndex := 0;
      txtNombre_cliente.SetFocus;
      result := false;
      Exit;
   end;
   if (trim(txtPaterno_Cliente.Text) = '') and  (trim(txtMaterno_Cliente.Text) = '') then
   begin
      MessageBox(Handle,'Proporcione al menos un Apellido del cliente...','Solicitud de Crédito',MB_ICONERROR);
      jbpCliente.ActivePageIndex := 0;
      txtPaterno_cliente.SetFocus;
      result := false;
      Exit;
   end;
   if (deNacimiento_Cliente.Text = '  /  /    ') then begin
      Messagebox(handle, 'Ingrese la Fecha de Nacimiento del Cliente.','Solicitud de Crédito',MB_ICONERROR);
      jbpCliente.ActivePageIndex := 0;
      deNacimiento_Cliente.SetFocus;
      result := false;
      Exit;
   end;
   if ((deNacimiento_Cliente.Date = -693593) or (deNacimiento_Cliente.Date = 36892)) then
   begin
      MessageBox(Handle,'Proporcione la fecha de Nacimiento del Cliente.','Solicitud de Crédito',MB_ICONERROR);
      jbpCliente.ActivePageIndex := 0;
      deNacimiento_Cliente.SetFocus;
      result := false;
      Exit;
   end;
   if (trim(txtNombre_Aval.Text) <> '') then
   begin
    if (trim(txtPaterno_Aval.Text) = '') and (trim(txtMaterno_Aval.Text) = '') then
    begin
     MessageBox(Handle,'Proporcione al menos un Apellido del Aval...','Solicitud de Crédito',MB_ICONERROR);
     jbpCliente.ActivePageIndex := 2;
     txtPaterno_Aval.SetFocus;
     result := false;
     Exit;
    end;
   end;
   if (trim(txtNombre_Aval.Text) <> '') then begin
      if (deNacimiento_Aval.Text = '  /  /    ') then begin
         Messagebox(handle, 'Ingrese la Fecha de Nacimiento del Aval.','Solicitud de Crédito',MB_ICONERROR);
         jbpCliente.ActivePageIndex := 2;
         deNacimiento_Aval.SetFocus;
         result := false;
         Exit;
      end;
   end;
   if ((deNacimiento_Aval.Date = -693593) or
      (deNacimiento_Aval.Date = 36892)) then begin
      MessageBox(Handle,'Proporcione la fecha de Nacimiento del Aval.','Solicitud de Crédito',MB_ICONERROR);
      jbpCliente.ActivePageIndex := 2;
      deNacimiento_Aval.SetFocus;
      result := false;
      Exit;
   end;
   if (cmbCasa_Cliente.ItemIndex < 1) then begin
      MessageBox(Handle,'Proporcione el Tipo de Casa de Cliente...','Solicitud de Crédito',MB_ICONERROR);
      jbpCliente.ActivePageIndex := 0;
      jbpExtras_Cliente.ActivePageIndex := 0;
      cmbCasa_Cliente.SetFocus;
      result := false;
      Exit;
   end;
   if (cmbEstado_Civil_Cliente.ItemIndex < 1) then begin
      MessageBox(handle,'Debe indicar el Estado Civil del Cliente.','Solicitud de Crédito',MB_ICONERROR);
      jbpCliente.ActivePageIndex := 0;
      cmbEstado_Civil_Cliente.SetFocus;
      result := false;
      Exit;
   end;
   if (trim(txtNombre_Aval.Text) <> '') then begin
      if (cmbEstado_Civil_Aval.ItemIndex < 1) then begin
         MessageBox(handle,'Debe indicar el Estado Civil del Aval.','Solicitud de Crédito',MB_ICONERROR);
         jbpCliente.ActivePageIndex := 2;
         cmbEstado_Civil_Aval.SetFocus;
         result := false;
         Exit;
      end;
   end;
   if (trim(txtTel_Movil_Cliente.Text) <> '') then begin
      if (length(trim(txtTel_Movil_Cliente.Text)) < 10) then begin
         MessageBox(Handle,'Verifique el Telefono Celular del Cliente...','Solicitud de Crédito',MB_ICONERROR);
         jbpCliente.ActivePageIndex := 0;
         txtTel_Movil_Cliente.SetFocus;
         result := false;
         Exit;
      end;
   end;
   if (Trim(txtTelefono_Cliente.Text) = '') then
   begin
    MessageBox(Handle,'Proporcione el Telefono Fijo del Cliente...','Solicitud de Crédito',MB_ICONERROR);
    jbpCliente.ActivePageIndex := 0;
    jbpExtras_Cliente.ActivePageIndex := 0;
    txtTelefono_Cliente.SetFocus;
    result := false;
    Exit;
   end;
   if (trim(txtTelefono_Cliente.Text) <> '') then begin
      if (length(trim(txtTelefono_Cliente.Text)) < 10) then begin
         MessageBox(Handle,'Verifique el Telefono Fijo del Cliente...','Solicitud de Crédito',MB_ICONERROR);
         jbpCliente.ActivePageIndex := 0;
         jbpExtras_Cliente.ActivePageIndex := 0;
         txtTelefono_Cliente.SetFocus;
         result := false;
         Exit;
      end;
   end;

   if (Trim(txtTrabajo_cliente.Text) = '') then
   begin
    MessageBox(Handle,'Verifique Empresa/Oficio del Cliente...','Solicitud de Crédito',MB_ICONERROR);
    jbpCliente.ActivePageIndex := 0;
    jbpExtras_Cliente.ActivePageIndex := 1;
    result := false;
    Exit;
   end;

   if (trim(txtTel_Trabajo_Cliente.Text) <> '') then begin
      if (length(trim(txtTel_Trabajo_Cliente.Text)) < 10) then begin
         MessageBox(Handle,'Verifique el Telefono del Trabajo del Cliente...','Solicitud de Crédito',MB_ICONERROR);
         jbpCliente.ActivePageIndex := 0;
         jbpExtras_Cliente.ActivePageIndex := 1;
         txtTel_Trabajo_Cliente.SetFocus;
         result := false;
         Exit;
      end;
   end;

   //Valida que sean por lo menos 2 referencias
   nRef := 0;
   if (Trim(edNombre_rp1.Text) <> '') then nRef := nRef + 1;
   if (Trim(edNombre_rp2.Text) <> '') then nRef := nRef + 1;
   if (Trim(edNombre_rp3.Text) <> '') then nRef := nRef + 1;
   if (Trim(edNombre_rp4.Text) <> '') then nRef := nRef + 1;
   if nRef < 2 then begin
      MessageBox(Handle,'Debe proporcionar por lo menos '+#13#10+
                        '   2 Referencias del Titular.','Solicitud de Crédito',MB_ICONERROR);
      jbpCliente.ActivePageIndex := 0;
      jbpExtras_Cliente.ActivePageIndex := 2;
      result := false;
      Exit;
   end;

   // Validar para TC12, TC25, TC27; telefono o domicilio referencia
   if ((sCtaOrigen = 'TC12') or (sCtaOrigen = 'TC25') or (sCtaOrigen = 'TC27') or
       (sCtaOrigen = 'TC34') or (sCtaOrigen = 'TC35')) then
   begin
    if (trim(edTelefono_rp1.Text) = '') and (trim(txtDomic_rp1.Text) = '') then
    begin
     MessageBox(Handle,'Proporcione El Telefono ó El Domicilio De La Referencia #1...','Solicitud de Crédito',MB_ICONERROR);
     jbpCliente.ActivePageIndex := 0;
     jbpExtras_Cliente.ActivePageIndex := 2;
     edTelefono_rp1.SetFocus;
     result := false;
     Exit;
    end;
   end else
   begin
    if (trim(edTelefono_rp1.Text) = '') then
    begin
     MessageBox(Handle,'Proporcione El Telefono De La Referencia #1...','Solicitud de Crédito',MB_ICONERROR);
     jbpCliente.ActivePageIndex := 0;
     jbpExtras_Cliente.ActivePageIndex := 2;
     edTelefono_rp1.SetFocus;
     result := false;
     Exit;
    end;
   end;

   if (trim(edTelefono_rp1.Text) <> '') then begin
      if (length(trim(edTelefono_rp1.Text)) < 10) then begin
         MessageBox(Handle,'Verifique el Telefono de la Referencia #1...','Solicitud de Crédito',MB_ICONERROR);
         jbpCliente.ActivePageIndex := 0;
         jbpExtras_Cliente.ActivePageIndex := 2;
         edTelefono_rp1.SetFocus;
         result := false;
         Exit;
      end;
   end;
   if (trim(edNombre_Rp1.Text) <> '') and (cbRelacion_Rp1.ItemIndex < 1) then begin
      MessageBox(Handle,'Seleccione el Tipo de Relacion '+#13#10+
                        'Para la Referencia #1','Solicitud de Crédito',MB_ICONERROR);
      jbpCliente.ActivePageIndex := 0;
      jbpExtras_Cliente.ActivePageIndex := 2;
      cbRelacion_Rp1.SetFocus;
      result := False;
      Exit;
   end;

   if ((sCtaOrigen = 'TC12') or (sCtaOrigen = 'TC25') or (sCtaOrigen = 'TC27') or
       (sCtaOrigen = 'TC34') or (sCtaOrigen = 'TC35')) then
   begin
    if (trim(edTelefono_rp2.Text) = '') and (trim(txtDomic_rp2.Text) = '') then
    begin
     MessageBox(Handle,'Proporcione El Telefono ó El Domicilio De La Referencia #2...','Solicitud de Crédito',MB_ICONERROR);
     jbpCliente.ActivePageIndex := 0;
     jbpExtras_Cliente.ActivePageIndex := 2;
     edTelefono_rp2.SetFocus;
     result := false;
     Exit;
    end;
   end else
   begin
    if (trim(edTelefono_rp2.Text) = '') then
    begin
     MessageBox(Handle,'Proporcione El Telefono De La Referencia #2...','Solicitud de Crédito',MB_ICONERROR);
     jbpCliente.ActivePageIndex := 0;
     jbpExtras_Cliente.ActivePageIndex := 2;
     edTelefono_rp2.SetFocus;
     result := false;
     Exit;
    end;
   end;

   if (trim(edTelefono_rp2.Text) <> '') then
   begin
    if (length(trim(edTelefono_rp2.Text)) < 10) then
    begin
     MessageBox(Handle,'Verifique el Telefono de la Referencia #2...','Solicitud de Crédito',MB_ICONERROR);
     jbpCliente.ActivePageIndex := 0;
     jbpExtras_Cliente.ActivePageIndex := 2;
     edTelefono_rp2.SetFocus;
     result := false;
     Exit;
    end;
   end;

   if (trim(edNombre_Rp2.Text) <> '') and (cbRelacion_Rp2.ItemIndex < 1) then begin
      MessageBox(Handle,'Seleccione el Tipo de Relacion '+#13#10+
                        'Para la Referencia #2','Solicitud de Crédito',MB_ICONERROR);
      jbpCliente.ActivePageIndex := 0;
      jbpExtras_Cliente.ActivePageIndex := 2;
      cbRelacion_Rp2.SetFocus;
      result := False;
      Exit;
   end;

   if ((sCtaOrigen = 'TC12') or (sCtaOrigen = 'TC25') or (sCtaOrigen = 'TC27') or
       (sCtaOrigen = 'TC34') or (sCtaOrigen = 'TC35')) and
       (Length(edNombre_rp3.Text) > 0) then
   begin
    if (trim(edTelefono_rp3.Text) = '') and (trim(txtDomic_rp3.Text) = '') then
    begin
     MessageBox(Handle,'Proporcione El Telefono ó El Domicilio De La Referencia #3...','Solicitud de Crédito',MB_ICONERROR);
     jbpCliente.ActivePageIndex := 0;
     jbpExtras_Cliente.ActivePageIndex := 2;
     edTelefono_rp3.SetFocus;
     result := false;
     Exit;
    end;
   end else
   begin
    if (trim(edTelefono_rp3.Text) = '') and (Length(edNombre_rp3.Text) > 0) then
    begin
     MessageBox(Handle,'Proporcione El Telefono De La Referencia #3...','Solicitud de Crédito',MB_ICONERROR);
     jbpCliente.ActivePageIndex := 0;
     jbpExtras_Cliente.ActivePageIndex := 2;
     edTelefono_rp3.SetFocus;
     result := false;
     Exit;
    end;
   end;
   if (trim(edTelefono_rp3.Text) <> '') then begin
      if (length(trim(edTelefono_rp3.Text)) < 10) then begin
         MessageBox(Handle,'Verifique el Telefono de la Referencia #3...','Solicitud de Crédito',MB_ICONERROR);
         jbpCliente.ActivePageIndex := 0;
         jbpExtras_Cliente.ActivePageIndex := 2;
         edTelefono_rp3.SetFocus;
         result := false;
         Exit;
      end;
   end;
   if (trim(edNombre_Rp3.Text) <> '') and (edRelacion_Rp3.ItemIndex < 1) then begin
      MessageBox(Handle,'Seleccione el Tipo de Relacion '+#13#10+
                        'Para la Referencia #3','Solicitud de Crédito',MB_ICONERROR);
      jbpCliente.ActivePageIndex := 0;
      jbpExtras_Cliente.ActivePageIndex := 2;
      edRelacion_Rp3.SetFocus;
      result := False;
      Exit;
   end;

   if ((sCtaOrigen = 'TC12') or (sCtaOrigen = 'TC25') or (sCtaOrigen = 'TC27') or
       (sCtaOrigen = 'TC34') or (sCtaOrigen = 'TC35')) and (Length(edNombre_rp4.Text) > 0) then
   begin
    if (trim(edTelefono_rp4.Text) = '') and (trim(txtDomic_rp4.Text) = '') then
    begin
     MessageBox(Handle,'Proporcione El Telefono ó El Domicilio De La Referencia #4...','Solicitud de Crédito',MB_ICONERROR);
     jbpCliente.ActivePageIndex := 0;
     jbpExtras_Cliente.ActivePageIndex := 2;
     edTelefono_rp4.SetFocus;
     result := false;
     Exit;
    end;
   end else
   begin
    if (trim(edTelefono_rp4.Text) = '') and (Length(edNombre_rp4.Text) > 0) then
    begin
     MessageBox(Handle,'Proporcione El Telefono De La Referencia #4...','Solicitud de Crédito',MB_ICONERROR);
     jbpCliente.ActivePageIndex := 0;
     jbpExtras_Cliente.ActivePageIndex := 2;
     edTelefono_rp4.SetFocus;
     result := false;
     Exit;
    end;
   end;
   if (trim(edTelefono_rp4.Text) <> '') then begin
      if (length(trim(edTelefono_rp4.Text)) < 10) then begin
         MessageBox(Handle,'Verifique el Telefono de la Referencia #4...','Solicitud de Crédito',MB_ICONERROR);
         jbpCliente.ActivePageIndex := 0;
         jbpExtras_Cliente.ActivePageIndex := 2;
         edTelefono_rp4.SetFocus;
         result := false;
         Exit;
      end;
   end;
   if (trim(edNombre_Rp4.Text) <> '') and (edRelacion_Rp4.ItemIndex < 1) then begin
      MessageBox(Handle,'Seleccione el Tipo de Relacion '+#13#10+
                        'Para la Referencia #4','Solicitud de Crédito',MB_ICONERROR);
      jbpCliente.ActivePageIndex := 0;
      jbpExtras_Cliente.ActivePageIndex := 2;
      edRelacion_Rp4.SetFocus;
      result := False;
      Exit;
   end;
   if (trim(txtTelefonoM_Aval.Text) <> '') then begin
      if (length(trim(txtTelefonoM_Aval.Text)) < 10) then begin
         MessageBox(Handle,'Verifique el Telefono Movil del Aval...','Solicitud de Crédito',MB_ICONERROR);
         jbpExtras_Cliente.ActivePageIndex := 2;
         txtTelefonoM_Aval.SetFocus;
         result := false;
         Exit;
      end;
   end;
   if (trim(txtTelefonoF_Aval.Text) <> '') then begin
      if (length(trim(txtTelefonoF_Aval.Text)) < 10) then begin
         MessageBox(Handle,'Verifique el Telefono Fijo del Aval...','Solicitud de Crédito',MB_ICONERROR);
         jbpExtras_Cliente.ActivePageIndex := 2;
         Extras_Aval.ActivePageIndex := 0;
         txtTelefonoF_Aval.SetFocus;
         result := false;
         Exit;
      end;
   end;
   if (trim(txtTel_Trabajo_Aval.Text) <> '') then begin
      if (length(trim(txtTel_Trabajo_Aval.Text)) < 10) then begin
         MessageBox(Handle,'Verifique el Telefono del Trabajo del Aval...','Solicitud de Crédito',MB_ICONERROR);
         jbpCliente.ActivePageIndex := 2;
         Extras_Aval.ActivePageIndex := 1;
         txtTel_Trabajo_Aval.SetFocus;
         result := false;
         Exit;
      end;
   end;
   if (trim(txtTelefono_rp1_Aval.Text) <> '') then begin
      if (length(trim(txtTelefono_rp1_Aval.Text)) < 10) then begin
         MessageBox(Handle,'Verifique el Telefono de la Referencia #1 del Aval...','Solicitud de Crédito',MB_ICONERROR);
         jbpCliente.ActivePageIndex := 2;
         Extras_Aval.ActivePageIndex := 2;
         txtTelefono_rp1_Aval.SetFocus;
         result := false;
         Exit;
      end;
   end;
   if (trim(txtTelefono_rp2_Aval.Text) <> '') then begin
      if (length(trim(txtTelefono_rp2_Aval.Text)) < 10) then begin
         MessageBox(Handle,'Verifique el Telefono de la Referencia #2 del Aval...','Solicitud de Crédito',MB_ICONERROR);
         jbpCliente.ActivePageIndex := 2;
         Extras_Aval.ActivePageIndex := 2;
         txtTelefono_rp2_Aval.SetFocus;
         result := false;
         Exit;
      end;
   end;
   if (trim(txtTelefono_rf1_Aval.Text) <> '') then begin
      if (length(trim(txtTelefono_rf1_Aval.Text)) < 10) then begin
         MessageBox(Handle,'Verifique el Telefono de la Referencia #3 del Aval...','Solicitud de Crédito',MB_ICONERROR);
         jbpCliente.ActivePageIndex := 2;
         Extras_Aval.ActivePageIndex := 3;
         txtTelefono_rf1_Aval.SetFocus;
         result := false;
         Exit;
      end;
   end;
   if (trim(txtTelefono_rf2_Aval.Text) <> '') then begin
      if (length(trim(txtTelefono_rf2_Aval.Text)) < 10) then begin
         MessageBox(Handle,'Verifique el Telefono de la Referencia #4 del Aval...','Solicitud de Crédito',MB_ICONERROR);
         jbpCliente.ActivePageIndex := 2;
         Extras_Aval.ActivePageIndex := 3;
         txtTelefono_rf2_Aval.SetFocus;
         result := false;
         Exit;
      end;
   end;
   if (Trim(txtDomicilio_cliente.Text)='') then begin
      MessageBox(Handle,'Proporcione el Domicilio del cliente...','Solicitud de Crédito',MB_ICONERROR);
      jbpCliente.ActivePageIndex := 0;
      jbpExtras_Cliente.ActivePageIndex := 0;
      txtDomicilio_cliente.SetFocus;
      result := false;
      Exit;
   end;
   if (Trim(txtNumCasa_cliente.Text)='') then begin
      MessageBox(Handle,'Proporcione el Numero de Casa del cliente...','Solicitud de Crédito',MB_ICONERROR);
      jbpCliente.ActivePageIndex := 0;
      jbpExtras_Cliente.ActivePageIndex := 0;
      txtNumCasa_Cliente.SetFocus;
      result := false;
      Exit;
   end;
   if (Trim(txtMunicipio_cliente.Text)='') then begin
      MessageBox(Handle,'Proporcione el Municpio del cliente...','Solicitud de Crédito',MB_ICONERROR);
      jbpCliente.ActivePageIndex := 0;
      jbpExtras_Cliente.ActivePageIndex := 0;
      txtMunicipio_cliente.SetFocus;
      result := false;
      Exit;
   end;
   if (Trim(txtEstado_cliente.Text)='') then begin
      MessageBox(Handle,'Proporcione el Estado donde vive el cliente...','Solicitud de Crédito',MB_ICONERROR);
      jbpCliente.ActivePageIndex := 0;
      jbpExtras_Cliente.ActivePageIndex := 0;
      txtEstado_cliente.SetFocus;
      result := false;
      Exit;
   end;

   if (txtMeses_Poblacion_Cliente.Value <= 0) then begin
      MessageBox(Handle,'Proporcione el Tiempo de Residencia en la Población del cliente...','Solicitud de Crédito',MB_ICONERROR);
      jbpCliente.ActivePageIndex := 0;
      jbpExtras_Cliente.ActivePageIndex := 0;
      txtMeses_Poblacion_Cliente.SetFocus;
      result := false;
      Exit;
   end;
   if (txtMeses_Domicilio_Cliente.Value <= 0) then begin
      MessageBox(Handle,'Proporcione el Tiempo de Residencia en el Domicilio del cliente...','Solicitud de Crédito',MB_ICONERROR);
      jbpCliente.ActivePageIndex := 0;
      jbpExtras_Cliente.ActivePageIndex := 0;
      txtMeses_Domicilio_Cliente.SetFocus;
      result := false;
      Exit;
   end;
   if txtMeses_Poblacion_Cliente.Value < txtMeses_Domicilio_Cliente.Value then begin
      MessageBox(Handle,' El tiempo de Residencia en la Población, '+#13#10+
                        'no puede se menor del Tiempo de Residencia'+#13#10+
                        ' en el domicilio.','Solicitud de Crédito. ',MB_ICONERROR);
      jbpCliente.ActivePageIndex := 0;
      jbpExtras_Cliente.ActivePageIndex := 0;
      txtMeses_Poblacion_Cliente.SetFocus;
      result := false;
      Exit;
   end;
   if (cTipo.ItemIndex = 2) then begin
      if trim(txtExpediente.Text) = '' then begin
         MessageDlg(' ! ! ! !  A T E N C I O N  ! ! ! ! !'+#13#10+
         '       Para Tarjeta CrediBips '+#13#10+
         'debe Proporcionar la Sucursal'+#13#10+
         '   donde labora el Empleado', mtInformation, [mbOK], 0);
         jbpCliente.ActivePageIndex := 0;
         jbpExtras_Cliente.ActivePageIndex := 1;
         controles_pnCredinomina(False);
         Label143.Caption := 'Sucursal:';
         Label144.Caption := 'Area:';
         Label143.Visible := True;
         Label144.Visible := True;
         txtExpediente.Visible := True;
         txtPlaza.Visible := True;
         cmdMCredinomina.Click;
         result := false;
         Exit;
      end;
      if trim(txtPlaza.Text) = '' then begin
         MessageDlg(' ! ! ! !  A T E N C I O N  ! ! ! ! !'+#13#10+
         '     Para Tarjeta CrediBips'+#13#10+
         'debe indicar el area en la que'+#13#10+
         '       labora el Empleado', mtInformation, [mbOK], 0);
         jbpCliente.ActivePageIndex := 0;
         jbpExtras_Cliente.ActivePageIndex := 1;
         controles_pnCredinomina(False);
         Label143.Caption := 'Sucursal:';
         Label144.Caption := 'Area:';
         Label143.Visible := True;
         Label144.Visible := True;
         txtExpediente.Visible := True;
         txtPlaza.Visible := True;
         cmdMCredinomina.Click;
         result := false;
         Exit;
      end;
   end;
   
   //Valida Informacion del Expediente
   if chbEnviaExp.Checked then begin
      if not ValidDate(txtFechaEnvio.Date) or (txtFechaEnvio.Date = NullDate) then begin
         MessageBox(Handle,'Debe Indicar la Fecha en'+#13#10+
                           'que se Envió el Expediente','Solicitud de Crédito',MB_ICONERROR);
         jbpCliente.ActivePageIndex := 1;
         txtFechaEnvio.SetFocus;
         Result := False;
         Exit;
      end;
   end;
   if chbAcuse.Checked then begin
      if Trim(txtFolio_Recibo.text) = '' then begin
         MessageBox(Handle,'Debe Indicar el Folio del'+#13#10+
                           '      Acuse de Recibo','Solicitud de Crédito',MB_ICONERROR);
         jbpCliente.ActivePageIndex := 1;
         txtFolio_Recibo.SetFocus;
         Result := False;
         Exit;
      end;
      if not ValidDate(txtFecha.Date) or (txtFecha.Date = NullDate) then begin
         MessageBox(Handle,'Debe Indicar la Fecha del'+#13#10+
                           '       Acuse de Recibo','Solicitud de Crédito',MB_ICONERROR);
         jbpCliente.ActivePageIndex := 1;
         txtFecha.SetFocus;
         Result := False;
         Exit;
      end;
   end;
   // Validar que si el tipo de identificacion es credencia de elector se proporcione el folio
   if (cTipoIden.Text = 'CREDENCIAL ELECTOR') and (gbIdentificacion.Enabled) and
      (Trim(txtFolio.Text) = '') then
   begin
     MessageBox(Handle,'Debe Indicar El Folio de La Identificación Oficial','Solicitud de Crédito',MB_ICONERROR);
     jbpCliente.ActivePageIndex := 1;
     txtFolio.SetFocus;
     Result := False;
     Exit;
   end;
end;

procedure TfrmScoreCard.actualiza_datos_anteriores;
begin
   asigna_valor(mdCampos, 1, txtNombre_Cliente.Text,       'valor_nuevo');
   asigna_valor(mdCampos, 2, txtPaterno_Cliente.Text,      'valor_nuevo');
   asigna_valor(mdCampos, 3, txtMaterno_Cliente.Text,      'valor_nuevo');
   asigna_valor(mdCampos, 4, txtTel_Movil_Cliente.Text,    'valor_nuevo');
   asigna_valor(mdCampos, 5, txtDomicilio_Cliente.Text,    'valor_nuevo');
   asigna_valor(mdCampos, 6, txtNumCasa_Cliente.Text,      'valor_nuevo');
   asigna_valor(mdCampos, 7, txtColonia_Cliente.Text,      'valor_nuevo');
   asigna_valor(mdCampos, 8, txtCiudad_Cliente.Text,       'valor_nuevo');
   asigna_valor(mdCampos, 9, txtEstado_Cliente.Text,       'valor_nuevo');
   asigna_valor(mdCampos, 10, txtTelefono_Cliente.Text,    'valor_nuevo');
   asigna_valor(mdCampos, 11, txtTrabajo_Cliente.Text,     'valor_nuevo');
   asigna_valor(mdCampos, 12, txtPuesto_Cliente.Text,      'valor_nuevo');
   asigna_valor(mdCampos, 13, txtTel_Trabajo_Cliente.Text, 'valor_nuevo');
   asigna_valor(mdCampos, 14, txtDomicilio_trabajo_Cliente.Text,'valor_nuevo');
   asigna_valor(mdCampos, 15, txtColonia_trabajo_Cliente.Text,  'valor_nuevo');
   asigna_valor(mdCampos, 16, txtCiudad_Trabajo_Cliente.Text,   'valor_nuevo');
   asigna_valor(mdCampos, 17, txtEstado_Trabajo_Cliente.Text,   'valor_nuevo');
   asigna_valor(mdCampos, 18, txtSueldo_Cliente.Text,           'valor_nuevo');
   asigna_valor(mdCampos, 19, edTelefono_rp1.Text+'@'+edNombre_rp1.Text,'valor_nuevo');
   asigna_valor(mdCampos, 20, edTelefono_rp2.Text+'@'+edNombre_rp2.Text,'valor_nuevo');
   asigna_valor(mdCampos, 21, edTelefono_rp3.Text+'@'+edNombre_rp3.Text,'valor_nuevo');
   asigna_valor(mdCampos, 22, edTelefono_rp4.Text+'@'+edNombre_rp4.Text,'valor_nuevo');
   asigna_valor(mdCampos, 23, FloatToStr(ceCap_pago.Value), 'valor_nuevo');

   asigna_valor(mdCampos, 1, txtNombre_Cliente.Text,       'valor_anterior');
   asigna_valor(mdCampos, 2, txtPaterno_Cliente.Text,      'valor_anterior');
   asigna_valor(mdCampos, 3, txtMaterno_Cliente.Text,      'valor_anterior');
   asigna_valor(mdCampos, 4, txtTel_Movil_Cliente.Text,    'valor_anterior');
   asigna_valor(mdCampos, 5, txtDomicilio_Cliente.Text,    'valor_anterior');
   asigna_valor(mdCampos, 6, txtNumCasa_Cliente.Text,      'valor_anterior');
   asigna_valor(mdCampos, 7, txtColonia_Cliente.Text,      'valor_anterior');
   asigna_valor(mdCampos, 8, txtCiudad_Cliente.Text,       'valor_anterior');
   asigna_valor(mdCampos, 9, txtEstado_Cliente.Text,       'valor_anterior');
   asigna_valor(mdCampos, 10, txtTelefono_Cliente.Text,    'valor_anterior');
   asigna_valor(mdCampos, 11, txtTrabajo_Cliente.Text,     'valor_anterior');
   asigna_valor(mdCampos, 12, txtPuesto_Cliente.Text,      'valor_anterior');
   asigna_valor(mdCampos, 13, txtTel_Trabajo_Cliente.Text, 'valor_anterior');
   asigna_valor(mdCampos, 14, txtDomicilio_trabajo_Cliente.Text,'valor_anterior');
   asigna_valor(mdCampos, 15, txtColonia_trabajo_Cliente.Text,  'valor_anterior');
   asigna_valor(mdCampos, 16, txtCiudad_Trabajo_Cliente.Text,   'valor_anterior');
   asigna_valor(mdCampos, 17, txtEstado_Trabajo_Cliente.Text,   'valor_anterior');
   asigna_valor(mdCampos, 18, txtSueldo_Cliente.Text,           'valor_anterior');
   asigna_valor(mdCampos, 19, edTelefono_rp1.Text+'@'+edNombre_rp1.Text,'valor_anterior');
   asigna_valor(mdCampos, 20, edTelefono_rp2.Text+'@'+edNombre_rp2.Text,'valor_anterior');
   asigna_valor(mdCampos, 21, edTelefono_rp3.Text+'@'+edNombre_rp3.Text,'valor_anterior');
   asigna_valor(mdCampos, 22, edTelefono_rp4.Text+'@'+edNombre_rp4.Text,'valor_anterior');
   asigna_valor(mdCampos, 23, FloatToStr(ceCap_pago.Value), 'valor_anterior');
end;

function TfrmScoreCard.actualiza_aval: Boolean;
var i, igenero : integer;
    scony, cp : string;
begin
 result := true;
 iGenero := 1;
 if rbFemenino_Aval.Checked then iGenero := 0;
 if not chAval.Checked or (trim(txtNombre_Aval.Text) = '') then
   Exit;
 if chbPagare.Checked then cp := '1'
 else cp := '0';
 with dmModulo_datos do begin
     msqTemporal.Sql.Text := 'SELECT clave_fiador FROM fiador '+
        'WHERE clave_cuenta="'+sClave_cuenta+'" ';
     msqTemporal.Open;
   if msqTemporal.Eof then begin //La cuenta No tenia Aval Asociado
     msqTemporal.Sql.Text:= 'LOCK TABLES fiador LOW_PRIORITY WRITE ';
     msqTemporal.Open;
     msqTemporal.Sql.Text:= 'SELECT Max(clave_fiador) clave_fiador FROM fiador '+
      'WHERE length(clave_fiador) = 9';
     msqTemporal.Open;

     sClave_fiador := IntToStr(StrToInt(Copy(msqTemporal.FieldByName('clave_fiador').AsString,2,8))+1);

     for i:=Length(sClave_fiador)+1 to 8 do
       sClave_fiador:='0'+sClave_fiador;

     sClave_fiador:='F'+sClave_fiador;

     msqTemporal.Sql.Text:='Insert Into fiador Set '+
     ' clave_cuenta="'+sClave_cuenta+'", '+
     ' clave_fiador="'+sClave_fiador+'", '+
     ' paterno="'+TRIM(StringReplace(txtPaterno_aval.Text,'"','',[rfReplaceAll]))+'", '+
     ' materno="'+TRIM(StringReplace(txtMaterno_aval.Text,'"','',[rfReplaceAll]))+'", '+
     ' nombre="'+TRIM(StringReplace(txtNombre_aval.Text,'"','',[rfReplaceAll]))+'", '+
     ' fecha_nac = "'+ formatdatetime('yyyy-mm-dd',deNacimiento_Aval.date) + '", '+
     ' edo_civil = '+ inttostr(cmbEstado_Civil_Aval.ItemIndex) + ', '+
     ' telefono_movil = "'+ txtTelefonoM_Aval.Text + '", '+
     ' domicilio="'+ StringReplace(txtDomicilio_aval.Text,'"','',[rfReplaceAll])+'", '+
     ' numero_casa="'+StringReplace(txtNumCasa_aval.Text,'"','',[rfReplaceAll])+'", '+
     ' colonia="'+StringReplace(txtColonia_aval.Text,'"','',[rfReplaceAll])+'", '+
     ' ciudad="'+StringReplace(txtCiudad_aval.Text,'"','',[rfReplaceAll])+'", '+
     ' estado = "'+ StringReplace(txtEstado_Aval.Text,'"','',[rfReplaceAll]) +'", '+
     ' telefono="'+StringReplace(txtTelefonoF_aval.Text,'"','',[rfReplaceAll])+'", '+
     ' domicilio_calles = "'+StringReplace(txtDomicilio_Calles.Text,'"','',[rfReplaceAll])+'",'+
     ' codigo_postal="'+ floattostr(txtCP_Aval.Value)+'", '+
     ' meses_poblacion = "'+ floattostr(txtMesesP_Aval.Value) +'", '+
     ' meses_domicilio = "'+ floattostr(txtMesesD_Aval.Value)+'", '+
     ' sexo = "'+inttostr(iGenero)+'", '+
     ' email = "'+trim(StringReplace(txtCorreoE_Aval.Text,'"','\"',[rfReplaceAll]))+'",'+
     ' firma_pagare = "'+ cp +'", '+
     ' importe_pagare = "'+ currtostr(txtVPagare.Value)+'" '
   end else begin
     sClave_fiador := msqTemporal.FieldByName('clave_fiador').AsString;
     if sClave_fiador = '' then begin
        MessageDlg(' ! ! ! A T E N C I O N ! ! !'+#13#10+''+#13#10+
                   'No se pueden Actualizar'+#13#10+
                   '  los datos del AVAL, la '+#13#10+
                   'clave de cuenta del fiador'+#13#10+
                   '            es Vacia.', mtError, [mbOK], 0);
        Result := False;
        Exit;
     end;
     msqTemporal.Sql.Text:='UPDATE fiador Set '+
     ' paterno="'+TRIM(StringReplace(txtPaterno_aval.Text,'"','',[rfReplaceAll]))+'", '+
     ' materno="'+TRIM(StringReplace(txtMaterno_aval.Text,'"','',[rfReplaceAll]))+'", '+
     ' nombre="'+TRIM(StringReplace(txtNombre_aval.Text,'"','',[rfReplaceAll]))+'", '+
     ' fecha_nac = "'+ formatdatetime('yyyy-mm-dd',deNacimiento_Aval.date) + '", '+
     ' edo_civil = '+ inttostr(cmbEstado_Civil_Aval.ItemIndex) + ', '+
     ' telefono_movil = "'+ txtTelefonoM_Aval.Text + '", '+
     ' domicilio="'+ StringReplace(txtDomicilio_aval.Text,'"','',[rfReplaceAll])+'", '+
     ' numero_casa="'+StringReplace(txtNumCasa_aval.Text,'"','',[rfReplaceAll])+'", '+
     ' colonia="'+StringReplace(txtColonia_aval.Text,'"','',[rfReplaceAll])+'", '+
     ' ciudad="'+StringReplace(txtCiudad_aval.Text,'"','',[rfReplaceAll])+'", '+
     ' estado = "'+ StringReplace(txtEstado_Aval.Text,'"','',[rfReplaceAll]) +'", '+
     ' telefono="'+StringReplace(txtTelefonoF_aval.Text,'"','',[rfReplaceAll])+'", '+
     ' domicilio_calles = "'+StringReplace(txtDomicilio_Calles.Text,'"','',[rfReplaceAll])+'", '+
     ' codigo_postal="'+ floattostr(txtCP_Aval.Value)+'", '+
     ' email = "'+trim(StringReplace(txtCorreoE_Aval.Text,'"','\"',[rfReplaceAll]))+'", '+
     ' sexo = "'+inttostr(iGenero)+'", '+
     ' meses_poblacion = "'+ floattostr(txtMesesP_Aval.Value) +'", '+
     ' meses_domicilio = "'+ floattostr(txtMesesD_Aval.Value) +'", '+
     ' firma_pagare = "'+ cp +'", '+
     ' importe_pagare = "'+ currtostr(txtVPagare.Value)+'" '+
     ' WHERE clave_cuenta="'+sClave_cuenta+'" '+
     ' AND clave_fiador = "'+sClave_Fiador+'" ';
   end;
   try
      msqTemporal.ExecSql;
      msqTemporal.Sql.Text := 'Unlock Tables';
      msqTemporal.ExecSql;
   except
      messagebox(handle,'Ocurrio un error Actualizando el Fiador','Atención...', 48);
      msqTemporal.Sql.Text := 'Unlock Tables';
      msqTemporal.ExecSql;
      result := false;
      Exit;
   end;
   // Conyuge del Fiador
   if (trim(txtNombre_Conyuge_Aval.Text)  <> '') or
      (trim(txtPaterno_Conyuge_Aval.Text) <> '') or
      (trim(txtMaterno_Conyuge_Aval.Text) <> '') then begin
      msqTemporal.Sql.Text := 'SELECT nombre FROM conyuge '+
         'WHERE clave_cuenta = "'+sClave_Fiador+'"';
      msqTemporal.Open;
      if msqTemporal.RecordCount = 0 then
      begin //Inserta Conyuge
          msqTemporal.Sql.Text:= 'LOCK TABLES corporativo.conyuge LOW_PRIORITY WRITE ';
          msqTemporal.ExecSql;
          msqTemporal.Sql.Text:= 'SELECT MAX(clave_conyuge) clave_conyuge '+
           'FROM corporativo.conyuge WHERE length(clave_conyuge) = 9';
          try
             msqTemporal.Open;
          except
             msqTemporal.Sql.Text := 'UNLOCK TABLES';
             msqTemporal.ExecSql;
             messagebox(handle,'Ocurrio un error al Obtener la Clave del Conyuge del Fiador','Atención...', 48);
             result := false;
             Exit;
          end;

          scony := IntToStr(StrToInt(Copy(msqTemporal.FieldByName('clave_conyuge').AsString,2,8))+1);
          for i:=Length(scony)+1 to 8 do
            scony := '0'+ scony;

          sCony := 'C' + sCony;

          msqTemporal.Sql.Text := 'INSERT INTO corporativo.conyuge SET '+
          ' clave_conyuge = "'+sCony+'", '+
          ' clave_cuenta = "'+sClave_Fiador+'", '+
          ' nombre = "'+StringReplace(txtNombre_Conyuge_Aval.Text, '"','',[rfReplaceAll])+'", '+
          ' paterno = "'+StringReplace(txtPaterno_Conyuge_Aval.Text, '"','',[rfReplaceAll])+'", '+
          ' materno = "'+StringReplace(txtMaterno_Conyuge_Aval.Text, '"','',[rfReplaceAll])+'"';
          try
             msqTemporal.ExecSql;
             msqTemporal.Sql.Text:='Unlock Tables';
             msqTemporal.Open;
          except
             msqTemporal.Sql.Text:='Unlock Tables';
             msqTemporal.Open;
             messagebox(handle,'Ocurrio un error Almacenando el Conyuge de Fiador','Atención...', 48);
             result := false;
             Exit;
          end;
      end else begin //Actualiza Conyuge
         msqTemporal.Sql.Text := 'UPDATE corporativo.conyuge SET '+
            'nombre = "'+StringReplace(txtNombre_Conyuge_Aval.Text,'"','',[rfReplaceAll])+'", '+
            'paterno = "'+StringReplace(txtPaterno_Conyuge_Aval.Text,'"','',[rfReplaceAll])+'", '+
            'materno = "'+StringReplace(txtMaterno_Conyuge_Aval.Text,'"','',[rfReplaceAll])+'" '+
            'WHERE clave_cuenta = "'+sClave_Fiador+'"';
         try
            msqTemporal.ExecSql;
         except
            messagebox(handle,'Ocurrio un error Actualizando al Conyuge de Fiador','Atención...', 48);
            result := false;
            Exit;
         end;
      end;
   end;

   //  Trabajo Fiador
   msqTemporal.Sql.Text := 'Select empresa From trabajo_cliente '+
   'where clave_cuenta = "'+ sClave_Fiador +'" ';
   msqTemporal.Open;
   if msqTemporal.RecordCount = 0 then //Inserta nuevo registro
      msqTemporal.Sql.Text:= 'INSERT INTO trabajo_cliente Set '+
      ' clave_cuenta="'+sClave_fiador+'", '+
      ' empresa="'+StringReplace(txtTrabajo_Aval.Text,'"','',[rfReplaceAll])+'", '+
      ' puesto="'+StringReplace(txtPuesto_Aval.Text,'"','',[rfReplaceAll])+'", '+
      ' sueldo_mensual="'+FloatToStr(txtSueldo_Aval.Value)+'", '+
      ' direccion="'+StringReplace(txtDomicilio_trabajo_Aval.Text,'"','',[rfReplaceAll])+'", '+
      ' telefono="'+StringReplace(txtTel_trabajo_Aval.Text,'"','',[rfReplaceAll])+'", '+
      ' antiguedad="'+StringReplace(txtMeses_Trabajo_Aval.Text,'"','',[rfReplaceAll])+'", '+
      ' colonia="'+ StringReplace(txtColonia_Trabajo_Aval.Text,'"','',[rfReplaceAll]) + '", '+
      ' ciudad="'+ StringReplace(txtCiudad_Trabajo_Aval.Text,'"','',[rfReplaceAll]) + '", '+
      ' estado="'+ StringReplace(txtEstado_Trabajo_Aval.Text,'"','',[rfReplaceAll]) +'"'
   else
   msqTemporal.Sql.Text:= 'UPDATE trabajo_cliente Set '+
      ' empresa="'+StringReplace(txtTrabajo_Aval.Text,'"','',[rfReplaceAll])+'", '+
      ' puesto="'+StringReplace(txtPuesto_Aval.Text,'"','',[rfReplaceAll])+'", '+
      ' sueldo_mensual="'+FloatToStr(txtSueldo_Aval.Value)+'", '+
      ' direccion="'+StringReplace(txtDomicilio_trabajo_Aval.Text,'"','',[rfReplaceAll])+'", '+
      ' telefono="'+StringReplace(txtTel_trabajo_Aval.Text,'"','',[rfReplaceAll])+'", '+
      ' antiguedad="'+StringReplace(txtMeses_Trabajo_Aval.Text,'"','',[rfReplaceAll])+'", '+
      ' colonia="'+ StringReplace(txtColonia_Trabajo_Aval.Text,'"','',[rfReplaceAll]) + '", '+
      ' ciudad="'+ StringReplace(txtCiudad_Trabajo_Aval.Text,'"','',[rfReplaceAll]) + '", '+
      ' estado="'+ StringReplace(txtEstado_Trabajo_Aval.Text,'"','',[rfReplaceAll]) +'"'+
      ' WHERE clave_cuenta="'+sClave_fiador+'"';
   try
      msqTemporal.ExecSql;
   except
      messagebox(handle,'Ocurrio un error Almacenando el Trabajo del Fiador','Atención...', 48);
      result := false;
      Exit;
   end;

   //  Bienes del Fiador
   msqTemporal.Sql.Text := 'Select tipo_propiedad From bienes_cliente '+
      'Where clave_cuenta = "'+ sClave_Fiador +'"';
   msqTemporal.Open;
   if msqTemporal.Eof then
      msqTemporal.Sql.Text:= 'INSERT INTO bienes_cliente SET '+
         ' clave_cuenta="'+sClave_fiador+'", '+
         ' casa = "'+ cmbCasa_Aval.Text + '", '+
         ' tipo_propiedad="'+cmbCasa_Aval.Text+'", '+
         ' dependientes="'+IntToStr(txtDependientes_Aval.AsInteger)+'", '+
         ' ubicacion_predio="'+StringReplace(txtUbicacion_predio_Aval.Text,'"','',[rfReplaceAll])+'" '
   else
      msqTemporal.Sql.Text:= 'UPDATE bienes_cliente SET '+
         ' casa = "'+ cmbCasa_Aval.Text + '", '+
         ' tipo_propiedad="'+cmbCasa_Aval.Text+'", '+
         ' dependientes='+IntToStr(txtDependientes_Aval.AsInteger)+', '+
         ' ubicacion_predio="'+StringReplace(txtUbicacion_predio_Aval.Text,'"','',[rfReplaceAll])+'" '+
         ' WHERE clave_cuenta="'+sClave_fiador+'"';
   try
     msqTemporal.ExecSql;
   except
     messagebox(handle,'Ocurrio un error Actualizando en Bienes del Fiador','Atención...', 48);
     result := false;
     Exit;
   end;

   // Referencias del Fiador 
   if (Trim(txtNombre_rp1_Aval.Text)<>'') then begin
     msqTemporal.Sql.Text := 'Select nombre From referencias_personales '+
     'Where clave_cuenta = "'+ sClave_Fiador +'" and numero_referencia = 1';
     msqTemporal.Open;
     if msqTemporal.Eof then
        msqTemporal.Sql.Text:= 'INSERT INTO referencias_personales  Set '+
           ' nombre="'+TRIM(StringReplace(txtNombre_rp1_aval.Text,'"','',[rfReplaceAll]))+'", '+
           ' parentesco="'+ copy(cmbRelacion_rp1_aval.Items.Strings[cmbRelacion_rp1_aval.itemindex],1,2) +'", '+
           ' telefono="'+StringReplace(txtTelefono_rp1_aval.Text,'"','',[rfReplaceAll])+'", '+
           ' clave_cuenta="'+sClave_fiador+'", '+
           ' numero_referencia = 1'
     else
        msqTemporal.Sql.Text:= 'UPDATE referencias_personales  Set '+
           ' nombre="'+TRIM(StringReplace(txtNombre_rp1_aval.Text,'"','',[rfReplaceAll]))+'", '+
           ' parentesco="'+ copy(cmbRelacion_rp1_aval.Items.Strings[cmbRelacion_rp1_aval.itemindex],1,2) +'", '+
           ' telefono="'+StringReplace(txtTelefono_rp1_aval.Text,'"','',[rfReplaceAll])+'" '+
           ' WHERE clave_cuenta="'+sClave_fiador+'" '+
           ' AND numero_referencia = 1';
     try
       msqTemporal.ExecSql;
     except
       messagebox(handle,'Ocurrio un error Almacenando:'+ #13#10 +
                         'La Referencia Personal 1 del Fiador','Atención...', 48);
       result := false;
       Exit;
     end;
   end;

   if (Trim(txtNombre_RP2_Aval.Text)<>'') then begin
     msqTemporal.Sql.Text := 'Select nombre From referencias_personales '+
     'Where clave_cuenta = "'+ sClave_Fiador +'" and numero_referencia = 2';
     msqTemporal.Open;
     if msqTemporal.Eof then
        msqTemporal.Sql.Text:= 'INSERT INTO referencias_personales  Set '+
           ' nombre="'+TRIM(StringReplace(txtNombre_rp2_aval.Text,'"','',[rfReplaceAll]))+'", '+
           ' parentesco="'+ copy(cmbRelacion_rp2_aval.Items.Strings[cmbRelacion_rp2_aval.itemindex],1,2) +'", '+
           ' telefono="'+StringReplace(txtTelefono_rp2_aval.Text,'"','',[rfReplaceAll])+'", '+
           ' clave_cuenta="'+sClave_fiador+'", '+
           ' numero_referencia=2'
     else
        msqTemporal.Sql.Text:= 'UPDATE referencias_personales  Set '+
           ' nombre="'+TRIM(StringReplace(txtNombre_rp2_aval.Text,'"','',[rfReplaceAll]))+'", '+
           ' parentesco="'+ copy(cmbRelacion_rp2_aval.Items.Strings[cmbRelacion_rp2_aval.itemindex],1,2) +'", '+
           ' telefono="'+StringReplace(txtTelefono_rp2_aval.Text,'"','',[rfReplaceAll])+'" '+
           ' WHERE clave_cuenta="'+sClave_fiador+'" '+
           ' AND numero_referencia=2';
     try
       msqTemporal.ExecSql;
     except
       messagebox(handle,'Ocurrio un error Almacenando:'+ #13#10 +
                         'La Referencia Personal 2 del Fiador','Atención...', 48);
       result := false;
       Exit;
     end;
   end;
   if (Trim(txtNombre_Rf1_Aval.Text)<>'') then begin
     msqTemporal.Sql.Text := 'Select nombre From referencias_personales '+
     'Where clave_cuenta = "'+ sClave_Fiador +'" and numero_referencia = 3';
     msqTemporal.Open;
     if msqTemporal.Eof then
        msqTemporal.Sql.Text:= 'INSERT INTO referencias_personales  Set '+
           ' nombre="'+TRIM(StringReplace(txtNombre_rf1_aval.Text,'"','',[rfReplaceAll]))+'", '+
           ' parentesco="'+ copy(cmbRelacion_rf1_aval.Items.Strings[cmbRelacion_rf1_aval.itemindex],1,2) +'", '+
           ' telefono="'+StringReplace(txtTelefono_rf1_aval.Text,'"','',[rfReplaceAll])+'", '+
           ' clave_cuenta="'+sClave_fiador+'", '+
           ' numero_referencia=3'
     else
        msqTemporal.Sql.Text:= 'UPDATE referencias_personales  Set '+
           ' nombre="'+TRIM(StringReplace(txtNombre_rf1_aval.Text,'"','',[rfReplaceAll]))+'", '+
           ' parentesco="'+ copy(cmbRelacion_rf1_aval.Items.Strings[cmbRelacion_rf1_aval.itemindex],1,2) +'", '+
           ' telefono="'+StringReplace(txtTelefono_rf1_aval.Text,'"','',[rfReplaceAll])+'" '+
           ' WHERE clave_cuenta="'+sClave_fiador+'" '+
           ' AND numero_referencia=3';
     try
       msqTemporal.ExecSql;
     except
       messagebox(handle,'Ocurrio un error Almacenando:'+ #13#10 +
                         'La Referencia Familiar 1 del Fiador','Atención...', 48);
       result := false;
       Exit;
     end;
   end;

   if (Trim(txtNombre_rf2_Aval.Text)<>'') then begin
     msqTemporal.Sql.Text := 'Select nombre From referencias_personales '+
     'where clave_cuenta = "'+ sClave_Fiador +'" and numero_referencia = 4';
     msqTemporal.Open;
     if msqTemporal.Eof then
        msqTemporal.Sql.Text:= 'INSERT INTO referencias_personales  Set '+
           ' nombre="'+TRIM(StringReplace(txtNombre_rf2_aval.Text,'"','',[rfReplaceAll]))+'", '+
           ' parentesco="'+ copy(cmbRelacion_rf2_aval.Items.Strings[cmbRelacion_rf2_aval.itemindex],1,2) +'", '+
           ' telefono="'+StringReplace(txtTelefono_rf2_aval.Text,'"','',[rfReplaceAll])+'", '+
           ' clave_cuenta="'+sClave_fiador+'", '+
           ' numero_referencia=4'
     else
        msqTemporal.Sql.Text:= 'UPDATE referencias_personales  Set '+
           ' nombre="'+TRIM(StringReplace(txtNombre_rf2_aval.Text,'"','',[rfReplaceAll]))+'", '+
           ' parentesco="'+ copy(cmbRelacion_rf2_aval.Items.Strings[cmbRelacion_rf2_aval.itemindex],1,2) +'", '+
           ' telefono="'+StringReplace(txtTelefono_rf2_aval.Text,'"','',[rfReplaceAll])+'" '+
           ' WHERE clave_cuenta="'+sClave_fiador+'" '+
           ' AND numero_referencia=4';
     try
       msqTemporal.ExecSql;
     except
       messagebox(handle,'Ocurrio un error Almacenando:'+ #13#10 +
                         'La Referencia Familiar 2 del Fiador','Atención...', 48);
       result := false;
       Exit;
     end;
   end;
   end;
end;

function TfrmScoreCard.actualiza_cliente: Boolean;
var sQuery,sQuery2, sExpe, sSexo, sAcuse, sEnvia,
    scFro, scTra, scIzq, scDer : string;
    bDocsPresentados : Boolean;
    intInd : Integer;
    intOpciones : array[0..15] of Integer;
begin
   Result := True;
   if trim(txtClave_Cuenta.Text) <> '' then sClave_Cuenta := txtClave_Cuenta.Text;

   sExpe := '';
   case cTipo.ItemIndex of
      1 : sExpe := 'MTD';
      2 : begin
          sExpe := 'U001';
          msqEmpleado.Sql.Text := 'UPDATE personal.empleado SET '+
                           'clave_cuenta = "' + sClave_Cuenta + '" '+
                           'WHERE id_numnomina = "' + txtNum_Nomina.Text + '" ';
          msqEmpleado.ExecSql;
          end;
      3 : sexpe := 'CDTZ';
      4 : sexpe := 'INME';
      5 : sexpe := 'GARA';
      6 : sexpe := 'CMBC';
   end;

   sSexo := '1';
   if rbFemenino.Checked then sSexo := '0';
   //--Actualiza Datos Generales Del Titular
   sQuery:= 'UPDATE cuentas SET '+
   ' paterno = "'+ trim(txtPaterno_Cliente.Text) +'", '+ //Nivel > 3 puede modificar nombres
   ' materno = "'+ trim(txtMaterno_cliente.Text) +'", '+
   ' nombre = "'+ trim(txtNombre_Cliente.Text) +'", '+
   ' fecha_nacimiento= "'+ formatdatetime('yyyy-mm-dd', deNacimiento_Cliente.date) +'", '+
   ' estado_civil='+IntToStr(cmbEstado_civil_cliente.ItemIndex)+', '+
   ' rfc="'+StringReplace(txtRFC_cliente.Text,'"','',[rfReplaceAll])+'", '+
   ' telefono_movil= "'+ txtTel_Movil_Cliente.Text + '", '+
   ' mail="'+StringReplace(txtCorreoE_Cliente.Text,'"','',[rfReplaceAll])+'", '+
   ' domicilio="'+StringReplace(txtDomicilio_cliente.Text,'"','',[rfReplaceAll])+'", '+
   ' numero_casa="'+StringReplace(txtNumcasa_cliente.Text,'"','',[rfReplaceAll])+'", '+
   ' colonia="'+StringReplace(txtColonia_cliente.Text,'"','',[rfReplaceAll])+'", '+
   ' categoria="'+StringReplace(txtCategoria_cliente.Text,'"','',[rfReplaceAll])+'", '+
   ' domicilio_entre_calles="'+StringReplace(txtCalles_cliente.Text,'"','',[rfReplaceAll])+'", '+
   ' comentarios_crediticios = concat("'+ StringReplace(txtComentarios.Text,'"','',[rfReplaceAll]) +' ",curdate(),".. "), '+
   ' ciudad="'+StringReplace(txtCiudad_cliente.Text,'"','',[rfReplaceAll])+'", '+
   ' municipio="'+StringReplace(txtMunicipio_cliente.Text,'"','',[rfReplaceAll])+'", '+
   ' estado="'+StringReplace(txtEstado_cliente.Text,'"','',[rfReplaceAll])+'", '+
   ' telefono="'+StringReplace(txtTelefono_cliente.Text,'"','',[rfReplaceAll])+'", '+
   ' codigo_postal="'+floattostr(txtCP_cliente.Value)+'", '+
   ' meses_poblacion= "'+ floattostr(txtMeses_Poblacion_Cliente.Value)+ '", '+
   ' meses_domicilio= "'+ floattostr(txtMeses_Domicilio_Cliente.Value)+ '", '+
   ' numero_ficha="'+txtNum_Ficha.Text+'",'+
   ' expediente ="'+sexpe+'",'+
   ' clave_usuario='+ sClave_usuario +', '+
   ' fecha_actualizacion=CurDate(), '+
   ' fecha_captura="'+formatdatetime('yyyy-mm-dd',defecha_captura.date)+'", '+
   ' limite_credito = "'+ceLim_Cred.Text+'", ';
          //Actualiza Status de la Cuenta para mandarlo a Pre-Autorizado
   if (cTipo.ItemIndex <> 2) and
      (lbStatus.Caption = 'CONDICIONADO') then begin //Si no es credibips
         sQuery := sQuery + 'status = '+IntToStr(cmbStatus2.ItemIndex)+', '+
                            'determinante = 2, ';
   end;

   sQuery := sQuery +
   ' pagador = "'+TRIM(txtPagador.Text)+'", '+
   ' sexo = "'+ sSexo +'" '+
   ' WHERE clave_cuenta= "'+sClave_Cuenta+'"';

    sQuery2 :='UPDATE cuentas_fecha_elaboracion SET '+
             'fecha_elaboracion="'+formatdatetime('yyyy-mm-dd',defecha_elaboracion.Date)+'" '+
             'WHERE clave_cuenta= "'+sClave_Cuenta+'" ';
   try
     dmModulo_datos.msqTemporal.Sql.Text:= sQuery;
     dmModulo_datos.msqTemporal.ExecSql;

     dmModulo_datos.msqTemporal.Sql.Text:= sQuery2;
     dmModulo_datos.msqTemporal.ExecSql;
   except
     MessageDlg('Ocurrió un Error Actualizando la '+#13#10+
                '   información del "TITULAR"', mtError, [mbOK], 0);
     cmdGuardar.Enabled := true;
     result := false;
     Exit;
   end;    
   // -- Almacena el status Del Telefono (Fijo o de Recados)
   dmModulo_datos.msqTemporal.Sql.Text := 'SELECT status FROM corporativo.status_telefono '+
       'WHERE clave_cuenta = "' + sClave_Cuenta + '" And id_tipo = 4';
   dmModulo_datos.msqTemporal.Open;
   if dmModulo_datos.msqTemporal.RecordCount = 0 then
   begin
    sQuery := 'INSERT INTO corporativo.status_telefono SET '+
              'clave_cuenta = "'+ sClave_Cuenta +'", id_tipo = 4, ';
    if cmbTipoTel.Text = 'Recados' then sQuery := sQuery + 'status = 6, '
   else sQuery := sQuery + 'status = 0, ';
    sQuery := sQuery + 'usuario = "'+ frmMain.sClave_Usuario +'", '+
                       'fecha = Now()';
   end else
   begin
    sQuery := 'UPDATE corporativo.status_telefono SET ';
    if cmbTipoTel.Text = 'Recados' then sQuery := sQuery + 'status = 6, '
   else sQuery := sQuery + 'status = 0, ';
    sQuery := sQuery + 'usuario = "'+ frmMain.sClave_usuario +'", fecha = Now()  '+
       'WHERE clave_cuenta = "'+ sClave_Cuenta +'" And id_tipo = 4';
   end;
   try
     dmModulo_datos.msqTemporal.Sql.Text := sQuery;
     dmModulo_datos.msqTemporal.ExecSql;
   except
     MessageDlg('Ocurrió un Error Actualizando'+#13#10+
                ' Información del TIPO DE TELEFONO del '+#13#10+
                '                TITULAR', mtError, [mbOK], 0);
     cmdGuardar.Enabled := True;
     result := False;
     Exit;
   end;
   //--Almacena Datos del Trabajo del Titular
   dmModulo_datos.msqTemporal.Sql.Text := 'SELECT clave_cuenta FROM trabajo_cliente '+
                           'WHERE clave_cuenta = "' + sClave_Cuenta + '"';
   dmModulo_datos.msqTemporal.Open;
   if dmModulo_datos.msqTemporal.RecordCount = 0 then
    begin
    sQuery := 'INSERT INTO trabajo_cliente Set '+
      ' clave_cuenta="'+sClave_cuenta+'", '+
      ' empresa="'+StringReplace(txtTrabajo_cliente.Text,'"','',[rfReplaceAll])+'", '+
      ' puesto="'+StringReplace(txtPuesto_cliente.Text,'"','',[rfReplaceAll])+'", ';
    // Si es MTD y Tiene Aval y Sueldo del Aval es mayor a MTD cambiolo
    if ((sexpe = 'MTD') and (Trim(txtNombre_aval.Text)<>'') and
        (txtSueldo_Aval.Value > txtSueldo_cliente.Value)) then
      sQuery := sQuery + ' sueldo_mensual="'+FloatToStr(txtSueldo_Aval.Value)+'", '
    else
      sQuery := sQuery + ' sueldo_mensual="'+FloatToStr(txtSueldo_cliente.Value)+'", ';

    sQuery := sQuery +
       ' direccion="'+StringReplace(txtDomicilio_trabajo_cliente.Text,'"','',[rfReplaceAll])+'", '+
       ' telefono="'+StringReplace(txtTel_trabajo_cliente.Text,'"','',[rfReplaceAll])+'", '+
       ' antiguedad="'+StringReplace(txtMeses_Trabajo_Cliente.Text,'"','',[rfReplaceAll])+'", '+
       ' colonia="'+ StringReplace(txtColonia_Trabajo_Cliente.Text,'"','',[rfReplaceAll]) + '", '+
       ' ciudad="'+ StringReplace(txtCiudad_Trabajo_Cliente.Text,'"','',[rfReplaceAll]) + '", '+
       ' estado="'+ StringReplace(txtEstado_Trabajo_Cliente.Text,'"','',[rfReplaceAll]) +'" ';
   end
   else
   begin
    sQuery := 'UPDATE trabajo_cliente Set '+
      ' empresa="'+StringReplace(txtTrabajo_cliente.Text,'"','',[rfReplaceAll])+'", '+
      ' puesto="'+StringReplace(txtPuesto_cliente.Text,'"','',[rfReplaceAll])+'", ';
    // Si es MTD y Tiene Aval y Sueldo del Aval es mayor a MTD cambiolo
    if ((sexpe = 'MTD') and (Trim(txtNombre_aval.Text)<>'') and
        (txtSueldo_Aval.Value > txtSueldo_cliente.Value)) then
      sQuery := sQuery + ' sueldo_mensual="'+FloatToStr(txtSueldo_Aval.Value)+'", '
    else
      sQuery := sQuery + ' sueldo_mensual="'+FloatToStr(txtSueldo_cliente.Value)+'", ';

    sQuery := sQuery +
      ' direccion="'+StringReplace(txtDomicilio_trabajo_cliente.Text,'"','',[rfReplaceAll])+'", '+
      ' telefono="'+StringReplace(txtTel_trabajo_cliente.Text,'"','',[rfReplaceAll])+'", '+
      ' antiguedad="'+StringReplace(txtMeses_Trabajo_Cliente.Text,'"','',[rfReplaceAll])+'", '+
      ' colonia="'+ StringReplace(txtColonia_Trabajo_Cliente.Text,'"','',[rfReplaceAll]) + '", '+
      ' ciudad="'+ StringReplace(txtCiudad_Trabajo_Cliente.Text,'"','',[rfReplaceAll]) + '", '+
      ' estado="'+ StringReplace(txtEstado_Trabajo_Cliente.Text,'"','',[rfReplaceAll]) +'" '+
      ' WHERE clave_cuenta="'+sClave_cuenta+'"';
   end;
   try
     dmModulo_datos.msqTemporal.Sql.Text := sQuery;
     dmModulo_datos.msqTemporal.Open;
   except
     MessageDlg('Ocurrió un Error Actualizando'+#13#10+
                ' Información del TRABAJO del '+#13#10+
                '                TITULAR', mtError, [mbOK], 0);
     cmdGuardar.Enabled := True;
     result := False;
     Exit;
   end;

   //--Almacena Bienes del Titular
   dmModulo_datos.msqTemporal.Sql.Text := 'SELECT clave_cuenta FROM bienes_cliente '+
      'WHERE clave_cuenta = "'+ sClave_Cuenta +'"';
   dmModulo_datos.msqTemporal.open;
   if dmModulo_datos.msqTemporal.eof then
      sQuery := 'INSERT INTO bienes_cliente Set '+
      ' clave_cuenta="'+sClave_cuenta+'", '+
      ' casa="'+cmbCasa_cliente.Text+'", '+
      ' dependientes='+IntToStr(txtDependientes_cliente.AsInteger)+', '+
      ' color_casa="'+StringReplace(cColor_dom.Text,'"','',[rfReplaceAll])+'", '+
      ' nombre_soltera_mama="'+StringReplace(txtNombreMama.Text,'"','',[rfReplaceAll])+'", '+
      ' tipo_propiedad="'+cmbCasa_cliente.Text+'", '+
      ' tarjeta_credito="'+StringReplace(edVisa_banco.Text,'"','',[rfReplaceAll])+'", '+
      ' numero="'+StringReplace(edVisa_numero.Text,'"','',[rfReplaceAll])+'", '+
      ' limite_credito="'+IntToStr(cmbTipo_RC1.ItemIndex)+'", '+
      ' tarjeta_credito2="'+StringReplace(edMaster_banco.Text,'"','',[rfReplaceAll])+'", '+
      ' numero2="'+StringReplace(edMaster_numero.Text,'"','',[rfReplaceAll])+'", '+
      ' limite_credito2="'+IntToStr(cmbTipo_RC2.ItemIndex)+'"'
   else
      sQuery := 'UPDATE bienes_cliente Set '+
      ' casa="'+cmbCasa_cliente.Text+'", '+
      ' dependientes='+IntToStr(txtDependientes_cliente.AsInteger)+', '+
      ' color_casa="'+StringReplace(cColor_dom.Text,'"','',[rfReplaceAll])+'", '+
      ' nombre_soltera_mama="'+StringReplace(txtNombreMama.Text,'"','',[rfReplaceAll])+'", '+
      ' tipo_propiedad="'+cmbCasa_cliente.Text+'", '+
      ' tarjeta_credito="'+StringReplace(edVisa_banco.Text,'"','',[rfReplaceAll])+'", '+
      ' numero="'+StringReplace(edVisa_numero.Text,'"','',[rfReplaceAll])+'", '+
      ' limite_credito="'+IntToStr(cmbTipo_RC1.ItemIndex)+'", '+
      ' tarjeta_credito2="'+StringReplace(edMaster_banco.Text,'"','',[rfReplaceAll])+'", '+
      ' numero2="'+StringReplace(edMaster_numero.Text,'"','',[rfReplaceAll])+'", '+
      ' limite_credito2="'+IntToStr(cmbTipo_RC2.ItemIndex)+
      '" WHERE clave_cuenta="'+sClave_cuenta+'"';
   try
     dmModulo_datos.msqTemporal.Sql.Text := sQuery;
     dmModulo_datos.msqTemporal.ExecSql;
   except
     MessageDlg('Ocurrió un Error al Actualizar '+#13#10+
                '  los Datos de BIENES del'+#13#10+
                '             TITULAR', mtError, [mbOK], 0);
     cmdGuardar.Enabled := True;
     result := false;
     Exit;
   end;
   //--Almacena Datos de Otros Ingresos del Titular
   if txtOtrosIngresos.Value > 0 then
   begin
    dmModulo_datos.msqTemporal.Sql.Text := 'SELECT clave_cuenta FROM otros_ingresos '+
                            'WHERE clave_cuenta = "' + sClave_Cuenta + '"';
    dmModulo_datos.msqTemporal.Open;
    if dmModulo_datos.msqTemporal.RecordCount = 0 then
    begin
     sQuery := 'INSERT INTO otros_ingresos SET clave_cuenta = "'+ sClave_cuenta +'", '+
       'otros_ingresos = "'+ FloatToStr(txtOtrosIngresos.Value) +'", '+
       'fuente_ingresos = "'+ StringReplace(txtFuenteIngresos.Text,'"','',[rfReplaceAll])+'", '+
       'total_ingresos = "'+ FloatToStr(txtTotalIngresos.Value) +'"';
    end else
    begin
     sQuery := 'UPDATE otros_ingresos SET '+
       'otros_ingresos = "'+ FloatToStr(txtOtrosIngresos.Value) +'", '+
       'fuente_ingresos = "'+ StringReplace(txtFuenteIngresos.Text,'"','',[rfReplaceAll])+'", '+
       'total_ingresos = "'+ FloatToStr(txtTotalIngresos.Value) +'" '+
       'WHERE clave_cuenta="'+sClave_cuenta+'"';
     end;
    try
      dmModulo_datos.msqTemporal.Sql.Text := sQuery;
      dmModulo_datos.msqTemporal.ExecSql;
    except
      MessageDlg('Ocurrió un Error Actualizando'+#13#10+
                 ' Información de OTROS INGRESOS del '+#13#10+
                 '                TITULAR', mtError, [mbOK], 0);
      cmdGuardar.Enabled := True;
      result := False;
      Exit;
    end;
  end;
   //--Almacena Información del Archivo
   //Documentos del Archivo
   bDocsPresentados := False;
   sAcuse := '';
   sEnvia := '';
   for intInd := 0 to 12 do intOpciones[intInd]:=0;
   if cTipoIden.ItemIndex > 0    then bDocsPresentados := True;
   if chbComprobanteDom.Checked  then bDocsPresentados := True;
   if chbComprobanteIng.Checked  then bDocsPresentados := True;
   if chbSolicitud.Checked       then bDocsPresentados := True;
   if chbContrato.Checked        then bDocsPresentados := True;
   if chbVerificacion.Checked    then bDocsPresentados := True;
   if chbAcuse.Checked           then bDocsPresentados := True;
   if chbEnviaExp.Checked        then bDocsPresentados := True;

   if chbComprobanteDom.Checked   then intOpciones[1] := 1;
   if chbComprobanteIng.Checked   then intOpciones[2] := 1;
   if chbSolicitud.Checked        then intOpciones[3] := 1;
   if chbContrato.Checked         then intOpciones[4] := 1;
   if chbVerificacion.Checked     then intOpciones[5] := 1;
   if chbAcuse.Checked            then begin
      intOpciones[6] := 1;
      sAcuse := 'folio_acuse = "'+txtFolio_Recibo.Text+'", '+
                'fecha_acuse = "'+FormatDateTime('yyyy-mm-dd',txtFecha.Date)+'", ';
   end;
   if chbAutorizacionBuro.Checked then intOpciones[7] := 1;
   if chbReporteBuro.Checked      then intOpciones[8] := 1;
   if chbEnviaExp.Checked         then begin
      intOpciones[9] := 1;
      sEnvia := ', '+
        'fecha_envia_exp = "'+FormatDateTime('yyyy-mm-dd',txtFechaEnvio.date)+'" ';
   end;

   if bDocsPresentados then  begin
     dmModulo_datos.msqTemporal.Sql.Text := 'SELECT folio_cuenta FROM datos_investigacion '+
        'WHERE folio_cuenta = "'+sClave_Cuenta+'"';
     dmModulo_datos.msqTemporal.Open;
     if dmModulo_datos.msqTemporal.Eof then
        sQuery := 'INSERT INTO datos_investigacion SET '+
        'folio_cuenta="'+sClave_cuenta+'", '+
        'comprobante_domicilio="'+inttostr(intOpciones[1])+'", '+
        'comprobante_ingresos="'+inttostr(intOpciones[2])+'", '+
        'tipo_identificacion ="'+cTipoIden.Text+'",'+
        'folio_identificacion ="'+txtfolio.Text+'", '+
        'solicitud="'+inttostr(intOpciones[3])+'", '+
        'contrato="'+inttostr(intOpciones[4])+'", '+
        'verificacion_domiciliaria="'+inttostr(intOpciones[5])+'", '+
        'acuse_recibo="'+inttostr(intOpciones[6])+'", '+ sAcuse +
        'autorizacion_buro = "'+inttostr(intOpciones[7])+'",'+
        'reporte_buro = "'+inttostr(intOpciones[8])+'",'+
        'envia_exp = "'+IntToStr(intOpciones[9])+'"'+ sEnvia
     else
        sQuery := 'UPDATE datos_investigacion SET '+
        'comprobante_domicilio="'+inttostr(intOpciones[1])+'", '+
        'comprobante_ingresos="'+inttostr(intOpciones[2])+'", '+
        'tipo_identificacion ="'+cTipoIden.Text+'",'+
        'folio_identificacion ="'+txtfolio.Text+'", '+
        'solicitud="'+inttostr(intOpciones[3])+'", '+
        'contrato="'+inttostr(intOpciones[4])+'", '+
        'verificacion_domiciliaria="'+inttostr(intOpciones[5])+'", '+
        'acuse_recibo="'+inttostr(intOpciones[6])+'", '+ sAcuse +
        'autorizacion_buro = "'+inttostr(intOpciones[7])+'",'+
        'reporte_buro = "'+inttostr(intOpciones[8])+'", '+
        'envia_exp = "'+ IntToStr(intOpciones[9])+'"'+ sEnvia+
        'WHERE folio_cuenta="'+sClave_cuenta+'" ';
     try
       dmModulo_datos.msqTemporal.Sql.Text := sQuery;
       dmModulo_datos.msqTemporal.ExecSql;
     except
       MessageDlg('Ocurrió un Error al Actualizar los '+#13#10+
                  '   datos de INVESTIGACION'+#13#10+
                  '               del TITULAR', mtError, [mbOK], 0);
       cmdGuardar.Enabled := True;
       result := false;
       Exit;
     end;
   end;

   // Ubicación Domicilio 
   scFro := 'calle_frontal = "SIN INFO", ';
   scTra := 'calle_trasera = "SIN INFO", ';
   scIzq := 'calle_izq = "SIN INFO", ';
   scDer := 'calle_dch = "SIN INFO" ';
   if trim(lbFrontal.Caption) <> 'calle abajo' then
      scFro := 'calle_frontal="'+lbFrontal.Caption+'", ';
   if trim(lbTrasera.Caption) <> 'calle arriba' then
      scTra := 'calle_trasera="'+lbTrasera.Caption+'", ';
   if trim(lbIzq.Caption)   <> 'calle izquierda' then
      scIzq := 'calle_izq="'+lbIzq.Caption+'", ';
   if trim(lbDer.Caption)   <> 'calle derecha'   then
      scDer := 'calle_dch="'+lbDer.Caption+'"';

   dmModulo_datos.msqTemporal.sql.text := 'SELECT folio_cuenta '+
      'FROM corporativo.datos_investigacion '+
      'WHERE folio_cuenta = "'+sClave_Cuenta+'"';
   dmModulo_datos.msqTemporal.Open;
   if dmModulo_datos.msqTemporal.Eof then
     sQuery := 'Insert Into datos_investigacion Set '+
     ' folio_cuenta="'+sClave_cuenta+'", '+
     'numero_cuartos = "'+ predio +'", '+
     scFro + scTra + scIzq + scDer
   else
     sQuery := 'UPDATE datos_investigacion Set '+
     'numero_cuartos = "'+ predio +'", '+
     scFro + scTra + scIzq + scDer +
     ' Where folio_cuenta = "'+sClave_Cuenta+'"';
   try
      dmModulo_datos.msqTemporal.Sql.Text := sQuery;
      dmModulo_datos.msqTemporal.ExecSQL;
   except
      MessageDlg('  Ocurrió un error al Actualizar '+#13#10+
                 'la UBICACION DEL DOMICILIO '+#13#10+
                 '             del TITULAR', mtError, [mbOK], 0);
      cmdGuardar.Enabled := True;
      result := false;
      Exit;
   end;

   //--Almacena Datos de las Referencias
   if sClave_Cuenta = '' then begin
      messagebox(handle,'   No se pueden almacenar las Referencias para el Cliente.  '+#13#10+
                        'La clave del Cliente no existe o no tiene asignado un valor.',
                        'Atención...',48);
      cmdGuardar.Enabled := True;
      result := false;
      Exit;
   end;
   if (Trim(edNombre_rp1.Text)<>'') then begin
     dmModulo_datos.msqTemporal.Sql.Text := 'Select clave_cuenta '+
           'From corporativo.referencias_personales '+
           'Where clave_cuenta = "' + sClave_Cuenta + '" AND numero_referencia = 1';
     dmModulo_datos.msqTemporal.Open;
     if dmModulo_datos.msqTemporal.Eof then //Inserta Nueva Referencia
        sQuery := 'Insert Into referencias_personales  SET ' +
        ' nombre="'+TRIM(StringReplace(edNombre_rp1.Text,'"','',[rfReplaceAll]))+'", '+
        ' parentesco="'+ copy(cbRelacion_rp1.Items.Strings[cbRelacion_rp1.itemindex],1,2) +'", '+
        ' telefono="'+StringReplace(edTelefono_rp1.Text,'"','',[rfReplaceAll])+'", '+
        ' numero_referencia = 1,'+
        ' clave_cuenta = "'+ sClave_Cuenta+'"'
     else //Actualiza Referencia
        sQuery := 'UPDATE referencias_personales SET '+
        ' nombre="'+TRIM(StringReplace(edNombre_rp1.Text,'"','',[rfReplaceAll]))+'", '+
        ' parentesco="'+ copy(cbRelacion_rp1.Items.Strings[cbRelacion_rp1.itemindex],1,2) +'", '+
        ' telefono="'+StringReplace(edTelefono_rp1.Text,'"','',[rfReplaceAll])+'" '+
        ' WHERE clave_cuenta="'+sClave_cuenta+'" '+
        ' AND numero_referencia = 1';
     try
       dmModulo_datos.msqTemporal.Sql.Text := sQuery;
       dmModulo_datos.msqTemporal.ExecSql;
     except
       messagebox(handle,'Ocurrio un error Actualizando '+ #13#10 +
                         'la Referencia Personal 1 del TITULAR','Atención...', 48);
       cmdGuardar.Enabled := True;
       result := false;
       Exit;
     end;
   end;

   if (Trim(edNombre_rp2.Text)<>'') then begin
     dmModulo_datos.msqTemporal.Sql.Text := 'Select clave_cuenta '+
           'From referencias_personales '+
           'Where clave_cuenta = "' + sClave_Cuenta + '" AND numero_referencia = 2';
     dmModulo_datos.msqTemporal.Open;
     if dmModulo_datos.msqTemporal.Eof then
       sQuery := 'Insert Into referencias_personales  Set '+
       ' nombre="'+TRIM(StringReplace(edNombre_rp2.Text,'"','',[rfReplaceAll]))+'", '+
       ' parentesco="'+ copy(cbRelacion_rp2.Items.Strings[cbRelacion_rp2.itemindex],1,2) +'", '+
       ' telefono="'+StringReplace(edTelefono_rp2.Text,'"','',[rfReplaceAll])+'", '+
       ' numero_referencia = 2,'+
       ' clave_cuenta = "'+ sclave_Cuenta+'"'
     else
       sQuery := 'UPDATE referencias_personales  Set '+
       ' nombre="'+TRIM(StringReplace(edNombre_rp2.Text,'"','',[rfReplaceAll]))+'", '+
       ' parentesco="'+ copy(cbRelacion_rp2.Items.Strings[cbRelacion_rp2.itemindex],1,2) +'", '+
       ' telefono="'+StringReplace(edTelefono_rp2.Text,'"','',[rfReplaceAll])+'" '+
       ' WHERE clave_cuenta="'+sClave_cuenta+'" '+
       ' AND numero_referencia = 2';
     try
       dmModulo_datos.msqTemporal.Sql.Text := sQuery;
       dmModulo_datos.msqTemporal.ExecSql;
     except
       messagebox(handle,'Ocurrio un error Actualizando'+ #13#10 +
                         'la Referencia Personal 2 del TITUTLAR','Atención...', 48);
       cmdGuardar.Enabled := True;
       result := false;
       Exit;
     end;
   end;

   if (Trim(edNombre_rp3.Text)<>'') then begin
     dmModulo_datos.msqTemporal.Sql.Text := 'Select clave_cuenta '+
           'From referencias_personales '+
           'Where clave_cuenta = "' + sClave_Cuenta + '" AND numero_referencia = 3';
     dmModulo_datos.msqTemporal.Open;
     if dmModulo_datos.msqTemporal.Eof then
        sQuery := 'Insert Into referencias_personales  Set '+
        ' nombre="'+TRIM(StringReplace(edNombre_rp3.Text,'"','',[rfReplaceAll]))+'", '+
        ' parentesco="'+ copy(edRelacion_rp3.Items.Strings[edRelacion_rp3.itemindex],1,2) +'", '+
        ' telefono="'+StringReplace(edTelefono_rp3.Text,'"','',[rfReplaceAll])+'", '+
        ' numero_referencia = 3,'+
        ' clave_cuenta = "'+ sclave_Cuenta+'"'
     else
        sQuery := 'UPDATE referencias_personales  Set '+
        ' nombre="'+TRIM(StringReplace(edNombre_rp3.Text,'"','',[rfReplaceAll]))+'", '+
        ' parentesco="'+ copy(edRelacion_rp3.Items.Strings[edRelacion_rp3.itemindex],1,2) +'", '+
        ' telefono="'+StringReplace(edTelefono_rp3.Text,'"','',[rfReplaceAll])+'" '+
        ' WHERE clave_cuenta="'+sClave_cuenta+'" '+
        ' AND numero_referencia = 3';
     try
       dmModulo_datos.msqTemporal.Sql.Text := sQuery;
       dmModulo_datos.msqTemporal.ExecSql;
     except
       messagebox(handle,'Ocurrio un error Almacenando:'+ #13#10 +
                         'La Referencia Personal 3 del Cliente','Atención...', 48);
       cmdGuardar.Enabled := True;
       result := false;
       Exit;
     end;
   end;

   if (Trim(edNombre_rp4.Text)<>'') then begin
     dmModulo_datos.msqTemporal.Sql.Text := 'Select clave_cuenta '+
           'From referencias_personales '+
           'Where clave_cuenta = "' + sClave_Cuenta + '" AND numero_referencia = 4';
     dmModulo_datos.msqTemporal.Open;
     if dmModulo_datos.msqTemporal.Eof then
        sQuery := 'Insert Into referencias_personales  Set '+
        ' nombre="'+TRIM(StringReplace(edNombre_rp4.Text,'"','',[rfReplaceAll]))+'", '+
        ' parentesco="'+ copy(edRelacion_rp4.Items.Strings[edRelacion_rp4.itemindex],1,2) +'", '+
        ' telefono="'+StringReplace(edTelefono_rp4.Text,'"','',[rfReplaceAll])+'", '+
        ' numero_referencia = 4,'+
        ' clave_cuenta = "'+ sclave_Cuenta+'"'
     else
        sQuery := 'UPDATE referencias_personales  Set '+
        ' nombre="'+TRIM(StringReplace(edNombre_rp4.Text,'"','',[rfReplaceAll]))+'", '+
        ' parentesco="'+ copy(edRelacion_rp4.Items.Strings[edRelacion_rp4.itemindex],1,2) +'", '+
        ' telefono="'+StringReplace(edTelefono_rp4.Text,'"','',[rfReplaceAll])+'" '+
        ' WHERE clave_cuenta="'+sClave_cuenta+'" '+
        ' AND numero_referencia = 4';
     try
       dmModulo_datos.msqTemporal.Sql.Text := sQuery;
       dmModulo_datos.msqTemporal.ExecSql;
     except
       messagebox(handle,'Ocurrio un error Almacenando:'+ #13#10 +
                         'La Referencia Personal 4 del Cliente','Atención...', 48);
       cmdGuardar.Enabled := True;
       result := false;
       Exit;
     end;
   end;
   // Si tiene datos del aval los almacena
   if Trim(txtNombre_aval.Text) <> '' then
    almacena_aval;

   //--Si es Credinomina o CrediBips, almacena datos extras
   if (cTipo.ItemIndex = 2)  then begin
      dmModulo_datos.msqTemporal.Sql.Text := 'SELECT clave_cuenta FROM datos_extra_credito WHERE '+
         'clave_cuenta = "'+sClave_Cuenta+'"';
      dmModulo_datos.msqTemporal.Open;
      if dmModulo_datos.msqTemporal.Eof then begin //Inserta el Registro
         if cTipo.ItemIndex = 2 then begin //Es CrediBips???
            sQuery := 'INSERT INTO datos_extra_credito SET '+
               'clave_cuenta = "'+ sClave_cuenta +'", '+
               'expedientee = "'+ txtExpediente.Text +'", '+
               'plaza = "'+ txtPlaza.Text +'", '+
               'num_ficha = "'+txtNum_Nomina.Text+'"';
         end else begin
            sQuery := 'INSERT INTO datos_extra_credito SET '+
               'clave_cuenta = "'+ sClave_cuenta +'", '+
               'expedientee = "'+ txtExpediente.Text +'", '+
               'plaza = "'+ txtplaza.Text +'", '+
               'num_empleado = "'+ txtNum_Empleado.Text +'", '+
               'num_pension = "'+ txtNum_Pension.Text +'", '+
               'sindicato = "'+ txtSindicato.Text +'", '+
               'zona_escolar = "'+ txtZonaE.Text +'", '+
               'filiacion = "'+ txtFiliacion.Text +'", '+
               'tipo_personal = "'+ txtTPersonal.Text +'", '+
               'tipo_contrato = "'+ txtTContrato.Text +'", '+
               'num_plaza = "'+ txtNum_Plaza.Text +'", '+
               'num_ficha = "'+ txtNum_Ficha.Text +'", '+
               'cve_centro_trabajo = "'+ txtCCTrabajo.Text +'" ';
         end;
      end else begin //Solo Actualiza datos
         if cTipo.ItemIndex = 2 then begin
            sQuery := 'UPDATE datos_extra_credito SET '+
               'expedientee = "'+ txtExpediente.Text +'", '+
               'plaza = "'+ txtPlaza.Text +'", ' +
               'num_ficha = "'+txtNum_Nomina.Text+'" '+
               'WHERE clave_cuenta = "'+ sClave_cuenta +'"';
         end else begin
            sQuery := 'UPDATE datos_extra_credito SET '+
               'expedientee = "'+ txtExpediente.Text +'", '+
               'plaza = "'+ txtplaza.Text +'", '+
               'num_empleado = "'+ txtNum_Empleado.Text +'", '+
               'num_pension = "'+ txtNum_Pension.Text +'", '+
               'sindicato = "'+ txtSindicato.Text +'", '+
               'zona_escolar = "'+ txtZonaE.Text +'", '+
               'filiacion = "'+ txtFiliacion.Text +'", '+
               'tipo_personal = "'+ txtTPersonal.Text +'", '+
               'tipo_contrato = "'+ txtTContrato.Text +'", '+
               'num_plaza = "'+ txtNum_Plaza.Text +'", '+
               'num_ficha = "'+ txtNum_Ficha.Text +'", '+
               'cve_centro_trabajo = "'+ txtCCTrabajo.Text +'" '+
               'WHERE clave_cuenta = "'+ sClave_cuenta +'"';
         end;
      end;
      try
         dmModulo_datos.msqTemporal.Sql.Text := sQuery;
         dmModulo_datos.msqTemporal.ExecSQL;
      except
         MessageDlg(' Error al Actualizar los'+#13#10+
                    'Datos Extras del TITULAR.', mtInformation, [mbOK], 0);
         cmdGuardar.Enabled := True;
         Result := False;
         Exit;
      end;
   end;
end;

function TfrmScoreCard.actualiza_conyuge: Boolean;
var i : Integer;
begin
   Result := True;
   if Trim(txtNombre_conyuge_Cliente.Text) = '' then Exit;

   dmModulo_datos.msqTemporal.Sql.Text := 'SELECT clave_cuenta FROM corporativo.conyuge '+
                           'WHERE clave_cuenta = "'+ sClave_cuenta +'"';
   dmModulo_datos.msqTemporal.Open;
   if dmModulo_datos.msqTemporal.Eof then begin
      dmModulo_datos.msqTemporal.Sql.Text:= 'LOCK TABLES conyuge LOW_PRIORITY WRITE ';
      dmModulo_datos.msqTemporal.Open;
      dmModulo_datos.msqTemporal.Sql.Text:= 'Select Max(clave_conyuge) clave_conyuge From conyuge '+
         'where length(clave_conyuge) = 9';
      dmModulo_datos.msqTemporal.Open;

      sClave_conyuge := IntToStr(StrToInt(Copy(dmModulo_datos.msqTemporal.FieldByName('clave_conyuge').AsString,2,8))+1);
      for i := Length(sClave_conyuge)+1 to 8 do sClave_conyuge:='0'+sClave_conyuge;
      sClave_conyuge:='C'+sClave_conyuge;

      dmModulo_datos.msqTemporal.Sql.Text:='Insert Into corporativo.conyuge Set '+
      ' clave_cuenta="'+sClave_cuenta+'", '+
      ' clave_conyuge="'+sClave_conyuge+'", '+
      ' paterno="'+TRIM(StringReplace(txtPaterno_conyuge_Cliente.Text,'"','',[rfReplaceAll]))+'", '+
      ' materno="'+TRIM(StringReplace(txtMaterno_conyuge_Cliente.Text,'"','',[rfReplaceAll]))+'", '+
      ' nombre="'+TRIM(StringReplace(txtNombre_conyuge_Cliente.Text,'"','',[rfReplaceAll]))+'", '+
      ' domicilio="'+StringReplace(txtDomicilio_cliente.Text,'"','',[rfReplaceAll])+' '+
               StringReplace(txtNumcasa_cliente.Text,'"','',[rfReplaceAll])+'  '+
               StringReplace(txtColonia_cliente.Text,'"','',[rfReplaceAll])+'  '+
               StringReplace(txtCiudad_cliente.Text,'"','',[rfReplaceAll])+'" ';
   end else begin
      dmModulo_datos.msqTemporal.Sql.Text:='UPDATE corporativo.conyuge Set '+
      ' paterno="'+TRIM(StringReplace(txtPaterno_conyuge_Cliente.Text,'"','',[rfReplaceAll]))+'", '+
      ' materno="'+TRIM(StringReplace(txtMaterno_conyuge_Cliente.Text,'"','',[rfReplaceAll]))+'", '+
      ' nombre="'+TRIM(StringReplace(txtNombre_conyuge_Cliente.Text,'"','',[rfReplaceAll]))+'", '+
      ' domicilio="'+StringReplace(txtDomicilio_cliente.Text,'"','',[rfReplaceAll])+' '+
             StringReplace(txtNumcasa_cliente.Text,'"','',[rfReplaceAll])+'  '+
             StringReplace(txtColonia_cliente.Text,'"','',[rfReplaceAll])+'  '+
             StringReplace(txtCiudad_cliente.Text,'"','',[rfReplaceAll])+'" '+
      ' WHERE clave_cuenta="'+sClave_cuenta+'" ';
   end;
   try
      dmModulo_datos.msqTemporal.ExecSql;
      dmModulo_datos.msqTemporal.Sql.Text := 'Unlock Tables';
      dmModulo_datos.msqTemporal.ExecSql;
      Result := True;
   except
      messagebox(handle, 'Ocurrio un error al Actualizar el Conyuge del Cliente',
                         'Atención...',48);
      dmModulo_datos.msqTemporal.Sql.Text := 'Unlock Tables';
      dmModulo_datos.msqTemporal.ExecSql;
      Result := False;
   end;
end;

function TfrmScoreCard.almacena_cliente: Boolean;
var sQuery, sExpe, sSexo, sEnvia, sAcuse,
    scFro, scTra, scIzq, scDer, sTelefonos : string;
    bDocsPresentados : Boolean;
    intInd, i : Integer;
    intOpciones : array[0..15] of Integer;
begin
   Result := True;

   //Obtiene la cuenta T del Cliente Nuevo
   with dmModulo_Datos do begin
      msqTemporal.Sql.Text:= 'LOCK TABLES corporativo.cuentas LOW_PRIORITY WRITE, '+
                             'personal.empleado LOW_PRIORITY WRITE, '+
                             'corporativo.seguimiento_tarjeta LOW_PRIORITY WRITE';
      msqTemporal.Open;
      msqTemporal_local.Sql.Text:='LOCK TABLES corporativo_local.pgeneral LOW_PRIORITY WRITE';
      msqTemporal_local.Open;

      msqTemporal.Sql.Text:= 'Select Max(clave_cuenta) clave_cuenta From cuentas '+
      ' Where clave_cuenta like "T%"';
      msqTemporal.Open;

      sClave_cuenta := IntToStr(StrToInt(Copy(msqTemporal.FieldByName('clave_cuenta').AsString,2,8))+1);
      for i:=Length(sClave_cuenta)+1 to 8 do
        sClave_cuenta := '0' + sClave_cuenta;

      sClave_cuenta := 'T' + sClave_cuenta;

      //Obtiene el Numero de Previo
      msqTemporal_local.Sql.Text:='SELECT numero_tarjeta+1 numero_tarjeta '+
         'FROM corporativo_local.pgeneral '+
         'WHERE clave_muebleria ="'+sClave_muebleria+'" ';
      msqTemporal_local.Open;
      ceTarjeta.AsInteger := msqTemporal_local.FieldByName('numero_tarjeta').AsInteger;
      txtClave_cuenta.Text := sClave_cuenta;
      sexpe:='';
      case cTipo.ItemIndex of
         1 : sexpe:='MTD';
         2 : begin
             sexpe:='U001';
             txtNum_Ficha.Text := txtNum_Nomina.Text;
             msqEmpleado.Sql.Text := 'UPDATE personal.empleado SET '+
                                     'clave_cuenta = "' + sClave_Cuenta + '" '+
                                     'WHERE id_numnomina = "' + txtNum_Ficha.Text + '" ';
             msqEmpleado.ExecSql;
             end;
         3 : sexpe := 'CDTZ';
         4 : sexpe := 'INME';
         5 : sexpe := 'GARA';
         6 : sexpe := 'CMBC';
      end;

      //Establece el sexo del Cliente
      sSexo := '1';
      if rbFemenino.Checked then sSexo := '0';

      sQuery:= 'Insert Into cuentas Set '+
      ' clave_cuenta="'+sClave_Cuenta+'", '+
      ' nombre="'+TRIM(StringReplace(txtNombre_cliente.Text,'"','',[rfReplaceAll]))+'", '+
      ' paterno="'+TRIM(StringReplace(txtPaterno_cliente.Text,'"','',[rfReplaceAll]))+'", '+
      ' materno="'+TRIM(StringReplace(txtMaterno_cliente.Text,'"','',[rfReplaceAll]))+'", '+
      ' fecha_nacimiento= "'+ formatdatetime('yyyy-mm-dd', deNacimiento_Cliente.date) +'", '+
      ' estado_civil='+IntToStr(cmbEstado_civil_cliente.ItemIndex)+', '+
      ' rfc="'+StringReplace(txtRFC_cliente.Text,'"','',[rfReplaceAll])+'", '+
      ' telefono_movil= "'+ txtTel_Movil_Cliente.Text + '", '+
      ' mail="'+StringReplace(txtCorreoE_Cliente.Text,'"','',[rfReplaceAll])+'", '+
      ' domicilio="'+StringReplace(txtDomicilio_cliente.Text,'"','',[rfReplaceAll])+'", '+
      ' numero_casa="'+StringReplace(txtNumcasa_cliente.Text,'"','',[rfReplaceAll])+'", '+
      ' colonia="'+StringReplace(txtColonia_cliente.Text,'"','',[rfReplaceAll])+'", '+
      ' categoria="'+StringReplace(txtCategoria_cliente.Text,'"','',[rfReplaceAll])+'", '+
      ' domicilio_entre_calles="'+StringReplace(txtCalles_cliente.Text,'"','',[rfReplaceAll])+'", '+
      ' comentarios_crediticios = concat("'+ StringReplace(txtComentarios.Text,'"','',[rfReplaceAll]) +' ",curdate(),".. "), '+
      ' ciudad="'+StringReplace(txtCiudad_cliente.Text,'"','',[rfReplaceAll])+'", '+
      ' municipio="'+StringReplace(txtMunicipio_cliente.Text,'"','',[rfReplaceAll])+'", '+
      ' estado="'+StringReplace(txtEstado_cliente.Text,'"','',[rfReplaceAll])+'", '+
      ' telefono="'+StringReplace(txtTelefono_cliente.Text,'"','',[rfReplaceAll])+'", '+
      ' codigo_postal="'+StringReplace(txtCP_cliente.Text,'"','',[rfReplaceAll])+'", '+
      ' meses_poblacion="'+ floattostr(txtMeses_Poblacion_Cliente.Value)+ '", '+
      ' meses_domicilio="'+ floattostr(txtMeses_Domicilio_Cliente.Value)+ '", '+
      ' numero_ficha="'+ txtNum_Ficha.Text +'",'+
      ' expediente ="'+sexpe+'",'+
      ' numero_tarjeta= "'+ceTarjeta.Text+'", '+
      ' clave_usuario= "' + sClave_Usuario +'", '+
      ' usuario_captura = "'+ sClave_Usuario + '", ';
     //' fecha_captura="'+formatdatetime('yyyy-mm-dd',defecha_captura.date)+'", ';

      if cTipo.ItemIndex <> 2 then begin //Si no es credibips
         sQuery := sQuery + 'status = '+IntToStr(cmbStatus2.ItemIndex)+', '+
                            'determinante = 2, ';
      end else begin
         sQuery := sQuery + 'status = 9, '+
                            'determinante = 7, ';

         //Inserta Registro en la tabla Verificacion Telefonica
         sTelefonos := '';
         if Trim(txtTel_Movil_Cliente.Text) <> '' then
            sTelefonos := sTelefonos + ', respuesta_cel = "ACTIVADO"';
         if Trim(txtTelefono_Cliente.Text) <> '' then
            sTelefonos := sTelefonos + ', respuesta_domicilio = "ACTIVADO"';
         if Trim(txtTel_trabajo_Cliente.Text) <> '' then
            sTelefonos := sTelefonos + ', respuesta_empleo = "ACTIVADO"';

         msqTemporal.Sql.Text := 'INSERT INTO corporativo.verificacion_telefonica SET '+
            'clave_cuenta = "'+ sClave_Cuenta +'", '+
            'fecha_captura = curdate(), '+
            'usuario_captura = "'+ sClave_Usuario +'", '+
            'finalizada = 1, '+
            'usuario_actualiza = "'+ sClave_Usuario +'", '+
            'fecha_actualiza = curdate(), '+
            'validada = 1' + sTelefonos;
         msqTemporal.ExecSql;

         //Inserta Registro en la tabla Verificacion Domiciliaria
         msqTemporal.Sql.Text := 'INSERT INTO corporativo.verificacion_domiciliaria SET '+
            'clave_cuenta = "'+ sClave_cuenta +'", tipo = "VALI", '+
            'verificado = 1, observaciones = "VALIDADA POR BURO"';
         msqTemporal.ExecSql;
      end;

     { sQuery := sQuery +
      ' fecha_actualizacion=CurDate(), '+

      ' fecha_captura=CurDate(), '+

      ' cuenta_origen="'+Copy(sclave_muebleria,2,3)+'-'+COPY(sClave_Cuenta,2,20)+'",'+
      ' capacidad_pago= "'+ floattostr(ceCap_Pag_Quin.Value)+ '", '+
      ' pagador = "'+TRIM(txtPagador.Text)+'" , '+
      ' limite_credito = "'+ floattostr((ceCap_Pag_Quin.Value*2) * 13) + '", '+
      ' sexo = "'+sSexo+'" ';   }

      sQuery := sQuery +
      ' fecha_actualizacion=CurDate(), ';
      //Se almacena la fecha de captura dependiendo el nivel que tenga el usuario que esta ingresando al modulo
      if(iNivel>=3)then begin
            sQuery:= sQuery + ' fecha_captura="'+formatdatetime('yyyy-mm-dd',defecha_captura.date)+'", ';
      end else begin
            sQuery := sQuery + ' fecha_captura=CurDate(), ';
      end;

      sQuery := sQuery + ' cuenta_origen="'+Copy(sclave_muebleria,2,3)+'-'+COPY(sClave_Cuenta,2,20)+'",'+
      ' capacidad_pago= "'+ floattostr(ceCap_Pag_Quin.Value)+ '", '+
      ' pagador = "'+TRIM(txtPagador.Text)+'" , '+
      ' limite_credito = "'+ floattostr((ceCap_Pag_Quin.Value*2) * 13) + '", '+
      ' sexo = "'+sSexo+'" ';

      try
        msqTemporal.Sql.Text:= sQuery;
        msqTemporal.ExecSql;

        msqTemporal.Sql.Text:='Unlock Tables';
        msqTemporal.Open;

        msqTemporal_local.Sql.Text:='UPDATE corporativo_local.pgeneral set numero_tarjeta= numero_tarjeta+1 '+
         'where clave_muebleria ="'+sClave_muebleria+'"';
        msqTemporal_local.ExecSql;
        msqTemporal_local.Sql.Text := 'UNLOCK TABLES';
        msqTemporal_local.ExecSql;
      except
        msqTemporal.Sql.Text:='Unlock Tables';
        msqTemporal.ExecSql;
        msqTemporal_local.Sql.Text := 'UNLOCK TABLES';
        msqTemporal_local.ExecSql;
        messagebox(handle,'Ocurrio un error Almacenando el Cliente','Atención...', 48);
        cmdGuardar.Enabled := True;
        result := false;
        Exit;
      end;
   end;
   // Almacenar datos de Fecha de Elaboracion - Modificado 13 junio 2009
   dmModulo_Datos.msqTemporal.Sql.Text := 'Insert Into cuentas_fecha_elaboracion Set '+
      'clave_cuenta = "'+sClave_Cuenta+'", '+
      'fecha_elaboracion = "'+ formatdatetime('yyyy-mm-dd', defecha_elaboracion.Date) +'", '+
      'clave_usuario = "'+ sClave_Usuario + '"';
   dmModulo_Datos.msqTemporal.ExecSql;

   // -- Almacena el status Del Telefono (Fijo o de Recados)
   sQuery := 'INSERT INTO corporativo.status_telefono SET '+
             'clave_cuenta = "'+ sClave_Cuenta +'", id_tipo = 4, ';
   if cmbTipoTel.Text = 'Recados' then sQuery := sQuery + 'status = 6, '
   else sQuery := sQuery + 'status = 0, ';
   sQuery := sQuery + 'usuario = "'+ frmMain.sClave_Usuario +'", '+
                      'fecha = Now()';
   try
     dmModulo_datos.msqTemporal.Sql.Text := sQuery;
     dmModulo_datos.msqTemporal.ExecSql;
   except
     MessageDlg('Ocurrió un Error Actualizando'+#13#10+
                ' Información del TIPO DE TELEFONO del '+#13#10+
                '                TITULAR', mtError, [mbOK], 0);
     cmdGuardar.Enabled := True;
     result := False;
     Exit;
   end;

   //--Almacena Datos del Trabajo del Titular
   sQuery := 'INSERT INTO trabajo_cliente Set '+
      ' clave_cuenta="'+sClave_cuenta+'", '+
      ' empresa="'+StringReplace(txtTrabajo_cliente.Text,'"','',[rfReplaceAll])+'", '+
      ' puesto="'+StringReplace(txtPuesto_cliente.Text,'"','',[rfReplaceAll])+'", '+
      ' sueldo_mensual="'+FloatToStr(txtSueldo_cliente.Value)+'", '+
      ' direccion="'+StringReplace(txtDomicilio_trabajo_cliente.Text,'"','',[rfReplaceAll])+'", '+
      ' telefono="'+StringReplace(txtTel_trabajo_cliente.Text,'"','',[rfReplaceAll])+'", '+
      ' antiguedad="'+StringReplace(txtMeses_Trabajo_Cliente.Text,'"','',[rfReplaceAll])+'", '+
      ' colonia="'+ StringReplace(txtColonia_Trabajo_Cliente.Text,'"','',[rfReplaceAll]) + '", '+
      ' ciudad="'+ StringReplace(txtCiudad_Trabajo_Cliente.Text,'"','',[rfReplaceAll]) + '", '+
      ' estado="'+ StringReplace(txtEstado_Trabajo_Cliente.Text,'"','',[rfReplaceAll]) +'" ';
   try
     dmModulo_datos.msqTemporal.Sql.Text := sQuery;
     dmModulo_datos.msqTemporal.Open;
   except
     MessageDlg('Ocurrió un Error Almacenando'+#13#10+
                ' Información del TRABAJO del '+#13#10+
                '                TITULAR', mtError, [mbOK], 0);
     cmdGuardar.Enabled := True;
     result := False;
     Exit;
   end;

   //--Almacena Bienes del Titular
   sQuery := 'INSERT INTO bienes_cliente Set '+
   ' clave_cuenta="'+sClave_cuenta+'", '+
   ' casa="'+cmbCasa_cliente.Text+'", '+
   ' dependientes='+IntToStr(txtDependientes_cliente.AsInteger)+', '+
   ' color_casa="'+StringReplace(cColor_dom.Text,'"','',[rfReplaceAll])+'", '+
   ' nombre_soltera_mama="'+StringReplace(txtNombreMama.Text,'"','',[rfReplaceAll])+'", '+
   ' tipo_propiedad="'+cmbCasa_cliente.Text+'", '+
   ' tarjeta_credito="'+StringReplace(edVisa_banco.Text,'"','',[rfReplaceAll])+'", '+
   ' numero="'+StringReplace(edVisa_numero.Text,'"','',[rfReplaceAll])+'", '+
   ' limite_credito="'+IntToStr(cmbTipo_RC1.ItemIndex)+'", '+
   ' tarjeta_credito2="'+StringReplace(edMaster_banco.Text,'"','',[rfReplaceAll])+'", '+
   ' numero2="'+StringReplace(edMaster_numero.Text,'"','',[rfReplaceAll])+'", '+
   ' limite_credito2="'+IntToStr(cmbTipo_RC2.ItemIndex)+'"';
   try
     dmModulo_datos.msqTemporal.Sql.Text := sQuery;
     dmModulo_datos.msqTemporal.ExecSql;
   except
     MessageDlg('Ocurrió un Error al Almacenar'+#13#10+
                '  los Datos de BIENES del'+#13#10+
                '             TITULAR', mtError, [mbOK], 0);
     cmdGuardar.Enabled := True;
     result := false;
     Exit;
   end;

   //--Almacena Información del Archivo
   //Documentos del Archivo
   bDocsPresentados := False;
   sAcuse := '';
   sEnvia := '';
   for intInd := 0 to 12 do intOpciones[intInd]:=0;
   if cTipoIden.ItemIndex > 0    then bDocsPresentados := True;
   if chbComprobanteDom.Checked  then bDocsPresentados := True;
   if chbComprobanteIng.Checked  then bDocsPresentados := True;
   if chbSolicitud.Checked       then bDocsPresentados := True;
   if chbContrato.Checked        then bDocsPresentados := True;
   if chbVerificacion.Checked    then bDocsPresentados := True;
   if chbAcuse.Checked           then bDocsPresentados := True;
   if chbEnviaExp.Checked        then bDocsPresentados := True;

   if chbComprobanteDom.Checked   then intOpciones[1] := 1;
   if chbComprobanteIng.Checked   then intOpciones[2] := 1;
   if chbSolicitud.Checked        then intOpciones[3] := 1;
   if chbContrato.Checked         then intOpciones[4] := 1;
   if chbVerificacion.Checked     then intOpciones[5] := 1;
   if chbAcuse.Checked            then begin
      intOpciones[6] := 1;
      sAcuse := 'folio_acuse = "'+txtFolio_Recibo.Text+'", '+
                'fecha_acuse = "'+FormatDateTime('yyyymmdd',txtFecha.Date)+'", ';
   end;
   if chbAutorizacionBuro.Checked then intOpciones[7] := 1;
   if chbReporteBuro.Checked      then intOpciones[8] := 1;
   if chbEnviaExp.Checked         then begin
      intOpciones[9] := 1;
      sEnvia := ', '+
        'sfecha_envia_exp = "'+FormatDateTime('yyyymmdd',txtFechaEnvio.date)+'"';
   end;

   if bDocsPresentados then  begin
     sQuery := 'INSERT INTO datos_investigacion SET '+
        'folio_cuenta="'+sClave_cuenta+'", '+
        'comprobante_domicilio="'+inttostr(intOpciones[1])+'", '+
        'comprobante_ingresos="'+inttostr(intOpciones[2])+'", '+
        'tipo_identificacion ="'+cTipoIden.Text+'",'+
        'folio_identificacion ="'+txtfolio.Text+'", '+
        'solicitud="'+inttostr(intOpciones[3])+'", '+
        'contrato="'+inttostr(intOpciones[4])+'", '+
        'verificacion_domiciliaria="'+inttostr(intOpciones[5])+'", '+
        'acuse_recibo="'+inttostr(intOpciones[6])+'", '+ sAcuse + 
        'autorizacion_buro = "'+inttostr(intOpciones[7])+'",'+
        'reporte_buro = "'+inttostr(intOpciones[8])+'", '+
        'envia_exp = "'+IntToStr(intOpciones[9])+'"'+sEnvia;
     try
       dmModulo_datos.msqTemporal.Sql.Text := sQuery;
       dmModulo_datos.msqTemporal.ExecSql;
     except
       MessageDlg('Ocurrió un Error al Almacenar los '+#13#10+
                  '   datos de INVESTIGACION'+#13#10+
                  '               del TITULAR', mtError, [mbOK], 0);
       cmdGuardar.Enabled := True;
       result := false;
       Exit;
     end;
   end;

   //  Ubicación Domicilio 
   scFro := 'calle_frontal = "SIN INFO", ';
   scTra := 'calle_trasera = "SIN INFO", ';
   scIzq := 'calle_izq = "SIN INFO", ';
   scDer := 'calle_dch = "SIN INFO" ';
   if trim(lbFrontal.Caption) <> 'calle abajo' then
      scFro := 'calle_frontal="'+lbFrontal.Caption+'", ';
   if trim(lbTrasera.Caption) <> 'calle arriba' then
      scTra := 'calle_trasera="'+lbTrasera.Caption+'", ';
   if trim(lbIzq.Caption)   <> 'calle izquierda' then
      scIzq := 'calle_izq="'+lbIzq.Caption+'", ';
   if trim(lbDer.Caption)   <> 'calle derecha'   then
      scDer := 'calle_dch="'+lbDer.Caption+'"';

   sQuery := 'Insert Into datos_investigacion Set '+
   ' folio_cuenta="'+sClave_cuenta+'", '+
   'numero_cuartos = "'+ predio +'", '+
   scFro + scTra + scIzq + scDer;
   try
      dmModulo_datos.msqTemporal.Sql.Text := sQuery;
      dmModulo_datos.msqTemporal.ExecSQL;
   except
      MessageDlg('  Ocurrió un error al Almacenar '+#13#10+
                 'la UBICACION DEL DOMICILIO '+#13#10+
                 '             del TITULAR', mtError, [mbOK], 0);
      cmdGuardar.Enabled := True;
      result := false;
      Exit;
   end;

   //--Almacena Datos de las Referencias
   if (Trim(edNombre_rp1.Text)<>'') then begin
      sQuery := 'Insert Into referencias_personales  SET ' +
         ' nombre="'+TRIM(StringReplace(edNombre_rp1.Text,'"','',[rfReplaceAll]))+'", '+
         ' parentesco="'+ copy(cbRelacion_rp1.Items.Strings[cbRelacion_rp1.itemindex],1,2) +'", '+
         ' telefono="'+StringReplace(edTelefono_rp1.Text,'"','',[rfReplaceAll])+'", '+
         ' numero_referencia = 1,'+
         ' clave_cuenta = "'+ sClave_Cuenta+'"';
      try
         dmModulo_datos.msqTemporal.Sql.Text := sQuery;
         dmModulo_datos.msqTemporal.ExecSql;
      except
         messagebox(handle,'Ocurrio un error Almacenando '+ #13#10 +
                         'la Referencia Personal 1 del TITULAR','Atención...', 48);
         cmdGuardar.Enabled := True;
         result := false;
         Exit;
      end;
   end;

   if (Trim(edNombre_rp2.Text)<>'') then begin
      sQuery := 'Insert Into referencias_personales  Set '+
         ' nombre="'+TRIM(StringReplace(edNombre_rp2.Text,'"','',[rfReplaceAll]))+'", '+
         ' parentesco="'+ copy(cbRelacion_rp2.Items.Strings[cbRelacion_rp2.itemindex],1,2) +'", '+
         ' telefono="'+StringReplace(edTelefono_rp2.Text,'"','',[rfReplaceAll])+'", '+
         ' numero_referencia = 2,'+
         ' clave_cuenta = "'+ sclave_Cuenta+'"';
      try
         dmModulo_datos.msqTemporal.Sql.Text := sQuery;
         dmModulo_datos.msqTemporal.ExecSql;
      except
         messagebox(handle,'Ocurrio un error Almacenando'+ #13#10 +
                         'la Referencia Personal 2 del TITUTLAR','Atención...', 48);
         cmdGuardar.Enabled := True;
         result := false;
         Exit;
      end;
   end;

   if (Trim(edNombre_rp3.Text)<>'') then begin
      sQuery := 'Insert Into referencias_personales  Set '+
         ' nombre="'+TRIM(StringReplace(edNombre_rp3.Text,'"','',[rfReplaceAll]))+'", '+
         ' parentesco="'+ copy(edRelacion_rp3.Items.Strings[edRelacion_rp3.itemindex],1,2) +'", '+
         ' telefono="'+StringReplace(edTelefono_rp3.Text,'"','',[rfReplaceAll])+'", '+
         ' numero_referencia = 3,'+
         ' clave_cuenta = "'+ sclave_Cuenta+'"';
      try
         dmModulo_datos.msqTemporal.Sql.Text := sQuery;
         dmModulo_datos.msqTemporal.ExecSql;
      except
         messagebox(handle,'Ocurrio un error Almacenando'+ #13#10 +
                         'La Referencia Personal 3 del Cliente','Atención...', 48);
         cmdGuardar.Enabled := True;
         result := false;
         Exit;
      end;
   end;

   if (Trim(edNombre_rp4.Text)<>'') then begin
      sQuery := 'Insert Into referencias_personales  Set '+
         ' nombre="'+TRIM(StringReplace(edNombre_rp4.Text,'"','',[rfReplaceAll]))+'", '+
         ' parentesco="'+ copy(edRelacion_rp4.Items.Strings[edRelacion_rp4.itemindex],1,2) +'", '+
         ' telefono="'+StringReplace(edTelefono_rp4.Text,'"','',[rfReplaceAll])+'", '+
         ' numero_referencia = 4,'+
         ' clave_cuenta = "'+ sclave_Cuenta+'"';
      try
         dmModulo_datos.msqTemporal.Sql.Text := sQuery;
         dmModulo_datos.msqTemporal.ExecSql;
      except
         messagebox(handle,'Ocurrio un error Almacenando'+ #13#10 +
                           'La Referencia Personal 4 del Cliente','Atención...', 48);
         cmdGuardar.Enabled := True;
         result := false;
         Exit;
      end;
   end;

   //--Si es Credinomina o CrediBips, almacena datos extras
   if ((cTipo.ItemIndex = 2)) then begin
      if cTipo.ItemIndex = 2 then begin //Es CrediBips???
         sQuery := 'INSERT INTO datos_extra_credito SET '+
            'clave_cuenta = "'+ sClave_cuenta +'", '+
            'expedientee = "'+ txtExpediente.Text +'", '+
            'plaza = "'+ txtPlaza.Text +'", '+
            'num_ficha = "'+txtNum_Nomina.Text+'"';
      end else begin
         sQuery := 'INSERT INTO datos_extra_credito SET '+
            'clave_cuenta = "'+ sClave_cuenta +'", '+
            'expedientee = "'+ txtExpediente.Text +'", '+
            'plaza = "'+ txtplaza.Text +'", '+
            'num_empleado = "'+ txtNum_Empleado.Text +'", '+
            'num_pension = "'+ txtNum_Pension.Text +'", '+
            'sindicato = "'+ txtSindicato.Text +'", '+
            'zona_escolar = "'+ txtZonaE.Text +'", '+
            'filiacion = "'+ txtFiliacion.Text +'", '+
            'tipo_personal = "'+ txtTPersonal.Text +'", '+
            'tipo_contrato = "'+ txtTContrato.Text +'", '+
            'num_plaza = "'+ txtNum_Plaza.Text +'", '+
            'num_ficha = "'+ txtNum_Ficha.Text +'", '+
            'cve_centro_trabajo = "'+ txtCCTrabajo.Text +'" ';
      end;
      try
         dmModulo_datos.msqTemporal.Sql.Text := sQuery;
         dmModulo_datos.msqTemporal.ExecSQL;
      except
         MessageDlg(' Error al Almacenar los'+#13#10+
                    'Datos Extras del TITULAR.', mtInformation, [mbOK], 0);
         cmdGuardar.Enabled := True;
         Result := False;
         Exit;
      end;
   end;
end;

function TfrmScoreCard.almacena_conyuge: Boolean;
var i : integer;
begin
   result := False;
   with dmModulo_Datos do begin
      if Trim(txtNombre_conyuge_Cliente.Text) <> '' then begin
         msqTemporal.Sql.Text:= 'LOCK TABLES conyuge LOW_PRIORITY WRITE ';
         msqTemporal.Open;
         msqTemporal.Sql.Text:= 'Select Max(clave_conyuge) clave_conyuge From conyuge '+
            'where length(clave_conyuge) = 9';
         msqTemporal.Open;

         sClave_conyuge := IntToStr(StrToInt(Copy(msqTemporal.FieldByName('clave_conyuge').AsString,2,8))+1);

         for i := Length(sClave_conyuge) + 1 to 8 do
            sClave_conyuge := '0' + sClave_conyuge;
         sClave_conyuge := 'C' + sClave_conyuge;

         msqTemporal.Sql.Text:='Insert Into conyuge Set '+
            ' clave_cuenta="'+sClave_cuenta+'", '+
            ' clave_conyuge="'+sClave_conyuge+'", '+
            ' paterno="'+TRIM(StringReplace(txtPaterno_conyuge_Cliente.Text,'"','',[rfReplaceAll]))+'", '+
            ' materno="'+TRIM(StringReplace(txtMaterno_conyuge_Cliente.Text,'"','',[rfReplaceAll]))+'", '+
            ' nombre="'+TRIM(StringReplace(txtNombre_conyuge_Cliente.Text,'"','',[rfReplaceAll]))+'" ';
         try
            msqTemporal.ExecSql;
            msqTemporal.Sql.Text:='Unlock Tables';
            msqTemporal.ExecSql;
            result := True;
         except
            msqTemporal.Sql.Text:='Unlock Tables';
            msqTemporal.ExecSql;
            messagebox(handle, 'Ocurrio un error al Almacenar el Conyuge.',
                               'Atención...',48);
         end;
      end;
   end;
end;

function TfrmScoreCard.almacena_aval: Boolean;
var i, iGenero : integer;
    scony, cp : string;
begin
 result  := true;
 iGenero := 1;
 if rbFemenino.Checked then iGenero := 0;
 if chAval.Checked and (trim(txtNombre_Aval.Text) <> '') then
 begin
  with dmModulo_Datos do
  begin
   msqTemporal.Sql.Text:= 'LOCK TABLES fiador LOW_PRIORITY WRITE ';
   msqTemporal.Open;
   msqTemporal.Sql.Text:= 'SELECT Max(clave_fiador) clave_fiador FROM fiador '+
            'WHERE length(clave_fiador) = 9';
   msqTemporal.Open;
   sClave_fiador := IntToStr(StrToInt(Copy(msqTemporal.FieldByName('clave_fiador').AsString,2,8))+1);
   for i := Length(sClave_fiador)+1 to 8 do
     sClave_fiador := '0' + sClave_fiador;
   sClave_fiador := 'F' + sClave_fiador;
   if chbPagare.Checked then cp := '1'
   else cp := '0';
   msqTemporal.Sql.Text:='Insert Into fiador Set clave_cuenta="'+sClave_cuenta+'", '+
         ' clave_fiador="'+sClave_fiador+'", '+
         ' paterno="'+TRIM(StringReplace(txtPaterno_aval.Text,'"','',[rfReplaceAll]))+'", '+
         ' materno="'+TRIM(StringReplace(txtMaterno_aval.Text,'"','',[rfReplaceAll]))+'", '+
         ' nombre="'+TRIM(StringReplace(txtNombre_aval.Text,'"','',[rfReplaceAll]))+'", '+
         ' fecha_nac = "'+ formatdatetime('yyyy-mm-dd',deNacimiento_Aval.date) + '", '+
         ' edo_civil = "'+ inttostr(cmbEstado_Civil_Aval.ItemIndex) + '", '+
         ' telefono_movil = "'+ txtTelefonoM_Aval.Text + '", '+
         ' domicilio="'+ StringReplace(txtDomicilio_aval.Text,'"','',[rfReplaceAll])+'", '+
         ' numero_casa="'+StringReplace(txtNumCasa_aval.Text,'"','',[rfReplaceAll])+'", '+
         ' colonia="'+StringReplace(txtColonia_aval.Text,'"','',[rfReplaceAll])+'", '+
         ' ciudad="'+StringReplace(txtCiudad_aval.Text,'"','',[rfReplaceAll])+'", '+
         ' estado = "'+ StringReplace(txtEstado_Aval.Text,'"','',[rfReplaceAll]) +'", '+
         ' telefono="'+StringReplace(txtTelefonoF_aval.Text,'"','',[rfReplaceAll])+'", '+
         ' domicilio_calles = "'+StringReplace(txtDomicilio_Calles.Text,'"','',[rfReplaceAll])+'",'+
         ' codigo_postal="'+ floattostr(txtCP_Aval.Value)+'", '+
         ' meses_poblacion = "'+ floattostr(txtMesesP_Aval.Value) +'", '+
         ' meses_domicilio = "'+ floattostr(txtMesesD_Aval.Value)+'", '+
         ' sexo = "'+inttostr(igenero)+'", '+
         ' email = "'+trim(StringReplace(txtCorreoE_Aval.Text,'"','\"',[rfReplaceAll]))+'", '+
         ' firma_pagare = "'+ cp +'", '+
         ' importe_pagare = "'+ currtostr(txtVPagare.Value)+'"';
   try
     msqTemporal.ExecSql;
     msqTemporal.Sql.Text:='Unlock Tables';
     msqTemporal.ExecSql;
    except
     msqTemporal.Sql.Text:='Unlock Tables';
     msqTemporal.ExecSql;
     messagebox(handle,'Ocurrio un error Almacenando el Fiador','Atención...', 48);
     result := false;
     Exit;
   end;
   // Conyuge del Fiador
   if (trim(txtNombre_Conyuge_Aval.Text) <> '') or (trim(txtPaterno_Conyuge_Aval.Text)<> '') or
      (trim(txtMaterno_Conyuge_Aval.Text)<> '') then
   begin
    msqTemporal.Sql.Text:= 'LOCK TABLES corporativo.conyuge LOW_PRIORITY WRITE ';
    msqTemporal.ExecSql;
    msqTemporal.Sql.Text:= 'SELECT MAX(clave_conyuge) clave_conyuge '+
             'FROM corporativo.conyuge WHERE length(clave_conyuge) = 9';
    try
       msqTemporal.Open;
    except
       msqTemporal.Sql.Text := 'UNLOCK TABLES';
       msqTemporal.ExecSql;
       Messagebox(handle,'Ocurrio un error al Obtener la Clave del Conyuge del Fiador','Atención...', 48);
       result := false;
       Exit;
    end;
    scony := IntToStr(StrToInt(Copy(msqTemporal.FieldByName('clave_conyuge').AsString,2,8))+1);
    for i:=Length(scony)+1 to 8 do scony := '0'+ scony;
    sCony := 'C' + sCony;
    msqTemporal.Sql.Text := 'INSERT INTO corporativo.conyuge SET '+
           ' clave_conyuge = "'+sCony+'", '+
           ' clave_cuenta = "'+sClave_Fiador+'", '+
           ' nombre = "'+StringReplace(txtNombre_Conyuge_Aval.Text, '"','',[rfReplaceAll])+'", '+
           ' paterno = "'+StringReplace(txtPaterno_Conyuge_Aval.Text, '"','',[rfReplaceAll])+'", '+
           ' materno = "'+StringReplace(txtMaterno_Conyuge_Aval.Text, '"','',[rfReplaceAll])+'"';
    try
       msqTemporal.ExecSql;
       msqTemporal.Sql.Text:='Unlock Tables';
       msqTemporal.Open;
    except
      msqTemporal.Sql.Text:='Unlock Tables';
      msqTemporal.Open;
      messagebox(handle,'Ocurrio un error Almacenando el Conyuge de Fiador','Atención...', 48);
      result := false;
      Exit;
    end;
   end;
   // Trabajo Fiador
   msqTemporal.Sql.Text := 'SELECT clave_cuenta FROM corporativo.trabajo_cliente '+
               'WHERE clave_cuenta = "'+ sClave_fiador +'"';
   msqTemporal.Open;
   if msqTemporal.RecordCount = 0 then
   begin
    msqTemporal.Sql.Text:= 'Insert Into trabajo_cliente Set '+
            ' clave_cuenta="'+sClave_fiador+'", '+
            ' empresa="'+StringReplace(txtTrabajo_Aval.Text,'"','',[rfReplaceAll])+'", '+
            ' puesto="'+StringReplace(txtPuesto_Aval.Text,'"','',[rfReplaceAll])+'", '+
            ' sueldo_mensual="'+FloatToStr(txtSueldo_Aval.Value)+'", '+
            ' direccion="'+StringReplace(txtDomicilio_trabajo_Aval.Text,'"','',[rfReplaceAll])+'", '+
            ' telefono="'+StringReplace(txtTel_trabajo_Aval.Text,'"','',[rfReplaceAll])+'", '+
            ' antiguedad="'+StringReplace(txtMeses_Trabajo_Aval.Text,'"','',[rfReplaceAll])+'", '+
            ' colonia="'+ StringReplace(txtColonia_Trabajo_Aval.Text,'"','',[rfReplaceAll]) + '", '+
            ' ciudad="'+ StringReplace(txtCiudad_Trabajo_Aval.Text,'"','',[rfReplaceAll]) + '", '+
            ' estado="'+ StringReplace(txtEstado_Trabajo_Aval.Text,'"','',[rfReplaceAll]) +'"';
    try
     msqTemporal.ExecSql;
     msqTemporal.Sql.Text:='Unlock Tables';
     msqTemporal.Open;
    except
     msqTemporal.Sql.Text:='Unlock Tables';
     msqTemporal.Open;
     Messagebox(handle,'Ocurrio un error Almacenando el Trabajo del Fiador','Atención...', 48);
     result := false;
     Exit;
    end;
   end;
   //  Bienes del Fiador
   msqTemporal.Sql.Text:= 'Insert Into bienes_cliente Set '+
            ' clave_cuenta="'+sClave_fiador+'", '+
            ' casa = "' + cmbCasa_Aval.Text + '", '+
            ' tipo_propiedad="'+cmbCasa_Aval.Text+'", '+
            ' dependientes="'+IntToStr(txtDependientes_Aval.AsInteger)+'" ';
   try
     msqTemporal.ExecSql;
     msqTemporal.Sql.Text:='Unlock Tables';
     msqTemporal.ExecSql;
   except
     msqTemporal.Sql.Text:='Unlock Tables';
     msqTemporal.ExecSql;
     messagebox(handle,'Ocurrio un error Almacenando en Bienes del Fiador','Atención...', 48);
     result := false;
     Exit;
   end;
   if sClave_fiador = '' then
   begin
    messagebox(handle,'   No se pueden almacenar las Referencias para el Aval.  '+#13#10+
                      'La clave del Aval no existe o no tiene asignado un valor.',
                      'Atención...',48);
    result := false;
    Exit;
   end;
   // Referencias del Fiador
   if (Trim(txtNombre_rp1_Aval.Text)<>'') then
   begin
    msqTemporal.Sql.Text := 'Insert Into referencias_personales Set '+
              ' clave_cuenta="'+sClave_fiador+'", numero_referencia=1, '+
              ' nombre="'+TRIM(StringReplace(txtNombre_rp1_aval.Text,'"','',[rfReplaceAll]))+'", '+
              ' parentesco="'+ copy(cmbRelacion_rp1_aval.Items.Strings[cmbRelacion_rp1_aval.itemindex],1,2) +'", '+
              ' telefono="'+StringReplace(txtTelefono_rp1_aval.Text,'"','',[rfReplaceAll])+'" ';
    try
      msqTemporal.ExecSql;
    except
      messagebox(handle,'Ocurrio un error Almacenando:'+ #13#10 +
                        'La Referencia Personal 1 del Aval','Atención...', 48);
      result := false;
      Exit;
    end;
   end;
   if (Trim(txtNombre_rp2_Aval.Text)<>'') then
   begin
    msqTemporal.Sql.Text:= 'Insert Into referencias_personales  Set '+
           ' clave_cuenta="'+sClave_fiador+'", numero_referencia=2, '+
           ' nombre="'+TRIM(StringReplace(txtNombre_rp2_aval.Text,'"','',[rfReplaceAll]))+'", '+
           ' parentesco="'+ copy(cmbRelacion_rp2_aval.Items.Strings[cmbRelacion_rp2_aval.itemindex],1,2) +'", '+
           ' telefono="'+StringReplace(txtTelefono_rp2_aval.Text,'"','',[rfReplaceAll])+'"';
   try
      msqTemporal.ExecSql;
   except
     messagebox(handle,'Ocurrio un error Almacenando:'+ #13#10 +
                       'La Referencia Personal 2 del Fiador','Atención...', 48);
     result := false;
     Exit;
   end;
  end;
  if (Trim(txtNombre_rf1_Aval.Text)<>'') then
  begin
   msqTemporal.Sql.Text:= 'Insert Into referencias_personales Set '+
           ' clave_cuenta="'+sClave_fiador+'", numero_referencia=3, '+
           ' nombre="'+TRIM(StringReplace(txtNombre_rf1_aval.Text,'"','',[rfReplaceAll]))+'", '+
           ' parentesco="'+ copy(cmbRelacion_rf1_aval.Items.Strings[cmbRelacion_rf1_aval.itemindex],1,2) +'", '+
           ' telefono="'+StringReplace(txtTelefono_rf1_aval.Text,'"','',[rfReplaceAll])+'"';
    try
     msqTemporal.ExecSql;
    except
     messagebox(handle,'Ocurrio un error Almacenando:'+ #13#10 +
                       'La Referencia Familiar 1 del Fiador','Atención...', 48);
     result := false;
     Exit;
    end;
   end;
   if (Trim(txtNombre_rf2_Aval.Text)<>'') then
   begin
   msqTemporal.Sql.Text:= 'Insert Into referencias_personales Set '+
           ' clave_cuenta="'+sClave_fiador+'", numero_referencia=4, '+
           ' nombre="'+TRIM(StringReplace(txtNombre_rf2_aval.Text,'"','',[rfReplaceAll]))+'", '+
           ' parentesco="'+ copy(cmbRelacion_rf2_aval.Items.Strings[cmbRelacion_rf2_aval.itemindex],1,2) +'", '+
           ' telefono="'+StringReplace(txtTelefono_rf2_aval.Text,'"','',[rfReplaceAll])+'" ';
    try
     msqTemporal.ExecSql;
    except
      messagebox(handle,'Ocurrio un error Almacenando:'+ #13#10 +
                      'La Referencia Familiar 2 del Fiador','Atención...', 48);
     result := false;
    end;
   end;
  end;
 end;
end;

procedure TfrmScoreCard.muestra_historial(ncampo, cuenta: string);
begin
  if iNivel < 2 then Exit;
  if Trim(cuenta) = '' then Exit;
  fpHistorial.Top  := 280;
  fpHistorial.Left := 9;
  msqHistorial.Sql.Text := 'SELECT hcm.valor_anterior, hcm.valor_nuevo, hcm.fecha, hcm.hora, '+
     'concat(u.clave_usuario, " - ", u.nombre_completo) usuario '+
     'FROM historial_cuentas_modificadas hcm '+
     'LEFT JOIN  usuarios u On hcm.clave_usuario = u.clave_usuario '+
     'WHERE hcm.clave_cuenta = "'+ cuenta +'" AND hcm.id_tipo = '+ ncampo +' '+
     'ORDER BY hcm.fecha desc, hcm.hora desc';
  msqHistorial.Open;
  fpHistorial.Visible := True;
end;

procedure TfrmScoreCard.cmdOcultaHistorialClick(Sender: TObject);
begin
   fpHistorial.Visible := False;
end;

procedure TfrmScoreCard.Label8Click(Sender: TObject);
begin
   muestra_historial(IntToStr(TLabel(Sender).Tag), txtClave_cuenta.text);
end;

function TfrmScoreCard.obtiene_causa: string;
begin
   if txtSueldo_Cliente.Value < 2000 then result := 'CO01'
   else if txtMeses_Domicilio_Cliente.Value < 6 then result := 'CO02'
   else if txtMeses_Trabajo_Cliente.Value < 6 then result := 'CO03'
   else if strtoint(trim(copy(lbCalificacion.Caption,1,pos(' ',lbCalificacion.Caption)))) < 40 then result := 'CO04'
   else result := 'CO00';
end;

procedure TfrmScoreCard.txtCorreoE_ClienteExit(Sender: TObject);
begin
   if cTipo.ItemIndex = 2 then txtNum_Nomina.SetFocus
   else begin
      jbpExtras_Cliente.ActivePageIndex := jbpExtras_Cliente.ActivePageIndex + 1;
      edNombre_rp1.SetFocus;
   end;
end;

procedure TfrmScoreCard.txtComentariosExit(Sender: TObject);
begin
   if Trim(txtNombre_Cliente.Text) = '' then Exit;
   jbpExtras_Cliente.ActivePageIndex := jbpExtras_Cliente.ActivePageIndex + 1;
   if cTipo.ItemIndex = 1 then
      txtPuesto_cliente.SetFocus
   else
      txtTrabajo_cliente.SetFocus;
end;

procedure TfrmScoreCard.edRelacion_rp4Exit(Sender: TObject);
begin
   jbpExtras_Cliente.ActivePageIndex := jbpExtras_Cliente.ActivePageIndex + 1;
   edVisa_banco.setfocus;
end;

procedure TfrmScoreCard.chbAcuseClick(Sender: TObject);
begin
   txtFolio_Recibo.Enabled := chbAcuse.Checked;
   txtFecha.Enabled := chbAcuse.Checked;
end;

procedure TfrmScoreCard.chbEnviaExpClick(Sender: TObject);
begin
   txtFechaEnvio.Enabled := chbEnviaExp.Checked;
end;

procedure TfrmScoreCard.cmdTelefonicaClick(Sender: TObject);
begin
   //Valida si ya se realizo la verificacion telefonica a esta cuenta
   //y si ya esta finalizada muestra el resultado.
   dmModulo_datos.msqTemporal.Sql.Text := 'SELECT clave_cuenta '+
      'FROM corporativo.verificacion_telefonica '+
      'WHERE clave_cuenta = "'+ txtClave_Cuenta.Text +'" '+
      'AND finalizada = 1';
   dmModulo_datos.msqTemporal.Open;
   if dmModulo_datos.msqTemporal.RecordCount = 0 then begin
      MessageDlg('No se ha Realizado la Verificación'+#13#10+
                 '    Telefonica a esta Cuenta.', mtWarning, [mbOK], 0);
      exit;
   end;
   frmVerificacion_telefonica_resul := TfrmVerificacion_telefonica_resul.Create(Self);
   frmVerificacion_telefonica_resul.txtClave_cuenta.Text := txtClave_Cuenta.Text;
   frmVerificacion_telefonica_resul.sclave_cuenta := txtClave_Cuenta.Text;
   frmVerificacion_telefonica_resul.ShowModal;
end;

procedure TfrmScoreCard.cmdDomiciliariaClick(Sender: TObject);
begin
   // Valida si se realizó una verificación domiciliaria
   dmModulo_datos.msqTemporal.Sql.Text := 'SELECT clave_cuenta, observaciones '+
      'FROM corporativo.verificacion_domiciliaria '+
      'WHERE clave_cuenta = "'+ txtClave_Cuenta.text +'"';
   dmModulo_datos.msqTemporal.Open;

   if (dmModulo_datos.msqTemporal.RecordCount = 1) then
   begin
    if (dmModulo_datos.msqTemporal.FieldByName('observaciones').AsString = 'VALIDADA POR BURO') then
    begin
     MessageDlg('La Verificación Ya Fue VALIDADA POR BURO', mtInformation, [mbOK], 0);
     Exit;
    end;
   end;

   if dmModulo_datos.msqTemporal.RecordCount < 2 then
   begin
     MessageDlg('No se Realizó Verificación'+#13#10+
                'Domiciliaria a esta Cuenta.', mtWarning, [mbOK], 0);
     Exit;
   end;
   frmVerificacion_domiciliaria_resul := TfrmVerificacion_domiciliaria_resul.Create(Self);
   frmVerificacion_domiciliaria_resul.txtclave_cuenta.text := txtClave_Cuenta.Text;
   frmVerificacion_domiciliaria_resul.ShowModal;
end;

procedure TfrmScoreCard.almacena_fecha_pago(sCuenta: string; sStatus: string);
begin
   //Si la cuenta fue preautorizada o autorizada, almacena la fecha para pago
   if (iStatus = 0) or (iStatus = 1) then
   begin
    dmModulo_datos.msqTemporal.Sql.Text := 'SELECT clave_cuenta '+
         'FROM corporativo.seguimiento_tarjeta '+
         'WHERE clave_cuenta = "'+ sCuenta +'"';
    dmModulo_datos.msqTemporal.Open;
    if dmModulo_datos.msqTemporal.Eof then
       dmModulo_datos.msqTemporal.Sql.Text := 'INSERT INTO seguimiento_tarjeta Set '+
            'clave_cuenta = "'+ sCuenta +'", fecha_pago = curdate(), '+
            'fecha_actualizacion = now()'
    else
      dmModulo_datos.msqTemporal.Sql.Text := 'UPDATE seguimiento_tarjeta SET '+
            'fecha_pago = curdate(), fecha_actualizacion = now() '+
            ' Where clave_cuenta = "'+ sCuenta +'" '+
            ' AND fecha_pago = "0000-00-00"';
      dmModulo_datos.msqTemporal.ExecSql;
   end;
end;

procedure TfrmScoreCard.txtComentariosKeyPress(Sender: TObject; var Key: Char);
begin
   if key in ['a'..'z'] then dec(key,32);
end;

procedure TfrmScoreCard.txtClave_CuentaChange(Sender: TObject);
begin
 if iNivel > 0 then
 begin
  cmdGuardar.Enabled := true;
  cmdGuardar.Caption := 'Guardar';
  //defecha_elaboracion.Enabled := True;
 end;
 limpia_controles;
 limpia_resumen;
end;

procedure TfrmScoreCard.txtClave_CuentaExit(Sender: TObject);
var
enter:Char;
begin
 if not ValidDate(deFecha_Captura.Date) or (deFecha_Captura.Date = NullDate) then
 begin
  bNuevo := true;
  //txtClave_Cuenta.Clear;
 end;

 enter:=#13;
 //txtClave_CuentaKeyPress(nil,enter);  //se quito porque limpiaba los datos aun no guardados
end;

procedure TfrmScoreCard.FormCreate(Sender: TObject);
begin
    // bandera_score :=0;

    // Estas variables son para el recalculo de la capacidad de pago, se
    // explica en la seccion donde se declaran las variables
    motivoDeRecalculo := '';
    pagoMensualDeCliente := -1;

    inicializa_campos_modi(mdCampos);
end;

procedure TfrmScoreCard.txtTelefono_clienteExit(Sender: TObject);
var
 sNum : String;
 i : integer;
 result : Boolean;
begin
 if Trim(txtTelefono_cliente.Text) = '' then Exit;
 result := True;
 sNum := txtTelefono_cliente.Text;
 for i:=1 to Length(sNum) do
 begin
  if sNum[i] in ['0','1','2','3','4','5','6','7','8','9'] then
  else
   result := False;
 end;
 if not result then
 begin
  MessageDlg('¡¡ Solo se permiten Caracteres Numericos !!'+#13+#10
   +'                ( 0,1,2,3,4,5,6,7,8,9 )', mtWarning, [mbOK], 0);
  txtTelefono_cliente.SetFocus;
 end;
end;

procedure TfrmScoreCard.cmdLinea_CtoClick(Sender: TObject);
begin
 if LeftStr(txtClave_Cuenta.Text,1) = 'T' then
 begin
  frmPresupuesto_sobregiro := TfrmPresupuesto_sobregiro.Create(Self);
  frmPresupuesto_sobregiro.illama := 1;
  frmPresupuesto_sobregiro.txtTarjeta.Text := txtClave_Cuenta.Text;
  frmPresupuesto_sobregiro.ShowModal;
 end;
end;

procedure TfrmScoreCard.Label24Click(Sender: TObject);
begin
 muestra_historial(IntToStr(TLabel(Sender).Tag), txtClave_cuenta.text);
end;

procedure TfrmScoreCard.cmdCondicionarClick(Sender: TObject);
begin
 // -- 06 de Marzo del 2010
 if iNivel < 2 then exit;
 if trim(txtClave_Cuenta.Text) = '' then exit;
 if (lbStatus.Caption = 'CANCELADO') or (lbStatus.Caption = 'RECHAZADO') then exit;
 frmRechazar_Cuenta := TfrmRechazar_Cuenta.Create(Self);
 frmRechazar_Cuenta.Caption := 'Cancelar Cuentas';
 frmRechazar_Cuenta.cmdRechazar.Caption := 'Cancelar';
 frmRechazar_Cuenta.iLlama := 4;
 frmRechazar_Cuenta.ShowModal;
end;

procedure TfrmScoreCard.txtOtrosIngresosExit(Sender: TObject);
begin
 txtTotalIngresos.Value := txtSueldo_cliente.Value + txtOtrosIngresos.Value;
end;

procedure TfrmScoreCard.txtDomic_rp4Exit(Sender: TObject);
begin
 jbpExtras_Cliente.ActivePageIndex := jbpExtras_Cliente.ActivePageIndex + 1;
 txtOtrosIngresos.SetFocus;
end;

procedure TfrmScoreCard.Label23Click(Sender: TObject);
begin
  muestra_historial('18', txtClave_cuenta.text);
end;

procedure TfrmScoreCard.FlatButton1Click(Sender: TObject);
begin
if txtClave_cuenta.Text = '' then begin
  MessageDlg('Debe seleccionar una cuenta', mtError, [mbOK], 0);
  exit;
end;

if not assigned(frmDocumentos) then
   frmDocumentos := TfrmDocumentos.Create(Self);

 frmDocumentos.cuenta_origen:=sCuenta_Origen;

 frmDocumentos.ShowModal;

end;

procedure TfrmScoreCard.btnConsultaBuroClick(Sender: TObject);
var
sEncabezado,num_refe_operador,clave_cta,sNombre,sDomi,sFecha, sRFC,fecha_naci,sCierre,long_archivo:String;
long : integer;
begin
        msqBuro.Sql.Text := 'SELECT usuarioBC,passBC '+
                            'FROM usuarios WHERE clave_usuario = "'+frmMain.sClave_usuario+'"';
        msqBuro.Open;

        sUserBC     := msqBuro.FieldByName('usuarioBC').AsString;
        sPasswordBC := msqBuro.FieldByName('passBC').AsString;


        msqBuro.Sql.Text := 'SELECT c.clave_cuenta, replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(Replace '+
                            '(Trim(if(paterno is null or paterno = "",materno,paterno)),"Ñ","N"), '+
                            '".",""),"Ü","U"),"Á","A"),"Ó","O"),"Ò","O"),"Í","I"),"Ì","I"),"É","E"),"È","E"),"À","A"),"Ú","U"),"Û","U") paterno, '+
                            'replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(Replace( '+
                            'Trim(if((paterno is null or paterno = "") or (materno is null or materno = ""),"NO PROPORCIONADO",materno)),"Ñ","N"), '+
                            '".",""),"Ü","U"),"Á","A"),"Ó","O"),"Ò","O"),"Í","I"),"Ì","I"),"É","E"),"È","E"),"À","A"),"Ú","U"),"Û","U") materno, '+
                            'replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(Replace(Replace(Trim(nombre),"Ñ","N") '+
                            ',".",""),"-"," "),"Ü","U"),"Á","A"),"Ó","O"),"Ò","O"),"Í","I"),"Ì","I"),"É","E"),"È","E"),"À","A"),"Ú","U"),"Û","U") nombre, replace(rfc,"-","") rfc, '+
                            'replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace '+
                            '(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(Replace(replace(replace '+
                            '(Concat_WS(" ",trim(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace  '+
                            '(replace(replace(replace(replace(replace(replace '+
                            '(c.domicilio,"#",""),"Á","A"),"É","E"),"Í","I"),"Ó","O"),"Ú","U"),"`"," "),"ª",""),"¼",""), '+
                            '"È","E"),"À","A"),"Ì","I"),"·",""),"Ò","O"),"Û","U"),"¨",""),"Ü","U")), '+
                            'Trim(replace(replace(replace(replace(replace(replace(numero_casa, '+
                            '"#",""),"S/N","SN"),"¼",""),".",""),"¨",""),"Ó","O"))) '+
                            ',".",""),"°",""),"Ñ","N"),"´","")," S/NOMBRE"," SIN NOMBRE"),"S/N"," SN "),"D/C","DOMICILIO CONOCIDO"),"/","")," % "," ENTRE "), '+
                            '","," "),";"," "),":"," "),"+"," "),"-"," "),"<",""),">",""),"=",""),"*"," "),"(",""),")",""),"|",""), '+
                            '"[",""),"]",""),"_"," "),"»",""),"º",""),"{",""),"}",""),"  "," "),"   "," ") domicilio, '+    //aki
                            'replace(Replace(Replace(Replace(Replace(Replace(c.municipio,"Á","A"),"É","E"),"Í","I"),"Ó","O"),"Ú","U"),".","") municipio, '+
                            'if(c.estado="CHIAPAS","CHS",Left(c.estado,3)) estado,'+
                            'Replace(Replace(Replace(Replace(Replace(colonia,"Á","A"),"É","E"),"Í","I"),"Ó","O"),"Ú","U") colonia,'+
                            'estado estado1, codigo_postal, fecha_nacimiento '+
                            'FROM cuentas c '+
                            'WHERE c.clave_cuenta= "'+Trim(txtClave_cuenta.Text)+'" ';
        msqBuro.Open;

        mdBuro.LoadFromDataSet(msqBuro,msqBuro.RecordCount,lmAppend);

        num_refe_operador := '                ';
        clave_cta := Trim(txtClave_cuenta.Text);

        // -- SEGMENTO DE ENCABEZADO (INTL)
        sEncabezado := 'INTL11'+clave_cta+num_refe_operador+'507'+'MX'+'0000'+sUserBC+//'5510340001'+
                       sPasswordBC+'I'+'AF'+'MX'+'000000000'+'SP'+'01'+' '+'    '+'0000000';

        // -- SEGMENTO DE NOMBRE (PN)
        sNombre := 'PN'+ RightStr('0'+ IntToStr(Length(mdBuro.FieldByName('paterno').AsString)),2) + mdBuro.FieldByName('paterno').AsString +
                   '00'+ RightStr('0'+ IntToStr(Length(mdBuro.FieldByName('materno').AsString)),2) + mdBuro.FieldByName('materno').AsString;

        if Pos(' ',mdBuro.FieldByName('nombre').AsString) > 0 then
                sNombre := sNombre + '02'+ RightStr('0'+ IntToStr(Length(Copy(mdBuro.FieldByName('nombre').AsString,1,Pos(' ',mdBuro.FieldByName('nombre').AsString)-1))),2)
                           + Copy(mdBuro.FieldByName('nombre').AsString,1,Pos(' ',mdBuro.FieldByName('nombre').AsString)-1)
                           + '03'+ RightStr('0'+ IntToStr(Length(Copy(mdBuro.FieldByName('nombre').AsString,Pos(' ',mdBuro.FieldByName('nombre').AsString) +1,Length(mdBuro.FieldByName('nombre').AsString)))),2)
                           + Copy(mdBuro.FieldByName('nombre').AsString,Pos(' ',mdBuro.FieldByName('nombre').AsString) +1,Length(mdBuro.FieldByName('nombre').AsString))
        else
                sNombre := sNombre + '02'+ RightStr('0'+ IntToStr(Length(mdBuro.FieldByName('nombre').AsString)),2) + mdBuro.FieldByName('nombre').AsString;

        //Se obtiene fecha de nacimiento
        fecha_naci:= '04'+RightStr('0'+IntToStr(Length(FormatDateTime('ddmmyyyy',StrToDate(mdBuro.FieldByName('fecha_nacimiento').AsString)))),2)+FormatDateTime('ddmmyyyy',StrToDate(mdBuro.FieldByName('fecha_nacimiento').AsString));//FormatDateTime('ddmmyyyy',deNacimiento_Cliente.date);
        sNombre := sNombre + fecha_naci;
        // rfc
        if mdBuro.FieldByName('fecha_nacimiento').AsString = '01/01/0001' then begin
                sFecha := '00/00/0000';
                Tablas_E(mdTabla1, mdTabla2, mdTabla3);
                sRFC := Copy(fRFC(mdBuro['nombre'], mdBuro['paterno'], mdBuro['materno'], sFecha),1,10);
                sNombre := sNombre + '0510' + sRFC;
        end else begin
                sFecha := mdBuro.FieldByName('fecha_nacimiento').AsString;
                Tablas_E(mdTabla1, mdTabla2, mdTabla3);
                sRFC := fRFC(mdBuro['nombre'], mdBuro['paterno'], mdBuro['materno'], sFecha);
                sNombre := sNombre + '0513'+ sRFC;
        end;

        // -- SEGMENTO DE DIRECCION (PA)
        long:= Length(mdBuro.FieldByName('domicilio').AsString);

        if long<=40 then begin
                sDomi := 'PA'+ RightStr('0'+ IntToStr(Length(mdBuro.FieldByName('domicilio').AsString)),2) + mdBuro.FieldByName('domicilio').AsString ;
        end else begin
                sDomi := 'PA'+ RightStr('0'+ IntToStr(Length(copy(mdBuro.FieldByName('domicilio').AsString,1,40))),2) + copy(mdBuro.FieldByName('domicilio').AsString,1,40) +
                         '00'+ RightStr('0'+ IntToStr(Length(copy(mdBuro.FieldByName('domicilio').AsString,41,long))),2) + copy(mdBuro.FieldByName('domicilio').AsString,41,long) ;
        end;

        sDomi:=sDomi+ '02'+ RightStr('0'+ IntToStr(Length(mdBuro.FieldByName('municipio').AsString)),2) + mdBuro.FieldByName('municipio').AsString +
               '04'+ RightStr('0'+ IntToStr(Length(mdBuro.FieldByName('estado').AsString)),2) + mdBuro.FieldByName('estado').AsString;

        if Length(mdBuro.FieldByName('codigo_postal').AsString) = 5 then
                sDomi := sDomi + '05'+ RightStr('0'+ IntToStr(Length(mdBuro.FieldByName('codigo_postal').AsString)),2) + mdBuro.FieldByName('codigo_postal').AsString;

    //--SEGMENTO DE CIERRE-ES
    long_archivo := IntToStr(Length(sEncabezado + sNombre + sDomi + '000000000000000'));
    sCierre := 'ES05' + '00' + long_archivo + '0002**';
    archivo_buro(sEncabezado, sNombre, sCierre, sDomi);
    parametro_final := sEncabezado + sNombre + SDomi + sCierre;
    Application.OnException := CapturaError;
    ClientSocket1.Address := '128.9.55.102';
    ClientSocket1.Port := 25000;
    ClientSocket1.Active := True;
    btnConsultaBuro.Enabled := False;
end;

procedure TfrmScoreCard.CapturaError(Sender: TObject; E: Exception);
begin
        Application.OnException := nil;
end;

procedure TfrmScoreCard.ClientSocket1Disconnect(Sender: TObject;
  Socket: TCustomWinSocket);
begin
      //en espera...
      btnConsultaBuro.Enabled := True;

end;

procedure TfrmScoreCard.ClientSocket1Read(Sender: TObject; Socket: TCustomWinSocket);
var
obtiene_ruta : String;
asig_socket : String;
archivo_error : String;
sLinea : String;
sLinea2 : String;
archivo : TextFile;
begin
    asig_socket := socket.ReceiveText;
    ClientSocket1.Active := False;

    archivo_error := GetTempFile('.tmp');

    obtiene_ruta := GetTempFile('.tmp');
    AssignFile(archivo,obtiene_ruta);
    Rewrite(archivo);
    writeln(archivo,copy(asig_socket,1,length(asig_socket)-1));
    CloseFile(archivo);

    ExecNewProcess('plugin\analizar_intl\analizar_intl.exe --source '+obtiene_ruta+' --error '+archivo_error,True);
    DeleteFile(obtiene_ruta);

    AssignFile(archivo,archivo_error);
    Reset(archivo);
    sLinea2 := '';
    while not Eof(archivo) do begin
        ReadLn(archivo, sLinea);
        sLinea2 := sLinea2 + sLinea + #10#13;
    end;
    CloseFile(archivo);
    DeleteFile(archivo_error);

    if Trim(sLinea2) = '' then begin
        MessageDlg('La información se consulto correctamente', mtInformation, [mbOK], 0);
    end else begin
        MessageDlg('ERROR: '+#13+#13+sLinea2, mtError, [mbOK], 0);
    end;
    verificarConsultasExitosasPreviasBuroCredito();

    btnConsultaBuro.Enabled := True;
end;

procedure TfrmScoreCard.ClientSocket1Write(Sender: TObject;
  Socket: TCustomWinSocket);
var
stream : TMemoryStream;
bytes : TByteDynArray;
s : Pchar;
intl : String;
begin
    intl := parametro_final;{'INTL11T00317812 507MX0000ZM38871001005ENNfiIAFMX0'+
            '00000000SP01 0000000PN05SILVA0006RANGEL0204ROSA0305IVETH0408'+
            '210519830513SIRR830521TH7PA17AVE CAUVILLE LT 90207ORIZABA0403VER'+
            '050594380ES05002160002**';}
    SetLength(bytes, Length(intl)+1);
    s := PChar(intl);
    Move(s[0], bytes[0], Length(s));
    bytes[Length(intl)] := 19;
    stream := TMemoryStream.Create();
    stream.Write(bytes[0], Length(bytes));
    stream.Position := 0;
    Socket.SendStream(stream);
end;


//No es necesario este codigo aqui dicho por David Barron
procedure TfrmScoreCard.ExecNewProcess(ProgramName : String; Wait: Boolean);
var
StartInfo : TStartupInfo;
ProcInfo : TProcessInformation;
CreateOK : Boolean;
begin
    { fill with known state }
    FillChar(StartInfo,SizeOf(TStartupInfo), 0);
    FillChar(ProcInfo,SizeOf(TProcessInformation), 0);
    StartInfo.cb := SizeOf(TStartupInfo);
    CreateOK := CreateProcess(nil, PChar(ProgramName), nil, nil,False,CREATE_NEW_PROCESS_GROUP or NORMAL_PRIORITY_CLASS,nil, nil, StartInfo, ProcInfo);

    { check to see if successful }
    if CreateOK then begin
        //may or may not be needed. Usually wait for child processes
        if Wait then
            WaitForSingleObject(ProcInfo.hProcess, INFINITE);
    end else begin
        //ShowMessage('Unable to run '+ProgramName);
        SysErrorMessage(GetLastError());
    end;

    CloseHandle(ProcInfo.hProcess);
    CloseHandle(ProcInfo.hThread);

end;

function TfrmScoreCard.GetTempFile(const Extension: string): string;
var
Buffer : Array[0..MAX_PATH] of Char;
begin
    GetTempPath(Sizeof(Buffer)-1,Buffer);
    GetTempFileName(Buffer,'~',0,Buffer);
    result := StrPas(Buffer);
end;

procedure TfrmScoreCard.ClientSocket1Error(Sender: TObject; Socket: TCustomWinSocket; ErrorEvent: TErrorEvent; var ErrorCode: Integer);
var
Msg : String;
begin
    case ErrorEvent of
    eeGeneral :
        Msg := 'Ha ocurrido un error desconocido al intentar comunicarse con el buro de credito';
    eeSend :
        Msg := 'Ha ocurrido un error al intentar escribir a la conexion establecida con buro de credito';
    eeReceive :
        Msg := 'Ha ocurrido un error al intentar leer desde la conexion establecida con buro de credito';
    eeConnect :
        MSg := 'Error al establecer la conexion con el buro de credito';
    eeDisconnect :
        Msg := 'Un error ocurrio al intentar cerrar la conexion con el buro de credito';
    end;
    btnConsultaBuro.Enabled := True;
    MessageDlg('ERROR:: '+#13+#13+Msg, mtInformation, [mbOK], 0);
    verificarConsultasExitosasPreviasBuroCredito();
end;



procedure TfrmScoreCard.ButtonResultadoBuroClick(Sender: TObject);
var
claveCuenta : String;
begin
    claveCuenta := Trim(txtClave_Cuenta.Text);
    dmModulo_datos.msqTemporal.Sql.Text :=
        'SELECT clave_cuenta '+
        'FROM corporativo.EVALUA_segmento_PN '+
        'WHERE clave_cuenta = "'+claveCuenta+'"';
    dmModulo_datos.msqTemporal.Open();
    if dmModulo_datos.msqTemporal.IsEmpty() then begin
        ButtonResultadoBuro.Enabled := False;
        ButtonRecalcular.Enabled := False;
        MessageDlg(
            'No se encontro ningún registro de'+#13+
            'consulta a buro de credito para la'+#13+
            'clave de cuenta indicada', mtError, [mbOK], 0);
    end else begin
        if not Assigned(frmEvaluaConsultaDeCredito) then begin
            frmEvaluaConsultaDeCredito := TfrmEvaluaConsultaDeCredito.Create(Self);
            frmEvaluaConsultaDeCredito.database := dmModulo_datos.msdCorporativo;
            frmEvaluaConsultaDeCredito.claveCuenta := claveCuenta;
        end;

        frmEvaluaConsultaDeCredito.Show();
    end;
end;

procedure TfrmScoreCard.recalcularCapacidad(pago : Double; motivo : String);
begin
    pagoMensualDeCliente := pago;
    motivoDeRecalculo := motivo;
    verificarConsultasExitosasPreviasBuroCredito();
end;

procedure TfrmScoreCard.ButtonRecalcularClick(Sender: TObject);
begin
    if not Assigned(frmRecalcularCapacidadDePago) then begin
        frmRecalcularCapacidadDePago := TfrmRecalcularCapacidadDePago.Create(Self);
        frmRecalcularCapacidadDePago.OnRecalcularCapacidad := recalcularCapacidad;
        if pagoMensualDeCliente > 0 then begin
            frmRecalcularCapacidadDePago.pago.Value := pagoMensualDeCliente;
            frmRecalcularCapacidadDePago.motivo.Lines.Text := motivoDeRecalculo;
        end;
    end;

    frmRecalcularCapacidadDePago.ShowModal();
end;

end.
