object frmMenu: TfrmMenu
  Left = 0
  Top = 0
  BorderIcons = []
  Caption = 'Menu'
  ClientHeight = 299
  ClientWidth = 568
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel2: TPanel
    Left = 0
    Top = 248
    Width = 568
    Height = 51
    Align = alBottom
    BevelEdges = []
    Caption = 'Panel2'
    Color = clTeal
    ParentBackground = False
    TabOrder = 0
    object btnClose: TButton
      Left = 1
      Top = -2
      Width = 566
      Height = 52
      Align = alBottom
      Caption = '&Close'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = btnCloseClick
      ExplicitLeft = 392
      ExplicitTop = 22
      ExplicitWidth = 175
    end
  end
  object MemMEnu: TMemo
    Left = 0
    Top = 0
    Width = 568
    Height = 248
    Align = alClient
    BevelEdges = []
    BevelInner = bvNone
    BevelOuter = bvNone
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clTeal
    Font.Height = -20
    Font.Name = 'Segoe UI'
    Font.Style = []
    Lines.Strings = (
      '')
    ParentFont = False
    ParentShowHint = False
    ReadOnly = True
    ShowHint = True
    TabOrder = 1
    ExplicitLeft = 8
    ExplicitTop = 8
    ExplicitWidth = 560
    ExplicitHeight = 233
  end
end
