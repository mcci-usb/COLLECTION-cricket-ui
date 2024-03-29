# -*- mode: python ; coding: utf-8 -*-

block_cipher = None


a = Analysis(['../Cricket/src/main.py'],
             pathex=['./src'],
             binaries=[],
             datas=[],
             hiddenimports=[],
             hookspath=[],
             runtime_hooks=[],
             excludes=[],
             win_no_prefer_redirects=False,
             win_private_assemblies=False,
             cipher=block_cipher,
             noarchive=False)

a.datas += [('/icons/mcci_logo.ico','../Cricket/src/icons/mcci_logo.ico', "DATA")]
a.datas += [('/icons/mcci_logo.png','../Cricket/src/icons/mcci_logo.png', "DATA")]
a.datas += [('/icons/btn_on.png','../Cricket/src/icons/btn_on.png', "DATA")]
a.datas += [('/icons/btn_off.png','../Cricket/src/icons/btn_off.png', "DATA")]
a.datas += [('/icons/wave.png','../Cricket/src/icons/wave.png', "DATA")]
a.datas += [('/icons/noswitch.png','../Cricket/src/icons/noswitch.png', "DATA")]
a.datas += [('/icons/warning.png','../Cricket/src/icons/warning.png', "DATA")]

pyz = PYZ(a.pure, a.zipped_data,
             cipher=block_cipher)
exe = EXE(pyz,
          a.scripts,
          a.binaries,
          a.zipfiles,
          a.datas,
          [],
          name='Cricket',
          debug=False,
          bootloader_ignore_signals=False,
          strip=False,
          upx=True,
          upx_exclude=[],
          runtime_tmpdir=None,
          console=False , icon='../Cricket/src/icons/mcci_logo.icns')
app = BUNDLE(exe,
             name='Cricket.app',
             icon='../Cricket/src/icons/mcci_logo.icns',
             bundle_identifier=None)
