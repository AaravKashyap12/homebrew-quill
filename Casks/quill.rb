cask "quill" do
  version "0.4.4"
  sha256 "f4d71b1e61ba03df4aa4fb7a220b1a339561041a364872a0496dc252648e1155"

  url "https://github.com/AaravKashyap12/quill/releases/download/v#{version}/Quill-macos-universal.dmg"
  name "Quill"
  desc "Local-first voice dictation with optional speech refinement"
  homepage "https://quilldictate.site/"

  auto_updates true
  depends_on macos: :monterey

  app "Quill.app"

  caveats <<~EOS
    Quill is currently ad-hoc signed, not Apple-notarized.
    If macOS blocks the first launch, use System Settings > Privacy & Security > Open Anyway.
    Quill needs Microphone access to record and Accessibility access to insert text.
    Homebrew does not grant these permissions or change macOS security settings.
  EOS
end
