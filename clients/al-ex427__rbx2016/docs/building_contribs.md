# Building Contribs

!!! "note READ THIS BEFORE STARTING!!"

- `"<your path>"` refers to the location where your source code resides (e.g., `C:\`)
- `"<your folder name>"` refers to the name of the folder containing the source code (e.g., `Trunk2016`)
- ⚠️ *Please note:* Technical knowledge is required. We cannot assist with every individual problem you encounter.

---

## Qt

=== "Prebuit Copy (Recommended)"

   1. Download **Qt.7z** from <https://gofile.io/d/Plze0w>
   2. Extract it in the Contribs/ folder

---

## Boost

1. Go to:  
   `<your path>\<your folder name>\Contribs\boost_1_56_0\`
2. Run:  
   `bootstrap.bat`
3. When it's done, run:  
   `build_boost.bat` — this will start compiling the Boost library.

- If you get errors related to Python, **don’t worry** — they’re harmless and won’t affect compilation.

Once it finishes, you should see something like:

```log
...failed updating 56 targets...
...skipped 8 targets...
...updated 1095 targets...
```

---

## OpenSSL

1. Install [Strawberry Perl](https://strawberryperl.com/) to proceed with the build.
2. Open **Developer Command Prompt for VS2012**
3. Navigate (`cd`) to:  
   `<your path>\<your folder name>\Contribs\openssl`
4. Run:  
   `perl Configure VC-WIN32`
   - If you get an error like `'perl' is not recognized...`, make sure Strawberry Perl was installed correctly.
5. Next, run:

   ```cmd
   ms\32all.bat
   ```

6. Create a folder named `openssl` inside `<your folder name>`
7. When the build completes, go to:  
   `<your path>\<your folder name>\Contribs\openssl\out32dll`  
   and copy these two files(`ssleay32.dll` `libeay32.dll`) to:  
   `<your path>\<your folder name>\openssl`

---

## SDL2

1. Locate the SDL2 project under:  
   `3rd Party > SDL2`
2. Right-click the project and select **Build**

To build SDL2 as a `.DLL`:

- Go to **Properties**
- Change:
  - **Target Extension** → `.dll`
  - **Configuration Type** → `Dynamic Library (.dll)`
- Remove `HAVE_LIBC;` from:  
  `C/C++ > Preprocessor > Preprocessor Definitions`
- Build the project.

To build as a `.LIB`, you don’t need to change anything — just build it as is.

---

## libcurl

1. Locate the libcurl project under:  
   `3rd Party > libcurl`
2. Right-click the project and select **Build**

To build libcurl as a `.LIB`:

- Go to **Properties**
- Change:
  - **Target Extension** → `.lib`
  - **Configuration Type** → `Static Library (.lib)`
- Build the project.

To build as a `.DLL`, no changes are needed — just build it as is.

✅ **That's it — you've compiled the contrib libraries!**  

💡 You might also want to replace the library or DLL files in your source directory with the versions you’ve just built.
