cask "quill" do
  version "0.4.7"
  sha256 "d353a287d9fa6ab0ea4a6a76a86f5e271952492126882ac83b8ab0447101dbac"

  url "https://github.com/AaravKashyap12/quill/releases/download/v#{version}/Quill-macos-universal.dmg"
  name "Quill"
  desc "Local-first voice dictation with optional speech refinement"
  homepage "https://quilldictate.site/"

  auto_updates true
  depends_on macos: :monterey

  app "Quill.app"

  caveats <<~EOS
    Quill is currently ad-hoc signed, not Apple-notarized.
    Published Mac builds remain an unsupported engineering preview.
    If macOS blocks a trusted download, follow Apple's per-app instructions for your macOS version:
      https://support.apple.com/en-us/102445
    Do not disable Gatekeeper.
    Quill needs Microphone access to record and Accessibility access to insert text.
    Homebrew does not grant these permissions or change macOS security settings.
  EOS
end
