object Form_Tag: TForm_Tag
  Left = 0
  Top = 0
  Caption = 'SAKAS'
  ClientHeight = 777
  ClientWidth = 668
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object StatusBar1: TStatusBar
    Left = 0
    Top = 758
    Width = 668
    Height = 19
    Panels = <>
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 668
    Height = 41
    Align = alTop
    BevelOuter = bvNone
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    object BB_Get_List: TBitBtn
      Left = 8
      Top = 8
      Width = 105
      Height = 25
      Caption = 'Get tag list'
      TabOrder = 0
      OnClick = BB_Get_ListClick
    end
    object BB_Proc: TBitBtn
      Left = 230
      Top = 8
      Width = 105
      Height = 25
      Caption = 'Proc AD_DC_ABS'
      TabOrder = 1
      OnClick = BB_ProcClick
    end
    object BB_Copy_Cond: TBitBtn
      Left = 119
      Top = 8
      Width = 105
      Height = 25
      Caption = 'Copy cond.'
      TabOrder = 2
      OnClick = BB_Copy_CondClick
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 41
    Width = 668
    Height = 215
    Align = alClient
    BevelInner = bvRaised
    BevelOuter = bvLowered
    Caption = 'Panel2'
    TabOrder = 2
    object Splitter1: TSplitter
      Left = 273
      Top = 2
      Height = 211
      ExplicitLeft = 480
      ExplicitTop = 56
      ExplicitHeight = 100
    end
    object Panel3: TPanel
      Left = 2
      Top = 2
      Width = 271
      Height = 211
      Align = alLeft
      BevelOuter = bvNone
      Caption = 'Panel3'
      TabOrder = 0
      object CLB_File: TCheckListBox
        Left = 0
        Top = 33
        Width = 271
        Height = 178
        Align = alClient
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        OnClick = CLB_FileClick
      end
      object Panel5: TPanel
        Left = 0
        Top = 0
        Width = 271
        Height = 33
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 1
        object SB_Save: TSpeedButton
          Left = 234
          Top = 5
          Width = 23
          Height = 22
          Flat = True
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000120B0000120B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
            333333FFFFFFFFFFFFF33000077777770033377777777777773F000007888888
            00037F3337F3FF37F37F00000780088800037F3337F77F37F37F000007800888
            00037F3337F77FF7F37F00000788888800037F3337777777337F000000000000
            00037F3FFFFFFFFFFF7F00000000000000037F77777777777F7F000FFFFFFFFF
            00037F7F333333337F7F000FFFFFFFFF00037F7F333333337F7F000FFFFFFFFF
            00037F7F333333337F7F000FFFFFFFFF00037F7F333333337F7F000FFFFFFFFF
            00037F7F333333337F7F000FFFFFFFFF07037F7F33333333777F000FFFFFFFFF
            0003737FFFFFFFFF7F7330099999999900333777777777777733}
          NumGlyphs = 2
          OnClick = SB_SaveClick
        end
        object CB_Ext: TComboBox
          Left = 6
          Top = 4
          Width = 143
          Height = 24
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ItemIndex = 0
          ParentFont = False
          TabOrder = 0
          Text = '*.tag'
          Items.Strings = (
            '*.tag'
            '*.ini'
            '*.*')
        end
        object CB_AllCK: TCheckBox
          Left = 155
          Top = 9
          Width = 73
          Height = 17
          Caption = 'All check'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 1
          OnClick = CB_AllCKClick
        end
      end
    end
    object Panel6: TPanel
      Left = 276
      Top = 2
      Width = 390
      Height = 211
      Align = alClient
      BevelOuter = bvNone
      Caption = 'Panel6'
      TabOrder = 1
      object Memo: TRichEdit
        Left = 0
        Top = 33
        Width = 390
        Height = 178
        Align = alClient
        Font.Charset = SHIFTJIS_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        PlainText = True
        ScrollBars = ssBoth
        TabOrder = 0
        Zoom = 100
      end
      object Panel7: TPanel
        Left = 0
        Top = 0
        Width = 390
        Height = 33
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 1
        object CB_Edit: TCheckBox
          Left = 336
          Top = 0
          Width = 54
          Height = 33
          Align = alRight
          Caption = 'Edit'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
          OnClick = CB_EditClick
        end
      end
    end
  end
  object Panel4: TPanel
    Left = 0
    Top = 256
    Width = 668
    Height = 502
    Align = alBottom
    BevelInner = bvRaised
    BevelOuter = bvLowered
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
    object GroupBox1: TGroupBox
      Left = 2
      Top = 57
      Width = 664
      Height = 245
      Align = alTop
      Caption = 'Orig data'
      TabOrder = 0
      object Label10: TLabel
        Left = 378
        Top = 216
        Width = 93
        Height = 16
        Caption = 'Image number'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGreen
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label9: TLabel
        Left = 336
        Top = 161
        Width = 144
        Height = 16
        Caption = 'Offset image file name'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGreen
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label5: TLabel
        Left = 336
        Top = 20
        Width = 192
        Height = 16
        Caption = 'Backgroung image file name 1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label3: TLabel
        Left = 33
        Top = 75
        Width = 88
        Height = 16
        Caption = 'Image format'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label6: TLabel
        Left = 334
        Top = 75
        Width = 192
        Height = 16
        Caption = 'Backgroung image file name 2'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label4: TLabel
        Left = 8
        Top = 20
        Width = 102
        Height = 16
        Caption = 'Image file name'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label7: TLabel
        Left = 33
        Top = 105
        Width = 93
        Height = 16
        Caption = 'Image number'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label8: TLabel
        Left = 378
        Top = 135
        Width = 111
        Height = 16
        Caption = 'BK image number'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label11: TLabel
        Left = 34
        Top = 135
        Width = 70
        Height = 16
        Caption = 'BK interval'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Edit_OFFN: TEdit
        Left = 543
        Top = 213
        Width = 93
        Height = 24
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGreen
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        NumbersOnly = True
        ParentFont = False
        TabOrder = 0
        Text = '100'
      end
      object Edit_FNOFF: TEdit
        Left = 334
        Top = 183
        Width = 302
        Height = 24
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGreen
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
        Text = 'Edit1'
      end
      object Edit_FNBK1: TEdit
        Left = 334
        Top = 42
        Width = 302
        Height = 24
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
        Text = 'Edit1'
      end
      object CB_Fromat: TComboBox
        Left = 165
        Top = 72
        Width = 145
        Height = 24
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ItemIndex = 1
        ParentFont = False
        TabOrder = 3
        Text = 'WORD'
        Items.Strings = (
          'Byte'
          'WORD'
          'DWORD'
          'Single (16 bit real)'
          'Double (32 bit real)')
      end
      object Edit_FNBK2: TEdit
        Left = 334
        Top = 102
        Width = 302
        Height = 24
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 4
        Text = 'Edit1'
      end
      object Edit_FN: TEdit
        Left = 8
        Top = 42
        Width = 302
        Height = 24
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 5
        Text = 'Edit_FN'
      end
      object Edit_BKInt: TEdit
        Left = 217
        Top = 132
        Width = 93
        Height = 24
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        NumbersOnly = True
        ParentFont = False
        TabOrder = 6
        Text = '100'
      end
      object Edit_BKN: TEdit
        Left = 543
        Top = 132
        Width = 93
        Height = 24
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        NumbersOnly = True
        ParentFont = False
        TabOrder = 7
        Text = '100'
      end
      object Edit_ImgN: TEdit
        Left = 217
        Top = 102
        Width = 93
        Height = 24
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        NumbersOnly = True
        ParentFont = False
        TabOrder = 8
        Text = '1050'
      end
      object LEdit_Pro: TLabeledEdit
        Left = 217
        Top = 162
        Width = 93
        Height = 24
        EditLabel.Width = 180
        EditLabel.Height = 16
        EditLabel.Caption = 'Projection Numner :             '
        LabelPosition = lpLeft
        TabOrder = 9
      end
    end
    object GroupBox2: TGroupBox
      Left = 2
      Top = 302
      Width = 664
      Height = 198
      Align = alClient
      Caption = 'Sino main settings'
      TabOrder = 1
      object Shape1: TShape
        Left = 47
        Top = 41
        Width = 284
        Height = 136
        Brush.Color = clCream
      end
      object Label1: TLabel
        Left = 492
        Top = 133
        Width = 71
        Height = 16
        Caption = 'Z Av range'
      end
      object Shape2: TShape
        Left = 155
        Top = 94
        Width = 164
        Height = 77
        Brush.Color = clMoneyGreen
      end
      object Label2: TLabel
        Left = 51
        Top = 97
        Width = 98
        Height = 16
        Caption = #8592'                  '#8594
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGreen
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label13: TLabel
        Left = 228
        Top = 128
        Width = 31
        Height = 19
        Caption = 'ROI'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGreen
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object CB_Div_BK: TCheckBox
        Left = 358
        Top = 28
        Width = 97
        Height = 17
        Caption = 'Dived BK'
        Checked = True
        State = cbChecked
        TabOrder = 0
      end
      object CB_Make_Sino: TCheckBox
        Left = 358
        Top = 104
        Width = 119
        Height = 17
        Caption = 'Make sinogram'
        Checked = True
        State = cbChecked
        TabOrder = 1
      end
      object CB_XY_Swap: TCheckBox
        Left = 375
        Top = 55
        Width = 97
        Height = 17
        Caption = 'X-Y Swap'
        TabOrder = 2
      end
      object CB_Bin: TCheckBox
        Left = 494
        Top = 55
        Width = 97
        Height = 17
        Caption = 'Binning'
        Checked = True
        State = cbChecked
        TabOrder = 3
      end
      object Edit_SinoEnd: TEdit
        Left = 580
        Top = 100
        Width = 56
        Height = 24
        TabOrder = 4
        Text = '950'
      end
      object Edit_SinoST: TEdit
        Left = 508
        Top = 100
        Width = 56
        Height = 24
        TabOrder = 5
        Text = '50'
      end
      object Edit_AvR: TEdit
        Left = 580
        Top = 130
        Width = 56
        Height = 24
        TabOrder = 6
        Text = '1'
      end
      object CB_SinoMed: TCheckBox
        Left = 378
        Top = 134
        Width = 108
        Height = 17
        Caption = 'Median filter'
        Checked = True
        State = cbChecked
        TabOrder = 7
      end
      object CB_Ln: TCheckBox
        Left = 597
        Top = 55
        Width = 48
        Height = 17
        Caption = '-Ln'
        Checked = True
        State = cbChecked
        TabOrder = 8
      end
      object LEdit_PW: TLabeledEdit
        Left = 229
        Top = 82
        Width = 81
        Height = 24
        EditLabel.Width = 80
        EditLabel.Height = 16
        EditLabel.Caption = 'Image width'
        EditLabel.Color = clBtnFace
        EditLabel.Font.Charset = DEFAULT_CHARSET
        EditLabel.Font.Color = clBlue
        EditLabel.Font.Height = -13
        EditLabel.Font.Name = 'Tahoma'
        EditLabel.Font.Style = [fsBold]
        EditLabel.ParentColor = False
        EditLabel.ParentFont = False
        NumbersOnly = True
        TabOrder = 9
      end
      object LEdit_OW: TLabeledEdit
        Left = 229
        Top = 28
        Width = 81
        Height = 24
        EditLabel.Width = 66
        EditLabel.Height = 16
        EditLabel.Caption = 'Orig width'
        EditLabel.Font.Charset = DEFAULT_CHARSET
        EditLabel.Font.Color = clRed
        EditLabel.Font.Height = -13
        EditLabel.Font.Name = 'Tahoma'
        EditLabel.Font.Style = [fsBold]
        EditLabel.ParentFont = False
        NumbersOnly = True
        ReadOnly = True
        TabOrder = 10
      end
      object LEdit_OFFY: TLabeledEdit
        Left = 155
        Top = 64
        Width = 47
        Height = 24
        EditLabel.Width = 53
        EditLabel.Height = 16
        EditLabel.Caption = 'Offset Y'
        EditLabel.Font.Charset = DEFAULT_CHARSET
        EditLabel.Font.Color = clGreen
        EditLabel.Font.Height = -13
        EditLabel.Font.Name = 'Tahoma'
        EditLabel.Font.Style = [fsBold]
        EditLabel.ParentFont = False
        NumbersOnly = True
        TabOrder = 11
      end
      object LEdit_OFFX: TLabeledEdit
        Left = 77
        Top = 94
        Width = 50
        Height = 24
        EditLabel.Width = 53
        EditLabel.Height = 16
        EditLabel.Caption = 'Offset X'
        EditLabel.Font.Charset = DEFAULT_CHARSET
        EditLabel.Font.Color = clGreen
        EditLabel.Font.Height = -13
        EditLabel.Font.Name = 'Tahoma'
        EditLabel.Font.Style = [fsBold]
        EditLabel.ParentFont = False
        NumbersOnly = True
        TabOrder = 12
      end
      object LEdit_OH: TLabeledEdit
        Left = 8
        Top = 142
        Width = 81
        Height = 24
        EditLabel.Width = 71
        EditLabel.Height = 16
        EditLabel.Caption = 'Orig height'
        EditLabel.Font.Charset = DEFAULT_CHARSET
        EditLabel.Font.Color = clRed
        EditLabel.Font.Height = -13
        EditLabel.Font.Name = 'Tahoma'
        EditLabel.Font.Style = [fsBold]
        EditLabel.ParentFont = False
        NumbersOnly = True
        ReadOnly = True
        TabOrder = 13
      end
      object LEdit_PH: TLabeledEdit
        Left = 118
        Top = 142
        Width = 81
        Height = 24
        EditLabel.Width = 85
        EditLabel.Height = 16
        EditLabel.Caption = 'Image height'
        EditLabel.Font.Charset = DEFAULT_CHARSET
        EditLabel.Font.Color = clBlue
        EditLabel.Font.Height = -13
        EditLabel.Font.Name = 'Tahoma'
        EditLabel.Font.Style = [fsBold]
        EditLabel.ParentFont = False
        NumbersOnly = True
        TabOrder = 14
      end
      object StaticText1: TStaticText
        Left = 208
        Top = 42
        Width = 11
        Height = 20
        Caption = #8593
        Color = clCream
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGreen
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 15
      end
      object StaticText2: TStaticText
        Left = 208
        Top = 73
        Width = 11
        Height = 20
        Caption = #8595
        Color = clCream
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGreen
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 16
      end
    end
    object GroupBox3: TGroupBox
      Left = 2
      Top = 2
      Width = 664
      Height = 55
      Align = alTop
      Caption = 'Sample'
      TabOrder = 2
      object Label12: TLabel
        Left = 8
        Top = 24
        Width = 48
        Height = 16
        Caption = 'Name : '
      end
    end
  end
  object OpenDialog1: TOpenDialog
    Left = 162
    Top = 419
  end
end
