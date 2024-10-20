# -*- mode: python ; coding: utf-8 -*-

block_cipher = None

added_files = [('..\\Cricket\\src\\icons', 'icons')]

a = Analysis(['..\\Cricket\\src\\main.py'],
             pathex=['.\\Cricket\\src'],
             binaries=[('C:\\Windows\\System32\\libusb-1.0.dll', 'libusb-1.0')],
             datas=[('c:\Windows\System32\libusb-1.0.dll', '.'),] + added_files,
             hiddenimports=[],
             hookspath=[],
             runtime_hooks=[],
             excludes=[],
             win_no_prefer_redirects=False,
             win_private_assemblies=False,
             cipher=block_cipher,
             noarchive=False)

			 
a.datas += [('..\\Cricket\\src\\icons\\mcci_logo.ico','\\icons\\mcci_logo.ico', "DATA")]
a.datas += [('..\\Cricket\\src\\icons\\mcci_logo.png','\\icons\\mcci_logo.png', "DATA")]
a.datas += [('..\\Cricket\\src\\icons\\btn_on.png','\\icons\\btn_on.png', "DATA")]
a.datas += [('..\\Cricket\\src\\icons\\btn_off.png','\\icons\\btn_off.png', "DATA")]
a.datas += [('..\\Cricket\\src\\icons\\wave.png','\\icons\\wave.png', "DATA")]
a.datas += [('..\\Cricket\\src\\icons\\noswitch.png','\\icons\\noswitch.png', "DATA")]
a.datas += [('..\\Cricket\\src\\icons\\warning.png','\\icons\\warning.png', "DATA")]


pyz = PYZ(a.pure, a.zipped_data,
             cipher=block_cipher)
exe = EXE(pyz,
          a.scripts, 
          [],
          exclude_binaries=True,
          name='Cricket',
          debug=False,
          bootloader_ignore_signals=False,
          strip=False,
          upx=True,
          console=False,
          disable_windowed_traceback=False,
          target_arch=None,
          codesign_identity=None,
          entitlements_file=None , icon='..\\Cricket\\src\\icons\\mcci_logo.ico', version = 'versions.rc')

coll = COLLECT(exe,
               a.binaries,
               a.zipfiles,
               a.datas, 
               strip=False,
               upx=True,
               upx_exclude=[],
               name='Cricket')