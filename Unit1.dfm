object Form1: TForm1
  Left = 192
  Top = 153
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Realiza Backup das Bases de Dados'
  ClientHeight = 238
  ClientWidth = 447
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Arial'
  Font.Style = []
  Icon.Data = {
    0000010001001010100001000400280100001600000028000000100000002000
    0000010004000000000080000000000000000000000000000000000000000000
    000000008000008000000080800080000000800080008080000080808000C0C0
    C0000000FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF000000
    0000000000000000000A00000000000000AAA000000000000AAAAA0000000000
    AAAFAAA000000F0AAAF0FAAA00000F0FFF080FAAA0000F00008880FAAA000F88
    8888800FAAA00F888888800000000FFFFFFFF0000000000000000000000000F0
    000F0000000000F8008F00000000000FFFF0000000000000000000000000FEFF
    0000FC7F0000F83F0000F01F0000000F00000007000000030000000100000000
    000000200000003F0000003F00008C7F0000807F0000C0FF0000E1FF0000}
  OldCreateOrder = False
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 14
  object Label1: TLabel
    Left = 0
    Top = 4
    Width = 138
    Height = 14
    Caption = 'Caminho da Bat de Backup 1'
  end
  object Label2: TLabel
    Left = 410
    Top = 3
    Width = 32
    Height = 14
    Caption = 'Hora 1'
  end
  object Label3: TLabel
    Left = 410
    Top = 42
    Width = 32
    Height = 14
    Caption = 'Hora 2'
  end
  object Label4: TLabel
    Left = 0
    Top = 160
    Width = 132
    Height = 14
    Caption = 'Caminho do Arquivo de Log'
  end
  object Label5: TLabel
    Left = 0
    Top = 43
    Width = 138
    Height = 14
    Caption = 'Caminho da Bat de Backup 2'
  end
  object Label6: TLabel
    Left = 0
    Top = 85
    Width = 138
    Height = 14
    Caption = 'Caminho da Bat de Backup 3'
  end
  object Label7: TLabel
    Left = 410
    Top = 84
    Width = 32
    Height = 14
    Caption = 'Hora 3'
  end
  object Label8: TLabel
    Left = 0
    Top = 123
    Width = 138
    Height = 14
    Caption = 'Caminho da Bat de Backup 3'
  end
  object Label9: TLabel
    Left = 410
    Top = 123
    Width = 32
    Height = 14
    Caption = 'Hora 4'
  end
  object Edit1: TEdit
    Left = 2
    Top = 19
    Width = 399
    Height = 22
    Enabled = False
    ReadOnly = True
    TabOrder = 0
    Text = 'Edit1'
  end
  object MaskEdit1: TMaskEdit
    Left = 409
    Top = 19
    Width = 34
    Height = 22
    Enabled = False
    EditMask = '!90:00;1;_'
    MaxLength = 5
    TabOrder = 1
    Text = '  :  '
  end
  object MaskEdit2: TMaskEdit
    Left = 409
    Top = 58
    Width = 34
    Height = 22
    Enabled = False
    EditMask = '!90:00;1;_'
    MaxLength = 5
    TabOrder = 3
    Text = '  :  '
  end
  object BitBtn1: TBitBtn
    Left = 292
    Top = 206
    Width = 75
    Height = 25
    Caption = '&OK'
    TabOrder = 9
    OnClick = BitBtn1Click
  end
  object BitBtn2: TBitBtn
    Left = 369
    Top = 206
    Width = 75
    Height = 25
    Caption = '&Fechar'
    TabOrder = 10
    OnClick = BitBtn2Click
  end
  object Edit2: TEdit
    Left = 3
    Top = 175
    Width = 441
    Height = 22
    Enabled = False
    ReadOnly = True
    TabOrder = 8
    Text = 'Edit2'
  end
  object Edit3: TEdit
    Left = 2
    Top = 58
    Width = 399
    Height = 22
    Enabled = False
    ReadOnly = True
    TabOrder = 2
    Text = 'Edit3'
  end
  object Edit4: TEdit
    Left = 2
    Top = 100
    Width = 398
    Height = 22
    Enabled = False
    ReadOnly = True
    TabOrder = 4
    Text = 'Edit4'
  end
  object MaskEdit3: TMaskEdit
    Left = 409
    Top = 100
    Width = 34
    Height = 22
    Enabled = False
    EditMask = '!90:00;1;_'
    MaxLength = 5
    TabOrder = 5
    Text = '  :  '
  end
  object Edit5: TEdit
    Left = 2
    Top = 138
    Width = 397
    Height = 22
    Enabled = False
    ReadOnly = True
    TabOrder = 6
    Text = 'Edit5'
  end
  object MaskEdit4: TMaskEdit
    Left = 409
    Top = 139
    Width = 34
    Height = 22
    Enabled = False
    EditMask = '!90:00;1;_'
    MaxLength = 5
    TabOrder = 7
    Text = '  :  '
  end
  object Timer1: TTimer
    Interval = 60000
    OnTimer = Timer1Timer
    Left = 96
    Top = 176
  end
  object PopupMenu1: TPopupMenu
    Left = 184
    Top = 172
    object Configurar1: TMenuItem
      Caption = 'Configurar'
      OnClick = Configurar1Click
    end
    object Fechar1: TMenuItem
      Caption = 'Fechar'
      OnClick = Fechar1Click
    end
  end
  object IdSMTP: TIdSMTP
    Host = 'smtp.boaideianet.com.br'
    Password = 'gw57gwmg'
    SASLMechanisms = <>
    Username = 'backup@boaideianet.com.br'
    Left = 208
    Top = 170
  end
  object IdMessage: TIdMessage
    AttachmentEncoding = 'MIME'
    BccList = <>
    CCList = <>
    Encoding = meMIME
    FromList = <
      item
        Address = 'backup@boaideianet.com.br'
        Text = 'backup@boaideianet.com.br'
        Domain = 'boaideianet.com.br'
        User = 'backup'
      end>
    From.Address = 'backup@boaideianet.com.br'
    From.Text = 'backup@boaideianet.com.br'
    From.Domain = 'boaideianet.com.br'
    From.User = 'backup'
    Recipients = <>
    ReplyTo = <>
    ConvertPreamble = True
    Left = 240
    Top = 170
  end
end
