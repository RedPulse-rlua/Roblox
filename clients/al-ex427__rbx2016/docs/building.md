# Building

???+ info "REQUIREMENTS"

    - [Visual Studio 2012 + Visual Studio 2012 Update 5](https://gofile.io/d/Plze0w)
    - [Git](https://git-scm.com/)


    ??? info "ANDROID BUILD REQUIREMENTS"
         - [Android Studio](https://developer.android.com/studio)
         - Android 28 NDK
         - Android 15 + 28 SDK
         - Java JDK 21
    > You can safely ignore the android requirements if you are not building for Android

---

## Installing Requirements

> If you already have these you can skip directly [Downloading The Project](#downloading-the-project)</br>
> This assumes you have already downloaded the files, if not read the requirements note to see where to get them

=== "Installing VS2012"
      1. Mount the VS2012 iso (en_visual_studio_ultimate_2012_x86_dvd_2262106.iso)
      2. Click on vs_ultimate.exe
      3. Continue installation as you would
         * Make sure to only select C++ Foundation Classes if you want to save space
      4. Once installed click close
      5. Eject the VS2012 iso and mount VS2012 Update 5 iso (mu_visual_studio_2012_update_5_x86_dvd_6967467.iso)
      6. Wait for it to complete

=== "Installing Git"
      1. Run the git setup file
      2. Click next until you get to install part
      3. Wait for it to install
      4. Click finish

---

## Downloading the project

=== "Using Git (Recommended)"
      1. Open a Powershell or a Command Prompt instance with administrator perms
      2. Turn on Git longpaths:
         Because there are some pretty long paths you can run this command to enable them:

         ```bash
         git config --system core.longpaths true
         ```

      3. Go into the path you want to want to download it into. (eg. `C:\Users\Alex\Documents`)
      4. Cloning the project
         Run

         ```bash
         git clone https://github.com/alexs-stuff/roblox-2016-source-code
         ```

         to clone and wait for it to finish
      5. Go into the directory it cloned to. (eg. `C:\Users\Alex\Documents\roblox-2016-source-code`)

=== "Downloading as a zip"
      1. On the repo click Code then Download Zip and then wait until it finishes
      2. Extract it somewhere eg. `C:\Users\Alex\Documents`
      3. Go into the directory it extracted to (eg. `C:\Users\Alex\Documents\roblox-2016-source-code\roblox-2016-source-code`)

## Building the project

### Building for Windows

> This assumes you have already built/installed the required project depedencies, if not go to [Building Contribs](building_contribs.md)

#### <h3>Open project solution</h3>

> If you have VS2022 installed you can view using that
Click on **Client_2016.sln** inside your project directory
!!! warning
      If it prompts you with "Review Solution Actions" then ignore it by pressing Cancel

#### <h3>Building Roblox depedencies</h3>

   These depdencies are required before building any of the projects (RCCService, RobloxStudio, WindowsClient)

   It is recommended to follow the provided order

   To build the target dependency right click and click build

- 3rd Party:
      - `boost.static`
      - `zlib`
- gSOAP:
      - `soapcpp2`
      - `wsdl2h`
- Shaders:
      - `ShaderCompiler`
- Rendering:
      - `LibOVR`
- Core Components:
      - `qtnribbon`
      - `sgCore`
      - `CoreScriptConverter2` (only needed for **Release/Debug** when building **WindowsClient**)

#### <h3>Building your target project</h3>
Right click on your target project (Must be WindowsClient, RobloxStudio or RCCService) and click build

### Building for Android

> This assumes you have already built/installed the Android Depedencies, if not go to [Installing Requirements](#installing-requirements)

1. Open the `local.properties` file found in `<Your Project Directory>/Android/` in any text editor
2. Build libroblox.so for your platform with legacy mode
3. Pack the OBB assets
4. Build RobloxHybrid
5. then Build APK
