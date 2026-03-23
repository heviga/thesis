# SyncTeX Setup for Cursor - Double-Click PDF to Jump to Source

## Quick Setup (Recommended)

**Best Option: Install LaTeX Workshop Extension in Cursor**

1. Open Cursor
2. Press `Ctrl+Shift+X` to open Extensions
3. Search for "LaTeX Workshop" 
4. Install the extension by James-Yu
5. The extension will automatically:
   - Handle SyncTeX compilation
   - Provide a built-in PDF viewer with full SyncTeX support
   - Enable double-clicking in PDF to jump to source

After installation, compile your thesis and use the extension's PDF viewer.

## Alternative: External PDF Viewer

If you prefer to use an external PDF viewer:

### Option A: SumatraPDF (Best for External Viewer)
1. Download from: https://www.sumatrapdfreader.org/
2. Install it
3. Recompile your thesis - the scripts will auto-detect it
4. Double-clicking in PDF will automatically jump to Cursor

### Option B: Adobe Reader (Limited)
Adobe Reader doesn't natively support SyncTeX forward search. You would need to:
1. Configure Adobe Reader's preferences (complex, limited support)
2. Use third-party tools or workarounds

**Recommendation:** Use LaTeX Workshop extension or SumatraPDF for the best experience.

## Current Setup Status

✅ SyncTeX enabled in compilation (`-synctex=1`)  
✅ PDF contains sync information  
✅ Helper scripts created  

The PDF is ready for SyncTeX - you just need a compatible viewer!

