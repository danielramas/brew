cask 'with-uninstall-rmdir' do
  version '1.2.3'
  sha256 '8c62a2b791cf5f0da6066a0a4b6e85f62949cd60975da062df44adf887f4370b'

  url "file://#{TEST_FIXTURE_DIR}/cask/MyFancyPkg.zip"
  homepage 'http://example.com/fancy-pkg'

  pkg 'MyFancyPkg/Fancy.pkg'

  uninstall rmdir: "#{TEST_TMPDIR}/empty_directory_path"
end
