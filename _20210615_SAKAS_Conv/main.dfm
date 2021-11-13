object Form_Main: TForm_Main
  Left = 0
  Top = 0
  Caption = 'SAKAS Conv'
  ClientHeight = 811
  ClientWidth = 336
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object SB: TStatusBar
    Left = 0
    Top = 792
    Width = 336
    Height = 19
    Panels = <>
    SimplePanel = True
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 336
    Height = 44
    Align = alTop
    BevelInner = bvRaised
    BevelOuter = bvLowered
    Color = 16510433
    ParentBackground = False
    TabOrder = 1
    object BB_SAKAS: TBitBtn
      Left = 8
      Top = 10
      Width = 80
      Height = 25
      Caption = 'SAKAS'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnClick = BB_SAKASClick
    end
    object BB_Copy_Cond: TBitBtn
      Left = 94
      Top = 10
      Width = 80
      Height = 25
      Caption = 'Copy cond.'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnClick = BB_Copy_CondClick
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 44
    Width = 336
    Height = 237
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 2
    object Label8: TLabel
      Left = 184
      Top = 165
      Width = 53
      Height = 13
      Caption = 'Z Av range'
    end
    object Label19: TLabel
      Left = 81
      Top = 75
      Width = 33
      Height = 13
      Caption = 'Sel. BK'
    end
    object BB_Prev_Img: TBitBtn
      Left = 8
      Top = 8
      Width = 75
      Height = 25
      Caption = 'PreView Img'
      TabOrder = 0
      OnClick = BB_Prev_ImgClick
    end
    object Edit_ImgNo: TEdit
      Left = 89
      Top = 10
      Width = 64
      Height = 21
      TabOrder = 1
      Text = '0'
    end
    object UD_PrevImg: TUpDown
      Left = 153
      Top = 10
      Width = 16
      Height = 21
      Associate = Edit_ImgNo
      Min = -100
      Max = 10000
      TabOrder = 2
      OnClick = UD_PrevImgClick
    end
    object BB_PrevBK: TBitBtn
      Left = 8
      Top = 39
      Width = 75
      Height = 25
      Caption = 'PreView BK'
      TabOrder = 3
      OnClick = BB_PrevBKClick
    end
    object Edit_PrevBK: TEdit
      Left = 89
      Top = 41
      Width = 64
      Height = 21
      TabOrder = 4
      Text = '0'
    end
    object UD_PrevBK: TUpDown
      Left = 153
      Top = 41
      Width = 16
      Height = 21
      Associate = Edit_PrevBK
      Max = 10000
      TabOrder = 5
      OnClick = UD_PrevBKClick
    end
    object BB_Prev_NImg: TBitBtn
      Left = 8
      Top = 160
      Width = 75
      Height = 25
      Caption = 'View Img'
      TabOrder = 6
      OnClick = BB_Prev_NImgClick
    end
    object Edit_PrevNImg: TEdit
      Left = 89
      Top = 162
      Width = 64
      Height = 21
      TabOrder = 7
      Text = '0'
    end
    object UD_PrevNImg: TUpDown
      Left = 153
      Top = 162
      Width = 16
      Height = 21
      Associate = Edit_PrevNImg
      Max = 10000
      TabOrder = 8
    end
    object BB_Conv: TBitBtn
      Left = 175
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Conv NImg'
      TabOrder = 9
      OnClick = BB_ConvClick
    end
    object CB_SwapXY: TCheckBox
      Left = 184
      Top = 58
      Width = 66
      Height = 21
      Caption = 'XY Swap'
      TabOrder = 10
    end
    object CB_Bin: TCheckBox
      Left = 184
      Top = 38
      Width = 62
      Height = 17
      Caption = 'Binning'
      TabOrder = 11
    end
    object BB_MakeSino: TBitBtn
      Left = 175
      Top = 102
      Width = 75
      Height = 25
      Caption = 'Make Sino'
      TabOrder = 12
      OnClick = BB_MakeSinoClick
    end
    object Edit_SinoST: TEdit
      Left = 184
      Top = 133
      Width = 56
      Height = 21
      TabOrder = 13
      Text = '200'
    end
    object Edit_SinoEnd: TEdit
      Left = 256
      Top = 132
      Width = 56
      Height = 21
      TabOrder = 14
      Text = '200'
    end
    object BB_STOP: TBitBtn
      Left = 256
      Top = 101
      Width = 75
      Height = 25
      Caption = 'STOP'
      TabOrder = 15
      OnClick = BB_STOPClick
    end
    object BB_DARK: TBitBtn
      Left = 8
      Top = 102
      Width = 75
      Height = 25
      Caption = 'LOAD DARK'
      TabOrder = 16
      OnClick = BB_DARKClick
    end
    object Edit_AvR: TEdit
      Left = 256
      Top = 162
      Width = 56
      Height = 21
      TabOrder = 17
      Text = '1'
    end
    object CB_Damy: TCheckBox
      Left = 89
      Top = 106
      Width = 64
      Height = 17
      Caption = 'Damy'
      Checked = True
      State = cbChecked
      TabOrder = 18
    end
    object Edit_DBK: TEdit
      Left = 89
      Top = 132
      Width = 64
      Height = 21
      TabOrder = 19
      Text = '95'
    end
    object CB_MedF: TCheckBox
      Left = 14
      Top = 191
      Width = 82
      Height = 17
      Caption = 'Median'
      TabOrder = 20
    end
    object CB_x2: TCheckBox
      Left = 256
      Top = 38
      Width = 50
      Height = 17
      Caption = 'x2'
      TabOrder = 21
    end
    object CB_MedBK: TCheckBox
      Left = 14
      Top = 74
      Width = 62
      Height = 17
      Caption = 'Median'
      TabOrder = 22
    end
    object CB_SinoMed: TCheckBox
      Left = 184
      Top = 187
      Width = 82
      Height = 17
      Caption = 'Median'
      Checked = True
      State = cbChecked
      TabOrder = 23
    end
    object CB_Ln2: TCheckBox
      Left = 102
      Top = 190
      Width = 51
      Height = 17
      Caption = '-Ln'
      Checked = True
      State = cbChecked
      TabOrder = 24
    end
    object CB_WOBK: TCheckBox
      Left = 14
      Top = 214
      Width = 67
      Height = 17
      Caption = 'WO BK'
      TabOrder = 25
    end
    object Edit_SelBK: TEdit
      Left = 128
      Top = 72
      Width = 41
      Height = 21
      TabOrder = 26
      Text = '-1'
    end
    object CB_BGProc: TCheckBox
      Left = 256
      Top = 61
      Width = 65
      Height = 17
      Caption = 'BG Proc'
      Checked = True
      State = cbChecked
      TabOrder = 27
    end
    object BB_STop2: TBitBtn
      Left = 256
      Top = 7
      Width = 75
      Height = 25
      Caption = 'STOP'
      TabOrder = 28
      OnClick = BB_STop2Click
    end
  end
  object GroupBox1: TGroupBox
    Left = 0
    Top = 281
    Width = 336
    Height = 400
    Align = alTop
    Caption = 'File Info'
    TabOrder = 3
    object Label1: TLabel
      Left = 8
      Top = 24
      Width = 46
      Height = 13
      Caption = 'File Name'
    end
    object SB_FN: TSpeedButton
      Left = 298
      Top = 42
      Width = 23
      Height = 22
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
        5555555555555555555555555555555555555555555555555555555555555555
        555555555555555555555555555555555555555FFFFFFFFFF555550000000000
        55555577777777775F55500B8B8B8B8B05555775F555555575F550F0B8B8B8B8
        B05557F75F555555575F50BF0B8B8B8B8B0557F575FFFFFFFF7F50FBF0000000
        000557F557777777777550BFBFBFBFB0555557F555555557F55550FBFBFBFBF0
        555557F555555FF7555550BFBFBF00055555575F555577755555550BFBF05555
        55555575FFF75555555555700007555555555557777555555555555555555555
        5555555555555555555555555555555555555555555555555555}
      NumGlyphs = 2
      OnClick = SB_FNClick
    end
    object Label2: TLabel
      Left = 8
      Top = 70
      Width = 88
      Height = 13
      Caption = 'Original image size'
    end
    object Label3: TLabel
      Left = 144
      Top = 70
      Width = 52
      Height = 13
      Caption = 'Image Size'
    end
    object Label5: TLabel
      Left = 8
      Top = 116
      Width = 31
      Height = 13
      Caption = 'Offset'
    end
    object Label10: TLabel
      Left = 276
      Top = 116
      Width = 36
      Height = 13
      Caption = 'BK Num'
    end
    object Label4: TLabel
      Left = 214
      Top = 116
      Width = 29
      Height = 13
      Caption = 'BK Int'
    end
    object Label6: TLabel
      Left = 144
      Top = 116
      Width = 48
      Height = 13
      Caption = 'Projection'
    end
    object Label7: TLabel
      Left = 8
      Top = 326
      Width = 71
      Height = 13
      Caption = 'Dark File Name'
    end
    object Label9: TLabel
      Left = 8
      Top = 375
      Width = 46
      Height = 13
      Caption = 'Dark Num'
    end
    object Label13: TLabel
      Left = 14
      Top = 192
      Width = 58
      Height = 13
      Caption = 'Total Offset'
    end
    object Label14: TLabel
      Left = 8
      Top = 227
      Width = 61
      Height = 13
      Caption = 'BK File Name'
    end
    object Label15: TLabel
      Left = 8
      Top = 303
      Width = 36
      Height = 13
      Caption = 'BK Num'
    end
    object Label16: TLabel
      Left = 276
      Top = 70
      Width = 48
      Height = 13
      Caption = 'Img Nnum'
    end
    object SB_DArkFN: TSpeedButton
      Left = 298
      Top = 345
      Width = 23
      Height = 22
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
        5555555555555555555555555555555555555555555555555555555555555555
        555555555555555555555555555555555555555FFFFFFFFFF555550000000000
        55555577777777775F55500B8B8B8B8B05555775F555555575F550F0B8B8B8B8
        B05557F75F555555575F50BF0B8B8B8B8B0557F575FFFFFFFF7F50FBF0000000
        000557F557777777777550BFBFBFBFB0555557F555555557F55550FBFBFBFBF0
        555557F555555FF7555550BFBFBF00055555575F555577755555550BFBF05555
        55555575FFF75555555555700007555555555557777555555555555555555555
        5555555555555555555555555555555555555555555555555555}
      NumGlyphs = 2
      OnClick = SB_DArkFNClick
    end
    object SB_FBK: TSpeedButton
      Left = 298
      Top = 244
      Width = 23
      Height = 24
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
        5555555555555555555555555555555555555555555555555555555555555555
        555555555555555555555555555555555555555FFFFFFFFFF555550000000000
        55555577777777775F55500B8B8B8B8B05555775F555555575F550F0B8B8B8B8
        B05557F75F555555575F50BF0B8B8B8B8B0557F575FFFFFFFF7F50FBF0000000
        000557F557777777777550BFBFBFBFB0555557F555555557F55550FBFBFBFBF0
        555557F555555FF7555550BFBFBF00055555575F555577755555550BFBF05555
        55555575FFF75555555555700007555555555557777555555555555555555555
        5555555555555555555555555555555555555555555555555555}
      NumGlyphs = 2
      OnClick = SB_FBKClick
    end
    object Label17: TLabel
      Left = 244
      Top = 165
      Width = 16
      Height = 13
      Caption = 'Ext'
    end
    object Label18: TLabel
      Left = 14
      Top = 165
      Width = 21
      Height = 13
      Caption = 'Digit'
    end
    object SB_FBK2: TSpeedButton
      Left = 298
      Top = 272
      Width = 23
      Height = 24
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
        5555555555555555555555555555555555555555555555555555555555555555
        555555555555555555555555555555555555555FFFFFFFFFF555550000000000
        55555577777777775F55500B8B8B8B8B05555775F555555575F550F0B8B8B8B8
        B05557F75F555555575F50BF0B8B8B8B8B0557F575FFFFFFFF7F50FBF0000000
        000557F557777777777550BFBFBFBFB0555557F555555557F55550FBFBFBFBF0
        555557F555555FF7555550BFBFBF00055555575F555577755555550BFBF05555
        55555575FFF75555555555700007555555555557777555555555555555555555
        5555555555555555555555555555555555555555555555555555}
      NumGlyphs = 2
      OnClick = SB_FBK2Click
    end
    object Edit_FN: TEdit
      Left = 8
      Top = 43
      Width = 285
      Height = 21
      TabOrder = 0
      Text = 'D:\201708_HARL\08101100'
    end
    object Edit_OH: TEdit
      Left = 78
      Top = 89
      Width = 46
      Height = 21
      TabOrder = 2
      Text = '1500'
      TextHint = '0'
    end
    object Edit_OW: TEdit
      Left = 14
      Top = 89
      Width = 46
      Height = 21
      TabOrder = 1
      Text = '2560'
    end
    object Edit_PW: TEdit
      Left = 150
      Top = 89
      Width = 46
      Height = 21
      TabOrder = 3
      Text = '2560'
    end
    object Edit_PH: TEdit
      Left = 214
      Top = 89
      Width = 46
      Height = 21
      TabOrder = 4
      Text = '1500'
      TextHint = '0'
    end
    object Edit_OFFY: TEdit
      Left = 78
      Top = 135
      Width = 46
      Height = 21
      TabOrder = 6
      Text = '0'
    end
    object Edit_OFFX: TEdit
      Left = 14
      Top = 135
      Width = 46
      Height = 21
      TabOrder = 5
      Text = '0'
    end
    object Edit_BKNum: TEdit
      Left = 278
      Top = 135
      Width = 46
      Height = 21
      TabOrder = 7
      Text = '100'
    end
    object Edit_BKInt: TEdit
      Left = 214
      Top = 135
      Width = 46
      Height = 21
      TabOrder = 8
      Text = '1050'
    end
    object Edit_Pro: TEdit
      Left = 150
      Top = 135
      Width = 46
      Height = 21
      TabOrder = 9
      Text = '1050'
    end
    object Edit_DFN: TEdit
      Left = 8
      Top = 345
      Width = 285
      Height = 21
      TabOrder = 10
      Text = 'D:\201705_Saga\05092015'
    end
    object Edit_DN: TEdit
      Left = 78
      Top = 372
      Width = 46
      Height = 21
      TabOrder = 11
      Text = '100'
    end
    object Edit_OffImg: TEdit
      Left = 78
      Top = 189
      Width = 46
      Height = 21
      TabOrder = 12
      Text = '0'
    end
    object Edit_FNBK: TEdit
      Left = 8
      Top = 246
      Width = 285
      Height = 21
      TabOrder = 13
      Text = 'D:\201708_HARL\08101105'
    end
    object Edit_BKN: TEdit
      Left = 78
      Top = 300
      Width = 46
      Height = 21
      TabOrder = 14
      Text = '200'
    end
    object CB_USEBK: TCheckBox
      Left = 86
      Top = 225
      Width = 97
      Height = 19
      Caption = 'USE BK File'
      TabOrder = 15
    end
    object Edit_ImgN: TEdit
      Left = 276
      Top = 89
      Width = 46
      Height = 21
      TabOrder = 16
      Text = '1'
    end
    object Edit_FNBK2: TEdit
      Left = 8
      Top = 273
      Width = 285
      Height = 21
      TabOrder = 17
    end
    object CB_IndV: TCheckBox
      Left = 72
      Top = 23
      Width = 97
      Height = 17
      Caption = 'Indiv file'
      TabOrder = 18
    end
    object CB_Inv2: TCheckBox
      Left = 169
      Top = 225
      Width = 97
      Height = 19
      Caption = 'Indiv file'
      TabOrder = 19
    end
    object CB_Inv3: TCheckBox
      Left = 169
      Top = 325
      Width = 97
      Height = 19
      Caption = 'Indiv file'
      TabOrder = 20
    end
    object Edit_EXT: TEdit
      Left = 278
      Top = 162
      Width = 46
      Height = 21
      TabOrder = 21
      Text = '.raw'
    end
    object Edit_Dig: TEdit
      Left = 78
      Top = 162
      Width = 46
      Height = 21
      TabOrder = 22
      Text = '0'
    end
    object UD_Dig: TUpDown
      Left = 124
      Top = 162
      Width = 16
      Height = 21
      Associate = Edit_Dig
      TabOrder = 23
    end
  end
  object Memo: TRichEdit
    Left = 0
    Top = 681
    Width = 336
    Height = 111
    Align = alClient
    Font.Charset = SHIFTJIS_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    ScrollBars = ssBoth
    TabOrder = 4
    Zoom = 100
  end
  object OpenDialog1: TOpenDialog
    Left = 48
    Top = 704
  end
end
