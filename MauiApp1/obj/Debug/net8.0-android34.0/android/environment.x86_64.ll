; ModuleID = 'environment.x86_64.ll'
source_filename = "environment.x86_64.ll"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-android21"

%struct.ApplicationConfig = type {
	i8, ; bool uses_mono_llvm
	i8, ; bool uses_mono_aot
	i8, ; bool aot_lazy_load
	i8, ; bool uses_assembly_preload
	i8, ; bool broken_exception_transitions
	i8, ; bool instant_run_enabled
	i8, ; bool jni_add_native_method_registration_attribute_present
	i8, ; bool have_runtime_config_blob
	i8, ; bool have_assemblies_blob
	i8, ; bool marshal_methods_enabled
	i8, ; uint8_t bound_stream_io_exception_type
	i32, ; uint32_t package_naming_policy
	i32, ; uint32_t environment_variable_count
	i32, ; uint32_t system_property_count
	i32, ; uint32_t number_of_assemblies_in_apk
	i32, ; uint32_t bundled_assembly_name_width
	i32, ; uint32_t number_of_assembly_store_files
	i32, ; uint32_t number_of_dso_cache_entries
	i32, ; uint32_t android_runtime_jnienv_class_token
	i32, ; uint32_t jnienv_initialize_method_token
	i32, ; uint32_t jnienv_registerjninatives_method_token
	i32, ; uint32_t jni_remapping_replacement_type_count
	i32, ; uint32_t jni_remapping_replacement_method_index_entry_count
	i32, ; uint32_t mono_components_mask
	ptr ; char* android_package_name
}

%struct.AssemblyStoreAssemblyDescriptor = type {
	i32, ; uint32_t data_offset
	i32, ; uint32_t data_size
	i32, ; uint32_t debug_data_offset
	i32, ; uint32_t debug_data_size
	i32, ; uint32_t config_data_offset
	i32 ; uint32_t config_data_size
}

%struct.AssemblyStoreRuntimeData = type {
	ptr, ; uint8_t data_start
	i32, ; uint32_t assembly_count
	ptr ; AssemblyStoreAssemblyDescriptor assemblies
}

%struct.AssemblyStoreSingleAssemblyRuntimeData = type {
	ptr, ; uint8_t image_data
	ptr, ; uint8_t debug_info_data
	ptr, ; uint8_t config_data
	ptr ; AssemblyStoreAssemblyDescriptor descriptor
}

%struct.DSOCacheEntry = type {
	i64, ; uint64_t hash
	i8, ; bool ignore
	ptr, ; char* name
	ptr ; void* handle
}

%struct.XamarinAndroidBundledAssembly = type {
	i32, ; int32_t apk_fd
	i32, ; uint32_t data_offset
	i32, ; uint32_t data_size
	ptr, ; uint8_t data
	i32, ; uint32_t name_length
	ptr ; char* name
}

; 0x15e6972616d58
@format_tag = dso_local local_unnamed_addr constant i64 385281960275288, align 8

@mono_aot_mode_name = dso_local local_unnamed_addr constant ptr @.str.0, align 8

; Application environment variables array, name:value
@app_environment_variables = dso_local local_unnamed_addr constant [12 x ptr] [
	ptr @.env.0, ; 0
	ptr @.env.1, ; 1
	ptr @.env.2, ; 2
	ptr @.env.3, ; 3
	ptr @.env.4, ; 4
	ptr @.env.5, ; 5
	ptr @.env.6, ; 6
	ptr @.env.7, ; 7
	ptr @.env.8, ; 8
	ptr @.env.9, ; 9
	ptr @.env.10, ; 10
	ptr @.env.11 ; 11
], align 16

; System properties defined by the application
@app_system_properties = dso_local local_unnamed_addr constant [0 x ptr] zeroinitializer, align 8

@application_config = dso_local local_unnamed_addr constant %struct.ApplicationConfig {
	i8 0, ; bool uses_mono_llvm
	i8 1, ; bool uses_mono_aot
	i8 0, ; bool aot_lazy_load
	i8 0, ; bool uses_assembly_preload
	i8 0, ; bool broken_exception_transitions
	i8 0, ; bool instant_run_enabled
	i8 0, ; bool jni_add_native_method_registration_attribute_present
	i8 1, ; bool have_runtime_config_blob
	i8 0, ; bool have_assemblies_blob
	i8 0, ; bool marshal_methods_enabled
	i8 0, ; uint8_t bound_stream_io_exception_type (0x0)
	i32 3, ; uint32_t package_naming_policy (0x3)
	i32 12, ; uint32_t environment_variable_count (0xc)
	i32 0, ; uint32_t system_property_count (0x0)
	i32 309, ; uint32_t number_of_assemblies_in_apk (0x135)
	i32 65, ; uint32_t bundled_assembly_name_width (0x41)
	i32 2, ; uint32_t number_of_assembly_store_files (0x2)
	i32 1686, ; uint32_t number_of_dso_cache_entries (0x696)
	i32 33560135, ; uint32_t android_runtime_jnienv_class_token (0x2001647)
	i32 100757451, ; uint32_t jnienv_initialize_method_token (0x6016fcb)
	i32 100757450, ; uint32_t jnienv_registerjninatives_method_token (0x6016fca)
	i32 0, ; uint32_t jni_remapping_replacement_type_count (0x0)
	i32 0, ; uint32_t jni_remapping_replacement_method_index_entry_count (0x0)
	i32 3, ; uint32_t mono_components_mask (0x3)
	ptr @.ApplicationConfig.0_android_package_name; char* android_package_name
}, align 16

; DSO cache entries
@dso_cache = dso_local local_unnamed_addr global [1686 x %struct.DSOCacheEntry] [
	%struct.DSOCacheEntry {
		i64 10013782901593326, ; hash 0x23937b84b514ee, from name: aot-System.Buffers.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.17_name, ; name: libaot-System.Buffers.dll.so
		ptr null; void* handle (0x0)
	}, ; 0
	%struct.DSOCacheEntry {
		i64 12621202541717236, ; hash 0x2cd6eab62326f4, from name: aot-Xamarin.AndroidX.Fragment.Ktx.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.233_name, ; name: libaot-Xamarin.AndroidX.Fragment.Ktx.dll.so
		ptr null; void* handle (0x0)
	}, ; 1
	%struct.DSOCacheEntry {
		i64 16604595802139920, ; hash 0x3afdcaba6ced10, from name: libaot-Xamarin.AndroidX.CardView.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.214_name, ; name: libaot-Xamarin.AndroidX.CardView.dll.so
		ptr null; void* handle (0x0)
	}, ; 2
	%struct.DSOCacheEntry {
		i64 24362543149721218, ; hash 0x568d9a9a43a682, from name: Xamarin.AndroidX.DynamicAnimation
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.228_name, ; name: libaot-Xamarin.AndroidX.DynamicAnimation.dll.so
		ptr null; void* handle (0x0)
	}, ; 3
	%struct.DSOCacheEntry {
		i64 29859340471032836, ; hash 0x6a14e97600dc04, from name: libaot-System.Net.WebSockets.Client.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.89_name, ; name: libaot-System.Net.WebSockets.Client.dll.so
		ptr null; void* handle (0x0)
	}, ; 4
	%struct.DSOCacheEntry {
		i64 84283058636713278, ; hash 0x12b6efeca9fed3e, from name: aot-System.Threading.Channels.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.149_name, ; name: libaot-System.Threading.Channels.dll.so
		ptr null; void* handle (0x0)
	}, ; 5
	%struct.DSOCacheEntry {
		i64 106028893014789901, ; hash 0x178b0b768130f0d, from name: libaot-System.ComponentModel.DataAnnotations.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.24_name, ; name: libaot-System.ComponentModel.DataAnnotations.dll.so
		ptr null; void* handle (0x0)
	}, ; 6
	%struct.DSOCacheEntry {
		i64 120698629574877762, ; hash 0x1accec39cafe242, from name: Mono.Android
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.181_name, ; name: libaot-Mono.Android.dll.so
		ptr null; void* handle (0x0)
	}, ; 7
	%struct.DSOCacheEntry {
		i64 123340943944852543, ; hash 0x1b631ef5e18243f, from name: aot-Xamarin.AndroidX.Emoji2.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.229_name, ; name: libaot-Xamarin.AndroidX.Emoji2.dll.so
		ptr null; void* handle (0x0)
	}, ; 8
	%struct.DSOCacheEntry {
		i64 127396146877449571, ; hash 0x1c49a1ee0624563, from name: libaot-System.Runtime.Handles
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.114_name, ; name: libaot-System.Runtime.Handles.dll.so
		ptr null; void* handle (0x0)
	}, ; 9
	%struct.DSOCacheEntry {
		i64 130339972656542395, ; hash 0x1cf0f83ba3a32bb, from name: libaot-WindowsBase.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.175_name, ; name: libaot-WindowsBase.dll.so
		ptr null; void* handle (0x0)
	}, ; 10
	%struct.DSOCacheEntry {
		i64 130550379555063986, ; hash 0x1cfcee0e6ac08b2, from name: Microsoft.Extensions.Primitives.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.192_name, ; name: libaot-Microsoft.Extensions.Primitives.dll.so
		ptr null; void* handle (0x0)
	}, ; 11
	%struct.DSOCacheEntry {
		i64 147907448127148234, ; hash 0x20d790a5940d0ca, from name: libaot-Xamarin.KotlinX.Coroutines.Core.Jvm
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.282_name, ; name: libaot-Xamarin.KotlinX.Coroutines.Core.Jvm.dll.so
		ptr null; void* handle (0x0)
	}, ; 12
	%struct.DSOCacheEntry {
		i64 171219061430268105, ; hash 0x2604ad44753b0c9, from name: aot-System.Security
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.140_name, ; name: libaot-System.Security.dll.so
		ptr null; void* handle (0x0)
	}, ; 13
	%struct.DSOCacheEntry {
		i64 178964122295045403, ; hash 0x27bceebc8ef8d1b, from name: aot-System.ServiceProcess.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.142_name, ; name: libaot-System.ServiceProcess.dll.so
		ptr null; void* handle (0x0)
	}, ; 14
	%struct.DSOCacheEntry {
		i64 221057335580609593, ; hash 0x3115a79ba46cc39, from name: libaot-System.Threading.Thread.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.155_name, ; name: libaot-System.Threading.Thread.dll.so
		ptr null; void* handle (0x0)
	}, ; 15
	%struct.DSOCacheEntry {
		i64 221913484098395070, ; hash 0x3146523568ddbbe, from name: libaot-Microsoft.Maui.Graphics
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.198_name, ; name: libaot-Microsoft.Maui.Graphics.dll.so
		ptr null; void* handle (0x0)
	}, ; 16
	%struct.DSOCacheEntry {
		i64 228930976305280909, ; hash 0x32d538290c2778d, from name: libaot-Microsoft.Extensions.Configuration.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.184_name, ; name: libaot-Microsoft.Extensions.Configuration.dll.so
		ptr null; void* handle (0x0)
	}, ; 17
	%struct.DSOCacheEntry {
		i64 230901793898057014, ; hash 0x33453f54b4b4d36, from name: libaot-System.IO
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.67_name, ; name: libaot-System.IO.dll.so
		ptr null; void* handle (0x0)
	}, ; 18
	%struct.DSOCacheEntry {
		i64 255257345538630402, ; hash 0x38adb340f23a302, from name: aot-System.Globalization.Extensions.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.51_name, ; name: libaot-System.Globalization.Extensions.dll.so
		ptr null; void* handle (0x0)
	}, ; 19
	%struct.DSOCacheEntry {
		i64 257018721508117035, ; hash 0x3911d2a5c1dca2b, from name: libaot-Xamarin.AndroidX.Lifecycle.LiveData.Core.Ktx
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.239_name, ; name: libaot-Xamarin.AndroidX.Lifecycle.LiveData.Core.Ktx.dll.so
		ptr null; void* handle (0x0)
	}, ; 20
	%struct.DSOCacheEntry {
		i64 274660847975729299, ; hash 0x3cfca96054d0893, from name: System.Net.Http.Json.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.73_name, ; name: libaot-System.Net.Http.Json.dll.so
		ptr null; void* handle (0x0)
	}, ; 21
	%struct.DSOCacheEntry {
		i64 288365751017506018, ; hash 0x4007b1f6ac984e2, from name: libaot-System.IO.FileSystem.DriveInfo
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.58_name, ; name: libaot-System.IO.FileSystem.DriveInfo.dll.so
		ptr null; void* handle (0x0)
	}, ; 22
	%struct.DSOCacheEntry {
		i64 290628453294630638, ; hash 0x4088509d83f66ee, from name: libaot-System.Net.Primitives.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.80_name, ; name: libaot-System.Net.Primitives.dll.so
		ptr null; void* handle (0x0)
	}, ; 23
	%struct.DSOCacheEntry {
		i64 294786924891261343, ; hash 0x4174b257692c99f, from name: aot-Xamarin.AndroidX.Navigation.Common.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.248_name, ; name: libaot-Xamarin.AndroidX.Navigation.Common.dll.so
		ptr null; void* handle (0x0)
	}, ; 24
	%struct.DSOCacheEntry {
		i64 295915112840604065, ; hash 0x41b4d3a3088a9a1, from name: Xamarin.AndroidX.SlidingPaneLayout
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.259_name, ; name: libaot-Xamarin.AndroidX.SlidingPaneLayout.dll.so
		ptr null; void* handle (0x0)
	}, ; 25
	%struct.DSOCacheEntry {
		i64 310829165835334582, ; hash 0x450497abf7233b6, from name: libaot-Xamarin.Google.Android.Material.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.271_name, ; name: libaot-Xamarin.Google.Android.Material.dll.so
		ptr null; void* handle (0x0)
	}, ; 26
	%struct.DSOCacheEntry {
		i64 318998200374973725, ; hash 0x46d4f2c5156d51d, from name: libaot-Newtonsoft.Json
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.199_name, ; name: libaot-Newtonsoft.Json.dll.so
		ptr null; void* handle (0x0)
	}, ; 27
	%struct.DSOCacheEntry {
		i64 326997716285276385, ; hash 0x489bab0c18c40e1, from name: Xamarin.AndroidX.DynamicAnimation.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.228_name, ; name: libaot-Xamarin.AndroidX.DynamicAnimation.dll.so
		ptr null; void* handle (0x0)
	}, ; 28
	%struct.DSOCacheEntry {
		i64 327393534088447553, ; hash 0x48b22af451a0641, from name: libaot-System.Console.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.30_name, ; name: libaot-System.Console.dll.so
		ptr null; void* handle (0x0)
	}, ; 29
	%struct.DSOCacheEntry {
		i64 338732866619584657, ; hash 0x4b36bbf5c9c3091, from name: libaot-System.Net.WebClient
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.86_name, ; name: libaot-System.Net.WebClient.dll.so
		ptr null; void* handle (0x0)
	}, ; 30
	%struct.DSOCacheEntry {
		i64 345052887075248223, ; hash 0x4c9dfc5cad7d85f, from name: aot-Microsoft.VisualBasic.Core
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.12_name, ; name: libaot-Microsoft.VisualBasic.Core.dll.so
		ptr null; void* handle (0x0)
	}, ; 31
	%struct.DSOCacheEntry {
		i64 350308643053814566, ; hash 0x4dc8bdad6f8c326, from name: aot-Xamarin.AndroidX.DynamicAnimation.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.228_name, ; name: libaot-Xamarin.AndroidX.DynamicAnimation.dll.so
		ptr null; void* handle (0x0)
	}, ; 32
	%struct.DSOCacheEntry {
		i64 354365759131126047, ; hash 0x4eaf5c7c992891f, from name: Xamarin.AndroidX.ConstraintLayout.Core.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.219_name, ; name: libaot-Xamarin.AndroidX.ConstraintLayout.Core.dll.so
		ptr null; void* handle (0x0)
	}, ; 33
	%struct.DSOCacheEntry {
		i64 365796920028716804, ; hash 0x513925c563e5f04, from name: aot-System.Runtime.Serialization.Json.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.122_name, ; name: libaot-System.Runtime.Serialization.Json.dll.so
		ptr null; void* handle (0x0)
	}, ; 34
	%struct.DSOCacheEntry {
		i64 370449587969267027, ; hash 0x52419f002191553, from name: aot-System.Linq.Parallel.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.69_name, ; name: libaot-System.Linq.Parallel.dll.so
		ptr null; void* handle (0x0)
	}, ; 35
	%struct.DSOCacheEntry {
		i64 390170653843578339, ; hash 0x56a2a247820dde3, from name: aot-System.Security.Cryptography.Algorithms
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.129_name, ; name: libaot-System.Security.Cryptography.Algorithms.dll.so
		ptr null; void* handle (0x0)
	}, ; 36
	%struct.DSOCacheEntry {
		i64 409388313388362627, ; hash 0x5ae708082b5ab83, from name: System.Web.HttpUtility.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.162_name, ; name: libaot-System.Web.HttpUtility.dll.so
		ptr null; void* handle (0x0)
	}, ; 37
	%struct.DSOCacheEntry {
		i64 411675884429428512, ; hash 0x5b691092602c720, from name: libaot-Microsoft.Maui
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.196_name, ; name: libaot-Microsoft.Maui.dll.so
		ptr null; void* handle (0x0)
	}, ; 38
	%struct.DSOCacheEntry {
		i64 422779754995088667, ; hash 0x5de03f27ab57d1b, from name: System.IO.UnmanagedMemoryStream
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.66_name, ; name: libaot-System.IO.UnmanagedMemoryStream.dll.so
		ptr null; void* handle (0x0)
	}, ; 39
	%struct.DSOCacheEntry {
		i64 424875103319556150, ; hash 0x5e575a7c7450036, from name: libaot-Xamarin.AndroidX.Annotation.Experimental
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.207_name, ; name: libaot-Xamarin.AndroidX.Annotation.Experimental.dll.so
		ptr null; void* handle (0x0)
	}, ; 40
	%struct.DSOCacheEntry {
		i64 436230335270239240, ; hash 0x60dcd2dbe083c08, from name: aot-Xamarin.Android.Glide.Annotations.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.201_name, ; name: libaot-Xamarin.Android.Glide.Annotations.dll.so
		ptr null; void* handle (0x0)
	}, ; 41
	%struct.DSOCacheEntry {
		i64 450226825260451621, ; hash 0x63f86e984004725, from name: libaot-Xamarin.Google.Crypto.Tink.Android
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.273_name, ; name: libaot-Xamarin.Google.Crypto.Tink.Android.dll.so
		ptr null; void* handle (0x0)
	}, ; 42
	%struct.DSOCacheEntry {
		i64 453537572241606500, ; hash 0x64b4a04ddc10764, from name: libaot-System.Security.Principal.Windows
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.137_name, ; name: libaot-System.Security.Principal.Windows.dll.so
		ptr null; void* handle (0x0)
	}, ; 43
	%struct.DSOCacheEntry {
		i64 455421633420727173, ; hash 0x651fb900b121385, from name: libaot-System.Threading.Tasks.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.154_name, ; name: libaot-System.Threading.Tasks.dll.so
		ptr null; void* handle (0x0)
	}, ; 44
	%struct.DSOCacheEntry {
		i64 472512565983034901, ; hash 0x68eb3acdf53be15, from name: libaot-System.ComponentModel.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.28_name, ; name: libaot-System.ComponentModel.dll.so
		ptr null; void* handle (0x0)
	}, ; 45
	%struct.DSOCacheEntry {
		i64 483259409837255036, ; hash 0x6b4e1df71b6e97c, from name: libaot-Xamarin.AndroidX.RecyclerView.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.254_name, ; name: libaot-Xamarin.AndroidX.RecyclerView.dll.so
		ptr null; void* handle (0x0)
	}, ; 46
	%struct.DSOCacheEntry {
		i64 524926330715800321, ; hash 0x748e9b773908301, from name: libaot-System.Reflection.Metadata.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.104_name, ; name: libaot-System.Reflection.Metadata.dll.so
		ptr null; void* handle (0x0)
	}, ; 47
	%struct.DSOCacheEntry {
		i64 526193917209771750, ; hash 0x74d6a946e427ee6, from name: System.Runtime.Serialization.Json.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.122_name, ; name: libaot-System.Runtime.Serialization.Json.dll.so
		ptr null; void* handle (0x0)
	}, ; 48
	%struct.DSOCacheEntry {
		i64 533583443131944934, ; hash 0x767ab5081e8cfe6, from name: aot-Xamarin.AndroidX.Transition.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.263_name, ; name: libaot-Xamarin.AndroidX.Transition.dll.so
		ptr null; void* handle (0x0)
	}, ; 49
	%struct.DSOCacheEntry {
		i64 534451948636637073, ; hash 0x76ac13734008791, from name: aot-System.Reflection.Extensions
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.103_name, ; name: libaot-System.Reflection.Extensions.dll.so
		ptr null; void* handle (0x0)
	}, ; 50
	%struct.DSOCacheEntry {
		i64 542231388356652987, ; hash 0x78664932910afbb, from name: System.Transactions.Local.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.159_name, ; name: libaot-System.Transactions.Local.dll.so
		ptr null; void* handle (0x0)
	}, ; 51
	%struct.DSOCacheEntry {
		i64 544465019603341966, ; hash 0x78e540cf615528e, from name: libaot-System.Text.Encoding.Extensions
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.144_name, ; name: libaot-System.Text.Encoding.Extensions.dll.so
		ptr null; void* handle (0x0)
	}, ; 52
	%struct.DSOCacheEntry {
		i64 544667435434772016, ; hash 0x78f0c2591d00630, from name: libaot-mscorlib.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.176_name, ; name: libaot-mscorlib.dll.so
		ptr null; void* handle (0x0)
	}, ; 53
	%struct.DSOCacheEntry {
		i64 550580843316296054, ; hash 0x7a40e5c2200b976, from name: aot-System.Configuration
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.29_name, ; name: libaot-System.Configuration.dll.so
		ptr null; void* handle (0x0)
	}, ; 54
	%struct.DSOCacheEntry {
		i64 551596898779558263, ; hash 0x7a7aa74faf67177, from name: System.Security.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.140_name, ; name: libaot-System.Security.dll.so
		ptr null; void* handle (0x0)
	}, ; 55
	%struct.DSOCacheEntry {
		i64 555763084461751725, ; hash 0x7b67794ac9e3dad, from name: System.Web.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.163_name, ; name: libaot-System.Web.dll.so
		ptr null; void* handle (0x0)
	}, ; 56
	%struct.DSOCacheEntry {
		i64 560278790331054453, ; hash 0x7c6829760de3975, from name: System.Reflection.Primitives
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.105_name, ; name: libaot-System.Reflection.Primitives.dll.so
		ptr null; void* handle (0x0)
	}, ; 57
	%struct.DSOCacheEntry {
		i64 584895086741024446, ; hash 0x81df6fb8411eebe, from name: aot-Microsoft.CSharp.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.11_name, ; name: libaot-Microsoft.CSharp.dll.so
		ptr null; void* handle (0x0)
	}, ; 58
	%struct.DSOCacheEntry {
		i64 587225303260200101, ; hash 0x8263e4d53f1fca5, from name: libaot-System.Threading.Tasks.Parallel
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.153_name, ; name: libaot-System.Threading.Tasks.Parallel.dll.so
		ptr null; void* handle (0x0)
	}, ; 59
	%struct.DSOCacheEntry {
		i64 603416640204715261, ; hash 0x85fc43cbaf634fd, from name: libaot-System.Net.NameResolution
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.77_name, ; name: libaot-System.Net.NameResolution.dll.so
		ptr null; void* handle (0x0)
	}, ; 60
	%struct.DSOCacheEntry {
		i64 626497116700919570, ; hash 0x8b1c3ceedc3c712, from name: aot-System.Text.RegularExpressions
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.148_name, ; name: libaot-System.Text.RegularExpressions.dll.so
		ptr null; void* handle (0x0)
	}, ; 61
	%struct.DSOCacheEntry {
		i64 628522906763308403, ; hash 0x8b8f640eed2ad73, from name: libaot-System.ObjectModel.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.94_name, ; name: libaot-System.ObjectModel.dll.so
		ptr null; void* handle (0x0)
	}, ; 62
	%struct.DSOCacheEntry {
		i64 634534809485270712, ; hash 0x8ce520c1cfd5eb8, from name: aot-Xamarin.AndroidX.Arch.Core.Runtime
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.212_name, ; name: libaot-Xamarin.AndroidX.Arch.Core.Runtime.dll.so
		ptr null; void* handle (0x0)
	}, ; 63
	%struct.DSOCacheEntry {
		i64 636333942931124576, ; hash 0x8d4b65982eef160, from name: libaot-System.Net.WebSockets.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.90_name, ; name: libaot-System.Net.WebSockets.dll.so
		ptr null; void* handle (0x0)
	}, ; 64
	%struct.DSOCacheEntry {
		i64 636707968497726859, ; hash 0x8d60a861ff7b58b, from name: libaot-Xamarin.AndroidX.Fragment.Ktx
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.233_name, ; name: libaot-Xamarin.AndroidX.Fragment.Ktx.dll.so
		ptr null; void* handle (0x0)
	}, ; 65
	%struct.DSOCacheEntry {
		i64 643375859359477927, ; hash 0x8edbaef722ef0a7, from name: aot-System.Data.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.34_name, ; name: libaot-System.Data.dll.so
		ptr null; void* handle (0x0)
	}, ; 66
	%struct.DSOCacheEntry {
		i64 649145001856603771, ; hash 0x90239f09b62167b, from name: System.Security.SecureString
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.139_name, ; name: libaot-System.Security.SecureString.dll.so
		ptr null; void* handle (0x0)
	}, ; 67
	%struct.DSOCacheEntry {
		i64 658334938653860260, ; hash 0x922e02381b121a4, from name: System.ComponentModel.EventBasedAsync.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.25_name, ; name: libaot-System.ComponentModel.EventBasedAsync.dll.so
		ptr null; void* handle (0x0)
	}, ; 68
	%struct.DSOCacheEntry {
		i64 680930311029487832, ; hash 0x973268299b578d8, from name: aot-System.IO.Compression.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.56_name, ; name: libaot-System.IO.Compression.dll.so
		ptr null; void* handle (0x0)
	}, ; 69
	%struct.DSOCacheEntry {
		i64 716574749169539573, ; hash 0x9f1c8f01343d9f5, from name: mono-component-debugger
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.3_name, ; name: libmono-component-debugger.so
		ptr null; void* handle (0x0)
	}, ; 70
	%struct.DSOCacheEntry {
		i64 728665063517349799, ; hash 0xa1cbd03bf3067a7, from name: System.Runtime.CompilerServices.VisualC.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.112_name, ; name: libaot-System.Runtime.CompilerServices.VisualC.dll.so
		ptr null; void* handle (0x0)
	}, ; 71
	%struct.DSOCacheEntry {
		i64 739739707383691399, ; hash 0xa44155834db3887, from name: aot-Xamarin.AndroidX.CursorAdapter.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.223_name, ; name: libaot-Xamarin.AndroidX.CursorAdapter.dll.so
		ptr null; void* handle (0x0)
	}, ; 72
	%struct.DSOCacheEntry {
		i64 741027209231504624, ; hash 0xa48a852172494f0, from name: aot-System.Private.DataContractSerialization.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.95_name, ; name: libaot-System.Private.DataContractSerialization.dll.so
		ptr null; void* handle (0x0)
	}, ; 73
	%struct.DSOCacheEntry {
		i64 743359736279824557, ; hash 0xa50f1bddd4978ad, from name: libaot-Xamarin.AndroidX.Core
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.221_name, ; name: libaot-Xamarin.AndroidX.Core.dll.so
		ptr null; void* handle (0x0)
	}, ; 74
	%struct.DSOCacheEntry {
		i64 750875890346172408, ; hash 0xa6ba5a4da7d1ff8, from name: System.Threading.Thread
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.155_name, ; name: libaot-System.Threading.Thread.dll.so
		ptr null; void* handle (0x0)
	}, ; 75
	%struct.DSOCacheEntry {
		i64 756290313852954525, ; hash 0xa7ee2089046279d, from name: System.Security.Cryptography.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.136_name, ; name: libaot-System.Security.Cryptography.dll.so
		ptr null; void* handle (0x0)
	}, ; 76
	%struct.DSOCacheEntry {
		i64 771524290733889039, ; hash 0xab5014134c7560f, from name: libaot-System.Core.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.31_name, ; name: libaot-System.Core.dll.so
		ptr null; void* handle (0x0)
	}, ; 77
	%struct.DSOCacheEntry {
		i64 782606669991132725, ; hash 0xadc609eb3ac3e35, from name: aot-System.Diagnostics.FileVersionInfo
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.38_name, ; name: libaot-System.Diagnostics.FileVersionInfo.dll.so
		ptr null; void* handle (0x0)
	}, ; 78
	%struct.DSOCacheEntry {
		i64 792582575053988794, ; hash 0xaffd1a71941e3ba, from name: libaot-System.Diagnostics.Contracts
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.35_name, ; name: libaot-System.Diagnostics.Contracts.dll.so
		ptr null; void* handle (0x0)
	}, ; 79
	%struct.DSOCacheEntry {
		i64 799181003517975415, ; hash 0xb1742e371eddb77, from name: libaot-System.ComponentModel.Annotations.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.23_name, ; name: libaot-System.ComponentModel.Annotations.dll.so
		ptr null; void* handle (0x0)
	}, ; 80
	%struct.DSOCacheEntry {
		i64 858870550354436696, ; hash 0xbeb52370deba258, from name: Xamarin.AndroidX.Print.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.252_name, ; name: libaot-Xamarin.AndroidX.Print.dll.so
		ptr null; void* handle (0x0)
	}, ; 81
	%struct.DSOCacheEntry {
		i64 872800313462103108, ; hash 0xc1ccf42c3c21c44, from name: Xamarin.AndroidX.DrawerLayout
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.227_name, ; name: libaot-Xamarin.AndroidX.DrawerLayout.dll.so
		ptr null; void* handle (0x0)
	}, ; 82
	%struct.DSOCacheEntry {
		i64 916945015038476777, ; hash 0xcb9a4a20bef01e9, from name: aot-Xamarin.Android.Glide.GifDecoder
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.203_name, ; name: libaot-Xamarin.Android.Glide.GifDecoder.dll.so
		ptr null; void* handle (0x0)
	}, ; 83
	%struct.DSOCacheEntry {
		i64 917175643050152429, ; hash 0xcba766350a511ed, from name: aot-System.Runtime.Extensions
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.113_name, ; name: libaot-System.Runtime.Extensions.dll.so
		ptr null; void* handle (0x0)
	}, ; 84
	%struct.DSOCacheEntry {
		i64 926729488379472330, ; hash 0xcdc678f45bce9ca, from name: aot-Java.Interop.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.178_name, ; name: libaot-Java.Interop.dll.so
		ptr null; void* handle (0x0)
	}, ; 85
	%struct.DSOCacheEntry {
		i64 926762996762141689, ; hash 0xcdc86090cfbe3f9, from name: libaot-Xamarin.AndroidX.Lifecycle.Common
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.236_name, ; name: libaot-Xamarin.AndroidX.Lifecycle.Common.dll.so
		ptr null; void* handle (0x0)
	}, ; 86
	%struct.DSOCacheEntry {
		i64 938396845403056490, ; hash 0xd05daf58498a96a, from name: aot-Xamarin.AndroidX.Annotation.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.206_name, ; name: libaot-Xamarin.AndroidX.Annotation.dll.so
		ptr null; void* handle (0x0)
	}, ; 87
	%struct.DSOCacheEntry {
		i64 938607774865935643, ; hash 0xd069acc5c4dcd1b, from name: libaot-System.Linq.Parallel
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.69_name, ; name: libaot-System.Linq.Parallel.dll.so
		ptr null; void* handle (0x0)
	}, ; 88
	%struct.DSOCacheEntry {
		i64 939629566326747810, ; hash 0xd0a3c1cb95c32a2, from name: libaot-System.Reflection.Emit.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.102_name, ; name: libaot-System.Reflection.Emit.dll.so
		ptr null; void* handle (0x0)
	}, ; 89
	%struct.DSOCacheEntry {
		i64 940822596282819491, ; hash 0xd0e792aa81923a3, from name: System.Transactions
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.160_name, ; name: libaot-System.Transactions.dll.so
		ptr null; void* handle (0x0)
	}, ; 90
	%struct.DSOCacheEntry {
		i64 945516220115849374, ; hash 0xd1f25fe1d60109e, from name: aot-System.IO.UnmanagedMemoryStream
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.66_name, ; name: libaot-System.IO.UnmanagedMemoryStream.dll.so
		ptr null; void* handle (0x0)
	}, ; 91
	%struct.DSOCacheEntry {
		i64 970662533192355986, ; hash 0xd787c6e5fb61092, from name: System.Net.Ping.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.79_name, ; name: libaot-System.Net.Ping.dll.so
		ptr null; void* handle (0x0)
	}, ; 92
	%struct.DSOCacheEntry {
		i64 971961513790681686, ; hash 0xd7d19d8dcd83256, from name: libaot-System.Runtime.Handles.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.114_name, ; name: libaot-System.Runtime.Handles.dll.so
		ptr null; void* handle (0x0)
	}, ; 93
	%struct.DSOCacheEntry {
		i64 972643759226808436, ; hash 0xd7f865881b6e874, from name: aot-Xamarin.AndroidX.SlidingPaneLayout
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.259_name, ; name: libaot-Xamarin.AndroidX.SlidingPaneLayout.dll.so
		ptr null; void* handle (0x0)
	}, ; 94
	%struct.DSOCacheEntry {
		i64 985251676246244165, ; hash 0xdac512df103fb45, from name: libaot-Xamarin.Kotlin.StdLib.Jdk7.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.279_name, ; name: libaot-Xamarin.Kotlin.StdLib.Jdk7.dll.so
		ptr null; void* handle (0x0)
	}, ; 95
	%struct.DSOCacheEntry {
		i64 1006735618293444227, ; hash 0xdf8a4b5ff1d2e83, from name: aot-System.Threading.Overlapped.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.150_name, ; name: libaot-System.Threading.Overlapped.dll.so
		ptr null; void* handle (0x0)
	}, ; 96
	%struct.DSOCacheEntry {
		i64 1021076955717943999, ; hash 0xe2b9814d1e7c2bf, from name: aot-Xamarin.Kotlin.StdLib.Jdk8
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.280_name, ; name: libaot-Xamarin.Kotlin.StdLib.Jdk8.dll.so
		ptr null; void* handle (0x0)
	}, ; 97
	%struct.DSOCacheEntry {
		i64 1055594944834953507, ; hash 0xea63a027195e123, from name: aot-Microsoft.Win32.Primitives
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.14_name, ; name: libaot-Microsoft.Win32.Primitives.dll.so
		ptr null; void* handle (0x0)
	}, ; 98
	%struct.DSOCacheEntry {
		i64 1073059568914444961, ; hash 0xee445fe1bfab2a1, from name: libaot-System.Reflection.TypeExtensions
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.106_name, ; name: libaot-System.Reflection.TypeExtensions.dll.so
		ptr null; void* handle (0x0)
	}, ; 99
	%struct.DSOCacheEntry {
		i64 1078106539207780469, ; hash 0xef6342f73816875, from name: aot-Xamarin.Kotlin.StdLib.Jdk7
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.279_name, ; name: libaot-Xamarin.Kotlin.StdLib.Jdk7.dll.so
		ptr null; void* handle (0x0)
	}, ; 100
	%struct.DSOCacheEntry {
		i64 1096321628016204463, ; hash 0xf36eab64d7bdaaf, from name: aot-System.Linq.Expressions
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.68_name, ; name: libaot-System.Linq.Expressions.dll.so
		ptr null; void* handle (0x0)
	}, ; 101
	%struct.DSOCacheEntry {
		i64 1097501675994448902, ; hash 0xf3b1bf5a20b8406, from name: libaot-System.Collections
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.22_name, ; name: libaot-System.Collections.dll.so
		ptr null; void* handle (0x0)
	}, ; 102
	%struct.DSOCacheEntry {
		i64 1135679001553794407, ; hash 0xfc2be08ea7bf567, from name: aot-Microsoft.Maui.Controls.Compatibility
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.193_name, ; name: libaot-Microsoft.Maui.Controls.Compatibility.dll.so
		ptr null; void* handle (0x0)
	}, ; 103
	%struct.DSOCacheEntry {
		i64 1136601720422326463, ; hash 0xfc6053e24dee0bf, from name: libaot-Xamarin.Kotlin.StdLib.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.277_name, ; name: libaot-Xamarin.Kotlin.StdLib.dll.so
		ptr null; void* handle (0x0)
	}, ; 104
	%struct.DSOCacheEntry {
		i64 1146928578970395727, ; hash 0xfeab5774446244f, from name: aot-System.ComponentModel.Primitives
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.26_name, ; name: libaot-System.ComponentModel.Primitives.dll.so
		ptr null; void* handle (0x0)
	}, ; 105
	%struct.DSOCacheEntry {
		i64 1151394494093259064, ; hash 0xffa933128c4f138, from name: aot-Xamarin.AndroidX.Collection
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.215_name, ; name: libaot-Xamarin.AndroidX.Collection.dll.so
		ptr null; void* handle (0x0)
	}, ; 106
	%struct.DSOCacheEntry {
		i64 1159483400534289526, ; hash 0x1017500273ceec76, from name: libaot-System.ComponentModel.EventBasedAsync.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.25_name, ; name: libaot-System.ComponentModel.EventBasedAsync.dll.so
		ptr null; void* handle (0x0)
	}, ; 107
	%struct.DSOCacheEntry {
		i64 1181472735908652530, ; hash 0x10656f318fa4e5f2, from name: System.Runtime.Numerics.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.120_name, ; name: libaot-System.Runtime.Numerics.dll.so
		ptr null; void* handle (0x0)
	}, ; 108
	%struct.DSOCacheEntry {
		i64 1196280833168408863, ; hash 0x109a0b14609c811f, from name: libaot-System.Diagnostics.TraceSource
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.43_name, ; name: libaot-System.Diagnostics.TraceSource.dll.so
		ptr null; void* handle (0x0)
	}, ; 109
	%struct.DSOCacheEntry {
		i64 1200280967012175695, ; hash 0x10a8412e1d6c4f4f, from name: libaot-netstandard.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.177_name, ; name: libaot-netstandard.dll.so
		ptr null; void* handle (0x0)
	}, ; 110
	%struct.DSOCacheEntry {
		i64 1207045513591538152, ; hash 0x10c0497fd95a41e8, from name: aot-Xamarin.AndroidX.DynamicAnimation
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.228_name, ; name: libaot-Xamarin.AndroidX.DynamicAnimation.dll.so
		ptr null; void* handle (0x0)
	}, ; 111
	%struct.DSOCacheEntry {
		i64 1207922923948824027, ; hash 0x10c3677fde0555db, from name: aot-System.Reflection.DispatchProxy
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.99_name, ; name: libaot-System.Reflection.DispatchProxy.dll.so
		ptr null; void* handle (0x0)
	}, ; 112
	%struct.DSOCacheEntry {
		i64 1218657088007376027, ; hash 0x10e98a2a31b10c9b, from name: aot-System.IO.MemoryMappedFiles
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.63_name, ; name: libaot-System.IO.MemoryMappedFiles.dll.so
		ptr null; void* handle (0x0)
	}, ; 113
	%struct.DSOCacheEntry {
		i64 1234884336330527393, ; hash 0x112330c2ddacd2a1, from name: aot-System.Security.Claims.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.128_name, ; name: libaot-System.Security.Claims.dll.so
		ptr null; void* handle (0x0)
	}, ; 114
	%struct.DSOCacheEntry {
		i64 1249162902185008584, ; hash 0x1155eb0a8b555dc8, from name: aot-System.Diagnostics.Debug
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.36_name, ; name: libaot-System.Diagnostics.Debug.dll.so
		ptr null; void* handle (0x0)
	}, ; 115
	%struct.DSOCacheEntry {
		i64 1258620449927643492, ; hash 0x117784a178fac164, from name: libaot-System.IO.Compression.ZipFile
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.55_name, ; name: libaot-System.IO.Compression.ZipFile.dll.so
		ptr null; void* handle (0x0)
	}, ; 116
	%struct.DSOCacheEntry {
		i64 1288830572241085177, ; hash 0x11e2d893b217e2f9, from name: aot-_Microsoft.Android.Resource.Designer.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.10_name, ; name: libaot-_Microsoft.Android.Resource.Designer.dll.so
		ptr null; void* handle (0x0)
	}, ; 117
	%struct.DSOCacheEntry {
		i64 1301626418029409250, ; hash 0x12104e54b4e833e2, from name: System.Diagnostics.FileVersionInfo
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.38_name, ; name: libaot-System.Diagnostics.FileVersionInfo.dll.so
		ptr null; void* handle (0x0)
	}, ; 118
	%struct.DSOCacheEntry {
		i64 1310390983169450822, ; hash 0x122f71a80cb0a346, from name: libaot-Xamarin.AndroidX.ViewPager.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.267_name, ; name: libaot-Xamarin.AndroidX.ViewPager.dll.so
		ptr null; void* handle (0x0)
	}, ; 119
	%struct.DSOCacheEntry {
		i64 1326121912810335912, ; hash 0x126754da85ebeea8, from name: libaot-Xamarin.Google.ErrorProne.Annotations
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.274_name, ; name: libaot-Xamarin.Google.ErrorProne.Annotations.dll.so
		ptr null; void* handle (0x0)
	}, ; 120
	%struct.DSOCacheEntry {
		i64 1336414576634453616, ; hash 0x128be5fa10f35e70, from name: aot-System.Runtime.CompilerServices.Unsafe
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.111_name, ; name: libaot-System.Runtime.CompilerServices.Unsafe.dll.so
		ptr null; void* handle (0x0)
	}, ; 121
	%struct.DSOCacheEntry {
		i64 1342948529819606138, ; hash 0x12a31c929787dc7a, from name: aot-CommunityToolkit.Mvvm.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.182_name, ; name: libaot-CommunityToolkit.Mvvm.dll.so
		ptr null; void* handle (0x0)
	}, ; 122
	%struct.DSOCacheEntry {
		i64 1347602760944503386, ; hash 0x12b3a592386eca5a, from name: libaot-Xamarin.AndroidX.AppCompat
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.209_name, ; name: libaot-Xamarin.AndroidX.AppCompat.dll.so
		ptr null; void* handle (0x0)
	}, ; 123
	%struct.DSOCacheEntry {
		i64 1373489503493278710, ; hash 0x130f9d6d2671cbf6, from name: libaot-Xamarin.Android.Glide.GifDecoder.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.203_name, ; name: libaot-Xamarin.Android.Glide.GifDecoder.dll.so
		ptr null; void* handle (0x0)
	}, ; 124
	%struct.DSOCacheEntry {
		i64 1379514111066213802, ; hash 0x132504c668bd8daa, from name: aot-System.Reflection.Emit.ILGeneration.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.100_name, ; name: libaot-System.Reflection.Emit.ILGeneration.dll.so
		ptr null; void* handle (0x0)
	}, ; 125
	%struct.DSOCacheEntry {
		i64 1403502749390460514, ; hash 0x137a3e5082b3d662, from name: aot-Xamarin.AndroidX.ResourceInspection.Annotation.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.255_name, ; name: libaot-Xamarin.AndroidX.ResourceInspection.Annotation.dll.so
		ptr null; void* handle (0x0)
	}, ; 126
	%struct.DSOCacheEntry {
		i64 1408308371658705060, ; hash 0x138b5100a2ed08a4, from name: libaot-_Microsoft.Android.Resource.Designer.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.10_name, ; name: libaot-_Microsoft.Android.Resource.Designer.dll.so
		ptr null; void* handle (0x0)
	}, ; 127
	%struct.DSOCacheEntry {
		i64 1410332061527240137, ; hash 0x13928189a6acedc9, from name: libaot-System.Security
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.140_name, ; name: libaot-System.Security.dll.so
		ptr null; void* handle (0x0)
	}, ; 128
	%struct.DSOCacheEntry {
		i64 1427352767488458329, ; hash 0x13cef9c79351fe59, from name: libaot-GoogleGson
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.183_name, ; name: libaot-GoogleGson.dll.so
		ptr null; void* handle (0x0)
	}, ; 129
	%struct.DSOCacheEntry {
		i64 1445470738645903154, ; hash 0x140f57fa7635e732, from name: libaot-CommunityToolkit.Mvvm.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.182_name, ; name: libaot-CommunityToolkit.Mvvm.dll.so
		ptr null; void* handle (0x0)
	}, ; 130
	%struct.DSOCacheEntry {
		i64 1491677435315304531, ; hash 0x14b380b9636f3853, from name: libaot-System.Runtime.Serialization.Json.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.122_name, ; name: libaot-System.Runtime.Serialization.Json.dll.so
		ptr null; void* handle (0x0)
	}, ; 131
	%struct.DSOCacheEntry {
		i64 1492119819386566316, ; hash 0x14b51311f4db36ac, from name: libaot-System.Threading.Tasks.Dataflow
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.151_name, ; name: libaot-System.Threading.Tasks.Dataflow.dll.so
		ptr null; void* handle (0x0)
	}, ; 132
	%struct.DSOCacheEntry {
		i64 1492954217099365037, ; hash 0x14b809f350210aad, from name: System.Net.HttpListener
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.75_name, ; name: libaot-System.Net.HttpListener.dll.so
		ptr null; void* handle (0x0)
	}, ; 133
	%struct.DSOCacheEntry {
		i64 1499327756876432029, ; hash 0x14ceaea6ae80c29d, from name: libSystem.Security.Cryptography.Native.Android
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.2_name, ; name: libSystem.Security.Cryptography.Native.Android.so
		ptr null; void* handle (0x0)
	}, ; 134
	%struct.DSOCacheEntry {
		i64 1509478094721566975, ; hash 0x14f2be54601cc8ff, from name: System.Threading.Tasks.Dataflow.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.151_name, ; name: libaot-System.Threading.Tasks.Dataflow.dll.so
		ptr null; void* handle (0x0)
	}, ; 135
	%struct.DSOCacheEntry {
		i64 1513467482682125403, ; hash 0x1500eaa8245f6c5b, from name: Mono.Android.Runtime
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.180_name, ; name: libaot-Mono.Android.Runtime.dll.so
		ptr null; void* handle (0x0)
	}, ; 136
	%struct.DSOCacheEntry {
		i64 1530161931193496526, ; hash 0x153c3a2b559d33ce, from name: aot-Xamarin.AndroidX.VectorDrawable
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.264_name, ; name: libaot-Xamarin.AndroidX.VectorDrawable.dll.so
		ptr null; void* handle (0x0)
	}, ; 137
	%struct.DSOCacheEntry {
		i64 1536393630511050858, ; hash 0x15525ddde5c8b06a, from name: aot-System.Reflection.Extensions.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.103_name, ; name: libaot-System.Reflection.Extensions.dll.so
		ptr null; void* handle (0x0)
	}, ; 138
	%struct.DSOCacheEntry {
		i64 1560574748131067758, ; hash 0x15a8467713cc076e, from name: System.Collections.NonGeneric.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.20_name, ; name: libaot-System.Collections.NonGeneric.dll.so
		ptr null; void* handle (0x0)
	}, ; 139
	%struct.DSOCacheEntry {
		i64 1572191742284783056, ; hash 0x15d18c0f4dafddd0, from name: aot-System.Transactions
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.160_name, ; name: libaot-System.Transactions.dll.so
		ptr null; void* handle (0x0)
	}, ; 140
	%struct.DSOCacheEntry {
		i64 1576750169145655260, ; hash 0x15e1bdecc376bfdc, from name: Xamarin.AndroidX.Window.Extensions.Core.Core
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.270_name, ; name: libaot-Xamarin.AndroidX.Window.Extensions.Core.Core.dll.so
		ptr null; void* handle (0x0)
	}, ; 141
	%struct.DSOCacheEntry {
		i64 1590769080314986753, ; hash 0x16138c0cdfd98101, from name: aot-System.ComponentModel.DataAnnotations.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.24_name, ; name: libaot-System.ComponentModel.DataAnnotations.dll.so
		ptr null; void* handle (0x0)
	}, ; 142
	%struct.DSOCacheEntry {
		i64 1651782184287836205, ; hash 0x16ec4f2524cb982d, from name: System.Globalization.Calendars
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.50_name, ; name: libaot-System.Globalization.Calendars.dll.so
		ptr null; void* handle (0x0)
	}, ; 143
	%struct.DSOCacheEntry {
		i64 1652167503506081722, ; hash 0x16edad9743ec87ba, from name: aot-Xamarin.AndroidX.Lifecycle.LiveData
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.237_name, ; name: libaot-Xamarin.AndroidX.Lifecycle.LiveData.dll.so
		ptr null; void* handle (0x0)
	}, ; 144
	%struct.DSOCacheEntry {
		i64 1659332977923810219, ; hash 0x1707228d493d63ab, from name: System.Reflection.DispatchProxy
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.99_name, ; name: libaot-System.Reflection.DispatchProxy.dll.so
		ptr null; void* handle (0x0)
	}, ; 145
	%struct.DSOCacheEntry {
		i64 1690700643259123969, ; hash 0x17769346fefc0901, from name: libaot-Xamarin.AndroidX.ViewPager2
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.268_name, ; name: libaot-Xamarin.AndroidX.ViewPager2.dll.so
		ptr null; void* handle (0x0)
	}, ; 146
	%struct.DSOCacheEntry {
		i64 1699364539441200861, ; hash 0x17955b0b8549bedd, from name: libaot-System.Xml.XPath.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.170_name, ; name: libaot-System.Xml.XPath.dll.so
		ptr null; void* handle (0x0)
	}, ; 147
	%struct.DSOCacheEntry {
		i64 1709477469831854591, ; hash 0x17b948b39cdc79ff, from name: aot-Microsoft.Extensions.Configuration.Abstractions
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.185_name, ; name: libaot-Microsoft.Extensions.Configuration.Abstractions.dll.so
		ptr null; void* handle (0x0)
	}, ; 148
	%struct.DSOCacheEntry {
		i64 1730900776029750156, ; hash 0x18056515c8b3838c, from name: aot-System.Runtime.Numerics.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.120_name, ; name: libaot-System.Runtime.Numerics.dll.so
		ptr null; void* handle (0x0)
	}, ; 149
	%struct.DSOCacheEntry {
		i64 1731380447121279447, ; hash 0x18071957e9b889d7, from name: Newtonsoft.Json
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.199_name, ; name: libaot-Newtonsoft.Json.dll.so
		ptr null; void* handle (0x0)
	}, ; 150
	%struct.DSOCacheEntry {
		i64 1836611346387731153, ; hash 0x197cf449ebe482d1, from name: Xamarin.AndroidX.SavedState
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.256_name, ; name: libaot-Xamarin.AndroidX.SavedState.dll.so
		ptr null; void* handle (0x0)
	}, ; 151
	%struct.DSOCacheEntry {
		i64 1854145951182283680, ; hash 0x19bb3feb3df2e3a0, from name: System.Runtime.CompilerServices.VisualC
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.112_name, ; name: libaot-System.Runtime.CompilerServices.VisualC.dll.so
		ptr null; void* handle (0x0)
	}, ; 152
	%struct.DSOCacheEntry {
		i64 1863551730785265867, ; hash 0x19dcaa6cf60528cb, from name: libaot-System.ServiceModel.Web
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.141_name, ; name: libaot-System.ServiceModel.Web.dll.so
		ptr null; void* handle (0x0)
	}, ; 153
	%struct.DSOCacheEntry {
		i64 1875417405349196092, ; hash 0x1a06d2319b6c713c, from name: System.Drawing.Primitives
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.45_name, ; name: libaot-System.Drawing.Primitives.dll.so
		ptr null; void* handle (0x0)
	}, ; 154
	%struct.DSOCacheEntry {
		i64 1888175769036431548, ; hash 0x1a3425dba2eaa0bc, from name: System.Reflection.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.107_name, ; name: libaot-System.Reflection.dll.so
		ptr null; void* handle (0x0)
	}, ; 155
	%struct.DSOCacheEntry {
		i64 1893652335120276468, ; hash 0x1a479ac40aeedbf4, from name: libaot-Xamarin.AndroidX.Lifecycle.LiveData.Core.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.238_name, ; name: libaot-Xamarin.AndroidX.Lifecycle.LiveData.Core.dll.so
		ptr null; void* handle (0x0)
	}, ; 156
	%struct.DSOCacheEntry {
		i64 1894716699642122920, ; hash 0x1a4b62ccb82b52a8, from name: libaot-Xamarin.Jetbrains.Annotations
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.276_name, ; name: libaot-Xamarin.Jetbrains.Annotations.dll.so
		ptr null; void* handle (0x0)
	}, ; 157
	%struct.DSOCacheEntry {
		i64 1897575647115118287, ; hash 0x1a558aff4cba86cf, from name: Xamarin.AndroidX.Security.SecurityCrypto
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.258_name, ; name: libaot-Xamarin.AndroidX.Security.SecurityCrypto.dll.so
		ptr null; void* handle (0x0)
	}, ; 158
	%struct.DSOCacheEntry {
		i64 1913673474355003746, ; hash 0x1a8ebbe2c7048162, from name: libaot-System.Net.WebProxy
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.88_name, ; name: libaot-System.Net.WebProxy.dll.so
		ptr null; void* handle (0x0)
	}, ; 159
	%struct.DSOCacheEntry {
		i64 1920760634179481754, ; hash 0x1aa7e99ec2d2709a, from name: Microsoft.Maui.Controls.Xaml
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.195_name, ; name: libaot-Microsoft.Maui.Controls.Xaml.dll.so
		ptr null; void* handle (0x0)
	}, ; 160
	%struct.DSOCacheEntry {
		i64 1923829157326072250, ; hash 0x1ab2d06cfaf5a9ba, from name: System.ValueTuple.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.161_name, ; name: libaot-System.ValueTuple.dll.so
		ptr null; void* handle (0x0)
	}, ; 161
	%struct.DSOCacheEntry {
		i64 1944135226823170461, ; hash 0x1afaf4b0361e599d, from name: aot-Microsoft.Extensions.Primitives.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.192_name, ; name: libaot-Microsoft.Extensions.Primitives.dll.so
		ptr null; void* handle (0x0)
	}, ; 162
	%struct.DSOCacheEntry {
		i64 1953421603491699382, ; hash 0x1b1bf29944b25ab6, from name: libaot-System.Net.Quic.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.81_name, ; name: libaot-System.Net.Quic.dll.so
		ptr null; void* handle (0x0)
	}, ; 163
	%struct.DSOCacheEntry {
		i64 1972385128188460614, ; hash 0x1b5f51d2edefbe46, from name: System.Security.Cryptography.Algorithms
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.129_name, ; name: libaot-System.Security.Cryptography.Algorithms.dll.so
		ptr null; void* handle (0x0)
	}, ; 164
	%struct.DSOCacheEntry {
		i64 1998496697131023285, ; hash 0x1bbc162855493bb5, from name: aot-System.Runtime.CompilerServices.Unsafe.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.111_name, ; name: libaot-System.Runtime.CompilerServices.Unsafe.dll.so
		ptr null; void* handle (0x0)
	}, ; 165
	%struct.DSOCacheEntry {
		i64 2010011812825262371, ; hash 0x1be4ff1821c9e923, from name: System.ComponentModel.TypeConverter.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.27_name, ; name: libaot-System.ComponentModel.TypeConverter.dll.so
		ptr null; void* handle (0x0)
	}, ; 166
	%struct.DSOCacheEntry {
		i64 2019051625445060944, ; hash 0x1c051cc185d3f150, from name: libaot-System.Data.Common.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.32_name, ; name: libaot-System.Data.Common.dll.so
		ptr null; void* handle (0x0)
	}, ; 167
	%struct.DSOCacheEntry {
		i64 2024202821639637893, ; hash 0x1c1769bdd92c8b85, from name: aot-System.IO.Compression
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.56_name, ; name: libaot-System.IO.Compression.dll.so
		ptr null; void* handle (0x0)
	}, ; 168
	%struct.DSOCacheEntry {
		i64 2024898348773596241, ; hash 0x1c19e251e0ecdc51, from name: libaot-System.IO.Pipes.AccessControl.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.64_name, ; name: libaot-System.IO.Pipes.AccessControl.dll.so
		ptr null; void* handle (0x0)
	}, ; 169
	%struct.DSOCacheEntry {
		i64 2034246700143554471, ; hash 0x1c3b18988b912fa7, from name: libaot-Xamarin.AndroidX.Navigation.Runtime
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.250_name, ; name: libaot-Xamarin.AndroidX.Navigation.Runtime.dll.so
		ptr null; void* handle (0x0)
	}, ; 170
	%struct.DSOCacheEntry {
		i64 2042015314193080497, ; hash 0x1c56b21bf462e0b1, from name: aot-System.Reflection.Emit
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.102_name, ; name: libaot-System.Reflection.Emit.dll.so
		ptr null; void* handle (0x0)
	}, ; 171
	%struct.DSOCacheEntry {
		i64 2049680831748653902, ; hash 0x1c71eddb574e434e, from name: libaot-Xamarin.AndroidX.Emoji2.ViewsHelper.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.230_name, ; name: libaot-Xamarin.AndroidX.Emoji2.ViewsHelper.dll.so
		ptr null; void* handle (0x0)
	}, ; 172
	%struct.DSOCacheEntry {
		i64 2054529855940994150, ; hash 0x1c832804c3cc2466, from name: aot-Xamarin.AndroidX.AppCompat
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.209_name, ; name: libaot-Xamarin.AndroidX.AppCompat.dll.so
		ptr null; void* handle (0x0)
	}, ; 173
	%struct.DSOCacheEntry {
		i64 2056946083084152442, ; hash 0x1c8bbd907c5cae7a, from name: aot-Xamarin.Google.Guava.ListenableFuture.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.275_name, ; name: libaot-Xamarin.Google.Guava.ListenableFuture.dll.so
		ptr null; void* handle (0x0)
	}, ; 174
	%struct.DSOCacheEntry {
		i64 2062890601515140263, ; hash 0x1ca0dc1289cd44a7, from name: System.Threading.Tasks.Dataflow
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.151_name, ; name: libaot-System.Threading.Tasks.Dataflow.dll.so
		ptr null; void* handle (0x0)
	}, ; 175
	%struct.DSOCacheEntry {
		i64 2063968891640723124, ; hash 0x1ca4b0c585b3b6b4, from name: System.Xml.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.173_name, ; name: libaot-System.Xml.dll.so
		ptr null; void* handle (0x0)
	}, ; 176
	%struct.DSOCacheEntry {
		i64 2080673196037342763, ; hash 0x1ce0093f777b862b, from name: aot-System.Diagnostics.Contracts.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.35_name, ; name: libaot-System.Diagnostics.Contracts.dll.so
		ptr null; void* handle (0x0)
	}, ; 177
	%struct.DSOCacheEntry {
		i64 2080945842184875448, ; hash 0x1ce10137d8416db8, from name: System.IO.MemoryMappedFiles
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.63_name, ; name: libaot-System.IO.MemoryMappedFiles.dll.so
		ptr null; void* handle (0x0)
	}, ; 178
	%struct.DSOCacheEntry {
		i64 2081794811402477991, ; hash 0x1ce40559e4e561a7, from name: Microsoft.Extensions.Options.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.191_name, ; name: libaot-Microsoft.Extensions.Options.dll.so
		ptr null; void* handle (0x0)
	}, ; 179
	%struct.DSOCacheEntry {
		i64 2094804360116222711, ; hash 0x1d123d777eaabaf7, from name: libaot-Xamarin.AndroidX.SavedState.SavedState.Ktx.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.257_name, ; name: libaot-Xamarin.AndroidX.SavedState.SavedState.Ktx.dll.so
		ptr null; void* handle (0x0)
	}, ; 180
	%struct.DSOCacheEntry {
		i64 2137507378611301939, ; hash 0x1da9f3a2c6e72e33, from name: aot-System.IO.Pipes.AccessControl.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.64_name, ; name: libaot-System.IO.Pipes.AccessControl.dll.so
		ptr null; void* handle (0x0)
	}, ; 181
	%struct.DSOCacheEntry {
		i64 2144684468955424113, ; hash 0x1dc373295762a571, from name: aot-System.Reflection
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.107_name, ; name: libaot-System.Reflection.dll.so
		ptr null; void* handle (0x0)
	}, ; 182
	%struct.DSOCacheEntry {
		i64 2154631985584437668, ; hash 0x1de6ca600a7479a4, from name: libaot-System.Resources.ResourceManager
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.109_name, ; name: libaot-System.Resources.ResourceManager.dll.so
		ptr null; void* handle (0x0)
	}, ; 183
	%struct.DSOCacheEntry {
		i64 2165310824878145998, ; hash 0x1e0cbab9112b81ce, from name: Xamarin.Android.Glide.GifDecoder
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.203_name, ; name: libaot-Xamarin.Android.Glide.GifDecoder.dll.so
		ptr null; void* handle (0x0)
	}, ; 184
	%struct.DSOCacheEntry {
		i64 2165725771938924357, ; hash 0x1e0e341d75540745, from name: Xamarin.AndroidX.Browser
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.213_name, ; name: libaot-Xamarin.AndroidX.Browser.dll.so
		ptr null; void* handle (0x0)
	}, ; 185
	%struct.DSOCacheEntry {
		i64 2169143264332568652, ; hash 0x1e1a584e6979584c, from name: aot-System.Collections.Concurrent.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.18_name, ; name: libaot-System.Collections.Concurrent.dll.so
		ptr null; void* handle (0x0)
	}, ; 186
	%struct.DSOCacheEntry {
		i64 2172301649342954866, ; hash 0x1e2590d73a14fd72, from name: libaot-System.Windows.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.164_name, ; name: libaot-System.Windows.dll.so
		ptr null; void* handle (0x0)
	}, ; 187
	%struct.DSOCacheEntry {
		i64 2178726392135891111, ; hash 0x1e3c641c3a0738a7, from name: System.Diagnostics.DiagnosticSource.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.37_name, ; name: libaot-System.Diagnostics.DiagnosticSource.dll.so
		ptr null; void* handle (0x0)
	}, ; 188
	%struct.DSOCacheEntry {
		i64 2188053935818705699, ; hash 0x1e5d877639de8b23, from name: aot-Xamarin.AndroidX.Core
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.221_name, ; name: libaot-Xamarin.AndroidX.Core.dll.so
		ptr null; void* handle (0x0)
	}, ; 189
	%struct.DSOCacheEntry {
		i64 2203837998074764700, ; hash 0x1e959afb99c11d9c, from name: libaot-Xamarin.AndroidX.Lifecycle.LiveData.Core.Ktx.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.239_name, ; name: libaot-Xamarin.AndroidX.Lifecycle.LiveData.Core.Ktx.dll.so
		ptr null; void* handle (0x0)
	}, ; 190
	%struct.DSOCacheEntry {
		i64 2204262165896919438, ; hash 0x1e971cc2de1e798e, from name: Mono.Android.Runtime.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.180_name, ; name: libaot-Mono.Android.Runtime.dll.so
		ptr null; void* handle (0x0)
	}, ; 191
	%struct.DSOCacheEntry {
		i64 2205845752800215288, ; hash 0x1e9cbd066cf600f8, from name: aot-System.IO.FileSystem.Watcher.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.60_name, ; name: libaot-System.IO.FileSystem.Watcher.dll.so
		ptr null; void* handle (0x0)
	}, ; 192
	%struct.DSOCacheEntry {
		i64 2213385277651629120, ; hash 0x1eb7862ed9813440, from name: aot-System.Transactions.Local.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.159_name, ; name: libaot-System.Transactions.Local.dll.so
		ptr null; void* handle (0x0)
	}, ; 193
	%struct.DSOCacheEntry {
		i64 2217270221427496189, ; hash 0x1ec55384cf3cd4fd, from name: Xamarin.AndroidX.Arch.Core.Runtime.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.212_name, ; name: libaot-Xamarin.AndroidX.Arch.Core.Runtime.dll.so
		ptr null; void* handle (0x0)
	}, ; 194
	%struct.DSOCacheEntry {
		i64 2224048179339183696, ; hash 0x1edd68091cddc650, from name: libaot-Microsoft.Extensions.DependencyInjection.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.186_name, ; name: libaot-Microsoft.Extensions.DependencyInjection.dll.so
		ptr null; void* handle (0x0)
	}, ; 195
	%struct.DSOCacheEntry {
		i64 2246096926805359669, ; hash 0x1f2bbd412d547c35, from name: libaot-Xamarin.AndroidX.Arch.Core.Runtime
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.212_name, ; name: libaot-Xamarin.AndroidX.Arch.Core.Runtime.dll.so
		ptr null; void* handle (0x0)
	}, ; 196
	%struct.DSOCacheEntry {
		i64 2247403624489191688, ; hash 0x1f3061b0709a8908, from name: MauiApp1.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.9_name, ; name: libaot-MauiApp1.dll.so
		ptr null; void* handle (0x0)
	}, ; 197
	%struct.DSOCacheEntry {
		i64 2278942814095671648, ; hash 0x1fa06e6a419a0160, from name: System.ObjectModel.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.94_name, ; name: libaot-System.ObjectModel.dll.so
		ptr null; void* handle (0x0)
	}, ; 198
	%struct.DSOCacheEntry {
		i64 2287834202362508563, ; hash 0x1fc00515e8ce7513, from name: System.Collections.Concurrent
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.18_name, ; name: libaot-System.Collections.Concurrent.dll.so
		ptr null; void* handle (0x0)
	}, ; 199
	%struct.DSOCacheEntry {
		i64 2308032427487440447, ; hash 0x2007c743aa78ae3f, from name: libaot-System.Linq.Expressions.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.68_name, ; name: libaot-System.Linq.Expressions.dll.so
		ptr null; void* handle (0x0)
	}, ; 200
	%struct.DSOCacheEntry {
		i64 2316119226167002719, ; hash 0x2024822a3523065f, from name: libaot-System.Net.WebClient.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.86_name, ; name: libaot-System.Net.WebClient.dll.so
		ptr null; void* handle (0x0)
	}, ; 201
	%struct.DSOCacheEntry {
		i64 2317435067800416661, ; hash 0x20292eea7646f195, from name: System.AppContext.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.16_name, ; name: libaot-System.AppContext.dll.so
		ptr null; void* handle (0x0)
	}, ; 202
	%struct.DSOCacheEntry {
		i64 2331926070505433189, ; hash 0x205caa67f2f2e865, from name: aot-Xamarin.Kotlin.StdLib
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.277_name, ; name: libaot-Xamarin.Kotlin.StdLib.dll.so
		ptr null; void* handle (0x0)
	}, ; 203
	%struct.DSOCacheEntry {
		i64 2335503487726329082, ; hash 0x2069600c4d9d1cfa, from name: System.Text.Encodings.Web
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.146_name, ; name: libaot-System.Text.Encodings.Web.dll.so
		ptr null; void* handle (0x0)
	}, ; 204
	%struct.DSOCacheEntry {
		i64 2337758774805907496, ; hash 0x207163383edbc828, from name: System.Runtime.CompilerServices.Unsafe
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.111_name, ; name: libaot-System.Runtime.CompilerServices.Unsafe.dll.so
		ptr null; void* handle (0x0)
	}, ; 205
	%struct.DSOCacheEntry {
		i64 2341103241755635659, ; hash 0x207d44fea35c2fcb, from name: Xamarin.Google.Crypto.Tink.Android.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.273_name, ; name: libaot-Xamarin.Google.Crypto.Tink.Android.dll.so
		ptr null; void* handle (0x0)
	}, ; 206
	%struct.DSOCacheEntry {
		i64 2355010170746472921, ; hash 0x20aead45ddc689d9, from name: System.Globalization.Calendars.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.50_name, ; name: libaot-System.Globalization.Calendars.dll.so
		ptr null; void* handle (0x0)
	}, ; 207
	%struct.DSOCacheEntry {
		i64 2360819361352414078, ; hash 0x20c350b37446737e, from name: libaot-Xamarin.AndroidX.Window.Extensions.Core.Core.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.270_name, ; name: libaot-Xamarin.AndroidX.Window.Extensions.Core.Core.dll.so
		ptr null; void* handle (0x0)
	}, ; 208
	%struct.DSOCacheEntry {
		i64 2383056933276923752, ; hash 0x211251a7a380b768, from name: System.Memory.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.72_name, ; name: libaot-System.Memory.dll.so
		ptr null; void* handle (0x0)
	}, ; 209
	%struct.DSOCacheEntry {
		i64 2403894093814325575, ; hash 0x215c58f123766147, from name: System.Security.Principal.Windows.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.137_name, ; name: libaot-System.Security.Principal.Windows.dll.so
		ptr null; void* handle (0x0)
	}, ; 210
	%struct.DSOCacheEntry {
		i64 2428209039270142025, ; hash 0x21b2bb418a16e049, from name: libaot-System.Threading.Tasks.Dataflow.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.151_name, ; name: libaot-System.Threading.Tasks.Dataflow.dll.so
		ptr null; void* handle (0x0)
	}, ; 211
	%struct.DSOCacheEntry {
		i64 2461323963611156054, ; hash 0x2228611ab0330e56, from name: aot-System.Threading.Tasks.Dataflow
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.151_name, ; name: libaot-System.Threading.Tasks.Dataflow.dll.so
		ptr null; void* handle (0x0)
	}, ; 212
	%struct.DSOCacheEntry {
		i64 2470498323731680442, ; hash 0x2248f922dc398cba, from name: Xamarin.AndroidX.CoordinatorLayout
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.220_name, ; name: libaot-Xamarin.AndroidX.CoordinatorLayout.dll.so
		ptr null; void* handle (0x0)
	}, ; 213
	%struct.DSOCacheEntry {
		i64 2476879673203463353, ; hash 0x225fa4f090ad94b9, from name: libaot-System.Runtime.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.126_name, ; name: libaot-System.Runtime.dll.so
		ptr null; void* handle (0x0)
	}, ; 214
	%struct.DSOCacheEntry {
		i64 2497223385847772520, ; hash 0x22a7eb7046413568, from name: System.Runtime
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.126_name, ; name: libaot-System.Runtime.dll.so
		ptr null; void* handle (0x0)
	}, ; 215
	%struct.DSOCacheEntry {
		i64 2511572262874387261, ; hash 0x22dae5aa8c5a133d, from name: System.Runtime.InteropServices.JavaScript.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.115_name, ; name: libaot-System.Runtime.InteropServices.JavaScript.dll.so
		ptr null; void* handle (0x0)
	}, ; 216
	%struct.DSOCacheEntry {
		i64 2516268783161295760, ; hash 0x22eb952063bbc390, from name: _Microsoft.Android.Resource.Designer.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.10_name, ; name: libaot-_Microsoft.Android.Resource.Designer.dll.so
		ptr null; void* handle (0x0)
	}, ; 217
	%struct.DSOCacheEntry {
		i64 2522582145975789087, ; hash 0x23020318b7a1261f, from name: Xamarin.AndroidX.AppCompat.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.209_name, ; name: libaot-Xamarin.AndroidX.AppCompat.dll.so
		ptr null; void* handle (0x0)
	}, ; 218
	%struct.DSOCacheEntry {
		i64 2543609594401387459, ; hash 0x234cb7731191f3c3, from name: aot-System.Threading.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.158_name, ; name: libaot-System.Threading.dll.so
		ptr null; void* handle (0x0)
	}, ; 219
	%struct.DSOCacheEntry {
		i64 2552433275064631459, ; hash 0x236c108a511d40a3, from name: System.Runtime.InteropServices.RuntimeInformation.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.116_name, ; name: libaot-System.Runtime.InteropServices.RuntimeInformation.dll.so
		ptr null; void* handle (0x0)
	}, ; 220
	%struct.DSOCacheEntry {
		i64 2556787638847292301, ; hash 0x237b88cfa39a438d, from name: libaot-Mono.Android.Runtime
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.180_name, ; name: libaot-Mono.Android.Runtime.dll.so
		ptr null; void* handle (0x0)
	}, ; 221
	%struct.DSOCacheEntry {
		i64 2564867392456424521, ; hash 0x23983d4ddf58fc49, from name: libaot-Xamarin.AndroidX.SwipeRefreshLayout.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.261_name, ; name: libaot-Xamarin.AndroidX.SwipeRefreshLayout.dll.so
		ptr null; void* handle (0x0)
	}, ; 222
	%struct.DSOCacheEntry {
		i64 2589712498362123328, ; hash 0x23f081cbdf438440, from name: aot-Xamarin.AndroidX.Arch.Core.Common
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.211_name, ; name: libaot-Xamarin.AndroidX.Arch.Core.Common.dll.so
		ptr null; void* handle (0x0)
	}, ; 223
	%struct.DSOCacheEntry {
		i64 2607857763146079109, ; hash 0x2430f8d18d111b85, from name: libaot-System.Runtime.Serialization.Primitives.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.123_name, ; name: libaot-System.Runtime.Serialization.Primitives.dll.so
		ptr null; void* handle (0x0)
	}, ; 224
	%struct.DSOCacheEntry {
		i64 2621972009330107316, ; hash 0x24631da6932363b4, from name: libaot-System.Runtime.InteropServices.RuntimeInformation.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.116_name, ; name: libaot-System.Runtime.InteropServices.RuntimeInformation.dll.so
		ptr null; void* handle (0x0)
	}, ; 225
	%struct.DSOCacheEntry {
		i64 2632269733008246987, ; hash 0x2487b36034f808cb, from name: System.Net.NameResolution
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.77_name, ; name: libaot-System.Net.NameResolution.dll.so
		ptr null; void* handle (0x0)
	}, ; 226
	%struct.DSOCacheEntry {
		i64 2656907746661064104, ; hash 0x24df3b84c8b75da8, from name: Microsoft.Extensions.DependencyInjection
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.186_name, ; name: libaot-Microsoft.Extensions.DependencyInjection.dll.so
		ptr null; void* handle (0x0)
	}, ; 227
	%struct.DSOCacheEntry {
		i64 2668219604630665034, ; hash 0x25076b97f4be774a, from name: aot-Xamarin.AndroidX.Navigation.Fragment
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.249_name, ; name: libaot-Xamarin.AndroidX.Navigation.Fragment.dll.so
		ptr null; void* handle (0x0)
	}, ; 228
	%struct.DSOCacheEntry {
		i64 2668542158792596923, ; hash 0x250890f472fc9dbb, from name: aot-System.IO.MemoryMappedFiles.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.63_name, ; name: libaot-System.IO.MemoryMappedFiles.dll.so
		ptr null; void* handle (0x0)
	}, ; 229
	%struct.DSOCacheEntry {
		i64 2676598929141056664, ; hash 0x2525308b79a4c498, from name: xamarin-debug-app-helper.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.8_name, ; name: libxamarin-debug-app-helper.so
		ptr null; void* handle (0x0)
	}, ; 230
	%struct.DSOCacheEntry {
		i64 2680228656536905837, ; hash 0x253215c33db4686d, from name: libaot-System.Numerics.Vectors
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.92_name, ; name: libaot-System.Numerics.Vectors.dll.so
		ptr null; void* handle (0x0)
	}, ; 231
	%struct.DSOCacheEntry {
		i64 2696149129426007350, ; hash 0x256aa55930ea7536, from name: libaot-System.Net.NetworkInformation.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.78_name, ; name: libaot-System.Net.NetworkInformation.dll.so
		ptr null; void* handle (0x0)
	}, ; 232
	%struct.DSOCacheEntry {
		i64 2701058605776676762, ; hash 0x257c167dbad4a79a, from name: System.IO.Compression.FileSystem.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.54_name, ; name: libaot-System.IO.Compression.FileSystem.dll.so
		ptr null; void* handle (0x0)
	}, ; 233
	%struct.DSOCacheEntry {
		i64 2706075432581334785, ; hash 0x258de944be6c0701, from name: System.Net.WebSockets
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.90_name, ; name: libaot-System.Net.WebSockets.dll.so
		ptr null; void* handle (0x0)
	}, ; 234
	%struct.DSOCacheEntry {
		i64 2720835231062098223, ; hash 0x25c2593a1fd3012f, from name: libaot-System.Security.Cryptography.Primitives.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.134_name, ; name: libaot-System.Security.Cryptography.Primitives.dll.so
		ptr null; void* handle (0x0)
	}, ; 235
	%struct.DSOCacheEntry {
		i64 2731559543132830859, ; hash 0x25e872ee9b42bc8b, from name: aot-System.Threading.Overlapped
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.150_name, ; name: libaot-System.Threading.Overlapped.dll.so
		ptr null; void* handle (0x0)
	}, ; 236
	%struct.DSOCacheEntry {
		i64 2739332427923382687, ; hash 0x260410546014e19f, from name: libaot-System.IO.UnmanagedMemoryStream.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.66_name, ; name: libaot-System.IO.UnmanagedMemoryStream.dll.so
		ptr null; void* handle (0x0)
	}, ; 237
	%struct.DSOCacheEntry {
		i64 2742955797410753054, ; hash 0x2610efc3d3442a1e, from name: libaot-System.IO.MemoryMappedFiles.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.63_name, ; name: libaot-System.IO.MemoryMappedFiles.dll.so
		ptr null; void* handle (0x0)
	}, ; 238
	%struct.DSOCacheEntry {
		i64 2768148223752389014, ; hash 0x266a7024aa63c196, from name: aot-System.Security.Principal.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.138_name, ; name: libaot-System.Security.Principal.dll.so
		ptr null; void* handle (0x0)
	}, ; 239
	%struct.DSOCacheEntry {
		i64 2770569676694168271, ; hash 0x26730a711cd322cf, from name: Xamarin.Jetbrains.Annotations.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.276_name, ; name: libaot-Xamarin.Jetbrains.Annotations.dll.so
		ptr null; void* handle (0x0)
	}, ; 240
	%struct.DSOCacheEntry {
		i64 2770866442878152074, ; hash 0x267418595fcd6d8a, from name: libaot-System.Resources.Writer
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.110_name, ; name: libaot-System.Resources.Writer.dll.so
		ptr null; void* handle (0x0)
	}, ; 241
	%struct.DSOCacheEntry {
		i64 2787234703088983483, ; hash 0x26ae3f31ef429dbb, from name: Xamarin.AndroidX.Startup.StartupRuntime
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.260_name, ; name: libaot-Xamarin.AndroidX.Startup.StartupRuntime.dll.so
		ptr null; void* handle (0x0)
	}, ; 242
	%struct.DSOCacheEntry {
		i64 2794448935210026949, ; hash 0x26c7e0803e2987c5, from name: aot-System.Net.ServicePoint
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.84_name, ; name: libaot-System.Net.ServicePoint.dll.so
		ptr null; void* handle (0x0)
	}, ; 243
	%struct.DSOCacheEntry {
		i64 2815524396660695947, ; hash 0x2712c0857f68238b, from name: System.Security.AccessControl
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.127_name, ; name: libaot-System.Security.AccessControl.dll.so
		ptr null; void* handle (0x0)
	}, ; 244
	%struct.DSOCacheEntry {
		i64 2834374838958460508, ; hash 0x2755b8e61c6c8e5c, from name: Microsoft.Maui.Graphics.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.198_name, ; name: libaot-Microsoft.Maui.Graphics.dll.so
		ptr null; void* handle (0x0)
	}, ; 245
	%struct.DSOCacheEntry {
		i64 2837562181765940674, ; hash 0x27610bc5303dc5c2, from name: libaot-_Microsoft.Android.Resource.Designer
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.10_name, ; name: libaot-_Microsoft.Android.Resource.Designer.dll.so
		ptr null; void* handle (0x0)
	}, ; 246
	%struct.DSOCacheEntry {
		i64 2864889642192985433, ; hash 0x27c221f3639bdd59, from name: aot-Microsoft.Maui
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.196_name, ; name: libaot-Microsoft.Maui.dll.so
		ptr null; void* handle (0x0)
	}, ; 247
	%struct.DSOCacheEntry {
		i64 2865936624365190494, ; hash 0x27c5da2cec11bd5e, from name: aot-System.ComponentModel.TypeConverter.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.27_name, ; name: libaot-System.ComponentModel.TypeConverter.dll.so
		ptr null; void* handle (0x0)
	}, ; 248
	%struct.DSOCacheEntry {
		i64 2895224535127013735, ; hash 0x282de760093db967, from name: libaot-System.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.174_name, ; name: libaot-System.dll.so
		ptr null; void* handle (0x0)
	}, ; 249
	%struct.DSOCacheEntry {
		i64 2923871038697555247, ; hash 0x2893ad37e69ec52f, from name: Jsr305Binding
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.272_name, ; name: libaot-Jsr305Binding.dll.so
		ptr null; void* handle (0x0)
	}, ; 250
	%struct.DSOCacheEntry {
		i64 2978076563348721961, ; hash 0x295440db18511129, from name: libaot-System.Collections.Specialized
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.21_name, ; name: libaot-System.Collections.Specialized.dll.so
		ptr null; void* handle (0x0)
	}, ; 251
	%struct.DSOCacheEntry {
		i64 3014810749284030793, ; hash 0x29d6c267401a9949, from name: System.IO.FileSystem.DriveInfo.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.58_name, ; name: libaot-System.IO.FileSystem.DriveInfo.dll.so
		ptr null; void* handle (0x0)
	}, ; 252
	%struct.DSOCacheEntry {
		i64 3017136373564924869, ; hash 0x29df058bd93f63c5, from name: System.Net.WebProxy
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.88_name, ; name: libaot-System.Net.WebProxy.dll.so
		ptr null; void* handle (0x0)
	}, ; 253
	%struct.DSOCacheEntry {
		i64 3017704767998173186, ; hash 0x29e10a7f7d88a002, from name: Xamarin.Google.Android.Material
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.271_name, ; name: libaot-Xamarin.Google.Android.Material.dll.so
		ptr null; void* handle (0x0)
	}, ; 254
	%struct.DSOCacheEntry {
		i64 3021830647363748080, ; hash 0x29efb2f6a38140f0, from name: libaot-System.Security.Principal.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.138_name, ; name: libaot-System.Security.Principal.dll.so
		ptr null; void* handle (0x0)
	}, ; 255
	%struct.DSOCacheEntry {
		i64 3023023456770706911, ; hash 0x29f3efd1387dcddf, from name: System.Runtime.Serialization.Formatters.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.121_name, ; name: libaot-System.Runtime.Serialization.Formatters.dll.so
		ptr null; void* handle (0x0)
	}, ; 256
	%struct.DSOCacheEntry {
		i64 3038175307180388234, ; hash 0x2a29c4584dd9af8a, from name: aot-Xamarin.AndroidX.CoordinatorLayout
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.220_name, ; name: libaot-Xamarin.AndroidX.CoordinatorLayout.dll.so
		ptr null; void* handle (0x0)
	}, ; 257
	%struct.DSOCacheEntry {
		i64 3064219428148914307, ; hash 0x2a864b55c0aaa883, from name: aot-System.Net.WebClient
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.86_name, ; name: libaot-System.Net.WebClient.dll.so
		ptr null; void* handle (0x0)
	}, ; 258
	%struct.DSOCacheEntry {
		i64 3073412500499229570, ; hash 0x2aa6f462b4806b82, from name: System.Threading.Channels.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.149_name, ; name: libaot-System.Threading.Channels.dll.so
		ptr null; void* handle (0x0)
	}, ; 259
	%struct.DSOCacheEntry {
		i64 3077311767976570318, ; hash 0x2ab4cebfa95f6dce, from name: aot-System.Security.Cryptography.Encoding.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.132_name, ; name: libaot-System.Security.Cryptography.Encoding.dll.so
		ptr null; void* handle (0x0)
	}, ; 260
	%struct.DSOCacheEntry {
		i64 3082827728618939793, ; hash 0x2ac8677c540e6591, from name: Xamarin.AndroidX.Lifecycle.Process.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.240_name, ; name: libaot-Xamarin.AndroidX.Lifecycle.Process.dll.so
		ptr null; void* handle (0x0)
	}, ; 261
	%struct.DSOCacheEntry {
		i64 3106852385031680087, ; hash 0x2b1dc1c88b637057, from name: System.Runtime.Serialization.Xml
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.124_name, ; name: libaot-System.Runtime.Serialization.Xml.dll.so
		ptr null; void* handle (0x0)
	}, ; 262
	%struct.DSOCacheEntry {
		i64 3108167353802057239, ; hash 0x2b226dbd91d66617, from name: libaot-Xamarin.AndroidX.SavedState
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.256_name, ; name: libaot-Xamarin.AndroidX.SavedState.dll.so
		ptr null; void* handle (0x0)
	}, ; 263
	%struct.DSOCacheEntry {
		i64 3116659788444322944, ; hash 0x2b40999097f7cc80, from name: aot-Microsoft.Extensions.Configuration.Abstractions.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.185_name, ; name: libaot-Microsoft.Extensions.Configuration.Abstractions.dll.so
		ptr null; void* handle (0x0)
	}, ; 264
	%struct.DSOCacheEntry {
		i64 3135045361691397059, ; hash 0x2b81eb25725a0bc3, from name: libaot-Xamarin.AndroidX.SlidingPaneLayout
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.259_name, ; name: libaot-Xamarin.AndroidX.SlidingPaneLayout.dll.so
		ptr null; void* handle (0x0)
	}, ; 265
	%struct.DSOCacheEntry {
		i64 3142558996668056863, ; hash 0x2b9c9cc1ea1b851f, from name: libaot-Microsoft.Maui.Controls.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.194_name, ; name: libaot-Microsoft.Maui.Controls.dll.so
		ptr null; void* handle (0x0)
	}, ; 266
	%struct.DSOCacheEntry {
		i64 3159715243761782120, ; hash 0x2bd99045f7cecd68, from name: aot-System.Linq.Expressions.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.68_name, ; name: libaot-System.Linq.Expressions.dll.so
		ptr null; void* handle (0x0)
	}, ; 267
	%struct.DSOCacheEntry {
		i64 3175160170369933956, ; hash 0x2c106f5a2bde6284, from name: libaot-System.IO.FileSystem.DriveInfo.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.58_name, ; name: libaot-System.IO.FileSystem.DriveInfo.dll.so
		ptr null; void* handle (0x0)
	}, ; 268
	%struct.DSOCacheEntry {
		i64 3188209531010000695, ; hash 0x2c3ecbad355da737, from name: System.Text.Encodings.Web.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.146_name, ; name: libaot-System.Text.Encodings.Web.dll.so
		ptr null; void* handle (0x0)
	}, ; 269
	%struct.DSOCacheEntry {
		i64 3207499409309355895, ; hash 0x2c8353b7fd28cf77, from name: libaot-Xamarin.AndroidX.Core.Core.Ktx.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.222_name, ; name: libaot-Xamarin.AndroidX.Core.Core.Ktx.dll.so
		ptr null; void* handle (0x0)
	}, ; 270
	%struct.DSOCacheEntry {
		i64 3215847190090144585, ; hash 0x2ca0fbfb2942db49, from name: libaot-System.Security.Cryptography.Algorithms.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.129_name, ; name: libaot-System.Security.Cryptography.Algorithms.dll.so
		ptr null; void* handle (0x0)
	}, ; 271
	%struct.DSOCacheEntry {
		i64 3228004203549710724, ; hash 0x2ccc2cb86e0c5984, from name: aot-System.Xml.Linq
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.165_name, ; name: libaot-System.Xml.Linq.dll.so
		ptr null; void* handle (0x0)
	}, ; 272
	%struct.DSOCacheEntry {
		i64 3238963513052983290, ; hash 0x2cf31c2783f96ffa, from name: aot-Xamarin.Jetbrains.Annotations.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.276_name, ; name: libaot-Xamarin.Jetbrains.Annotations.dll.so
		ptr null; void* handle (0x0)
	}, ; 273
	%struct.DSOCacheEntry {
		i64 3243810660761008057, ; hash 0x2d04549c0948f7b9, from name: aot-System.Xml.XmlSerializer
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.172_name, ; name: libaot-System.Xml.XmlSerializer.dll.so
		ptr null; void* handle (0x0)
	}, ; 274
	%struct.DSOCacheEntry {
		i64 3250939353211503980, ; hash 0x2d1da81e1682856c, from name: libaot-Xamarin.AndroidX.Browser.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.213_name, ; name: libaot-Xamarin.AndroidX.Browser.dll.so
		ptr null; void* handle (0x0)
	}, ; 275
	%struct.DSOCacheEntry {
		i64 3260817401620729492, ; hash 0x2d40c02675040e94, from name: libaot-System.Memory
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.72_name, ; name: libaot-System.Memory.dll.so
		ptr null; void* handle (0x0)
	}, ; 276
	%struct.DSOCacheEntry {
		i64 3281594302220646930, ; hash 0x2d8a90a198ceba12, from name: System.Security.Principal
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.138_name, ; name: libaot-System.Security.Principal.dll.so
		ptr null; void* handle (0x0)
	}, ; 277
	%struct.DSOCacheEntry {
		i64 3282577833136852042, ; hash 0x2d8e0f25bbb18c4a, from name: aot-Xamarin.AndroidX.Lifecycle.Common
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.236_name, ; name: libaot-Xamarin.AndroidX.Lifecycle.Common.dll.so
		ptr null; void* handle (0x0)
	}, ; 278
	%struct.DSOCacheEntry {
		i64 3289520064315143713, ; hash 0x2da6b911e3063621, from name: Xamarin.AndroidX.Lifecycle.Common
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.236_name, ; name: libaot-Xamarin.AndroidX.Lifecycle.Common.dll.so
		ptr null; void* handle (0x0)
	}, ; 279
	%struct.DSOCacheEntry {
		i64 3303437397778967116, ; hash 0x2dd82acf985b2a4c, from name: Xamarin.AndroidX.Annotation.Experimental
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.207_name, ; name: libaot-Xamarin.AndroidX.Annotation.Experimental.dll.so
		ptr null; void* handle (0x0)
	}, ; 280
	%struct.DSOCacheEntry {
		i64 3321269044039068031, ; hash 0x2e1784994573297f, from name: MauiApp1
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.9_name, ; name: libaot-MauiApp1.dll.so
		ptr null; void* handle (0x0)
	}, ; 281
	%struct.DSOCacheEntry {
		i64 3325875462027654285, ; hash 0x2e27e21c8958b48d, from name: System.Runtime.Numerics
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.120_name, ; name: libaot-System.Runtime.Numerics.dll.so
		ptr null; void* handle (0x0)
	}, ; 282
	%struct.DSOCacheEntry {
		i64 3326186886063442925, ; hash 0x2e28fd59985fcbed, from name: aot-Xamarin.AndroidX.Collection.Ktx
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.216_name, ; name: libaot-Xamarin.AndroidX.Collection.Ktx.dll.so
		ptr null; void* handle (0x0)
	}, ; 283
	%struct.DSOCacheEntry {
		i64 3344514922410554693, ; hash 0x2e6a1a9a18463545, from name: Xamarin.KotlinX.Coroutines.Core.Jvm
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.282_name, ; name: libaot-Xamarin.KotlinX.Coroutines.Core.Jvm.dll.so
		ptr null; void* handle (0x0)
	}, ; 284
	%struct.DSOCacheEntry {
		i64 3353156683055228583, ; hash 0x2e88ce3cc9bbe6a7, from name: libaot-Xamarin.AndroidX.Annotation.Jvm
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.208_name, ; name: libaot-Xamarin.AndroidX.Annotation.Jvm.dll.so
		ptr null; void* handle (0x0)
	}, ; 285
	%struct.DSOCacheEntry {
		i64 3360524699507847380, ; hash 0x2ea2fb68cd1770d4, from name: aot-Xamarin.AndroidX.Annotation
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.206_name, ; name: libaot-Xamarin.AndroidX.Annotation.dll.so
		ptr null; void* handle (0x0)
	}, ; 286
	%struct.DSOCacheEntry {
		i64 3371443586592544017, ; hash 0x2ec9c6144f1e1511, from name: libaot-System.ComponentModel.EventBasedAsync
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.25_name, ; name: libaot-System.ComponentModel.EventBasedAsync.dll.so
		ptr null; void* handle (0x0)
	}, ; 287
	%struct.DSOCacheEntry {
		i64 3371678680748477179, ; hash 0x2eca9be56ec54afb, from name: libaot-System.Security.Principal
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.138_name, ; name: libaot-System.Security.Principal.dll.so
		ptr null; void* handle (0x0)
	}, ; 288
	%struct.DSOCacheEntry {
		i64 3379278180018875679, ; hash 0x2ee59b99bd40ed1f, from name: libaot-Microsoft.Maui.Essentials.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.197_name, ; name: libaot-Microsoft.Maui.Essentials.dll.so
		ptr null; void* handle (0x0)
	}, ; 289
	%struct.DSOCacheEntry {
		i64 3387343871458221356, ; hash 0x2f02434dde5d1d2c, from name: Xamarin.AndroidX.CoordinatorLayout.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.220_name, ; name: libaot-Xamarin.AndroidX.CoordinatorLayout.dll.so
		ptr null; void* handle (0x0)
	}, ; 290
	%struct.DSOCacheEntry {
		i64 3413847582085635339, ; hash 0x2f606c49df8a5d0b, from name: aot-System.Text.Encoding.Extensions
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.144_name, ; name: libaot-System.Text.Encoding.Extensions.dll.so
		ptr null; void* handle (0x0)
	}, ; 291
	%struct.DSOCacheEntry {
		i64 3415134081241495173, ; hash 0x2f64fe5a4cbab685, from name: libaot-System.Runtime.Serialization.Formatters.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.121_name, ; name: libaot-System.Runtime.Serialization.Formatters.dll.so
		ptr null; void* handle (0x0)
	}, ; 292
	%struct.DSOCacheEntry {
		i64 3420583226354638019, ; hash 0x2f785a5243871cc3, from name: libaot-System.Reflection.TypeExtensions.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.106_name, ; name: libaot-System.Reflection.TypeExtensions.dll.so
		ptr null; void* handle (0x0)
	}, ; 293
	%struct.DSOCacheEntry {
		i64 3425915677031941243, ; hash 0x2f8b4c282fee447b, from name: libaot-System.Runtime.Extensions
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.113_name, ; name: libaot-System.Runtime.Extensions.dll.so
		ptr null; void* handle (0x0)
	}, ; 294
	%struct.DSOCacheEntry {
		i64 3429672777697402584, ; hash 0x2f98a5385a7b1ed8, from name: Microsoft.Maui.Essentials
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.197_name, ; name: libaot-Microsoft.Maui.Essentials.dll.so
		ptr null; void* handle (0x0)
	}, ; 295
	%struct.DSOCacheEntry {
		i64 3441727832101074929, ; hash 0x2fc3793a6df5b7f1, from name: aot-Xamarin.AndroidX.Annotation.Jvm.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.208_name, ; name: libaot-Xamarin.AndroidX.Annotation.Jvm.dll.so
		ptr null; void* handle (0x0)
	}, ; 296
	%struct.DSOCacheEntry {
		i64 3491308886800479652, ; hash 0x30739eef4ee835a4, from name: System.Net.Sockets.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.85_name, ; name: libaot-System.Net.Sockets.dll.so
		ptr null; void* handle (0x0)
	}, ; 297
	%struct.DSOCacheEntry {
		i64 3494946837667399002, ; hash 0x30808ba1c00a455a, from name: Microsoft.Extensions.Configuration
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.184_name, ; name: libaot-Microsoft.Extensions.Configuration.dll.so
		ptr null; void* handle (0x0)
	}, ; 298
	%struct.DSOCacheEntry {
		i64 3504968395820649747, ; hash 0x30a4262f95dc4d13, from name: Microsoft.Maui.Controls.Xaml.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.195_name, ; name: libaot-Microsoft.Maui.Controls.Xaml.dll.so
		ptr null; void* handle (0x0)
	}, ; 299
	%struct.DSOCacheEntry {
		i64 3508450208084372758, ; hash 0x30b084e02d03ad16, from name: System.Net.Ping
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.79_name, ; name: libaot-System.Net.Ping.dll.so
		ptr null; void* handle (0x0)
	}, ; 300
	%struct.DSOCacheEntry {
		i64 3509847518655227625, ; hash 0x30b57bb8e53b26e9, from name: Xamarin.Kotlin.StdLib.Jdk8.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.280_name, ; name: libaot-Xamarin.Kotlin.StdLib.Jdk8.dll.so
		ptr null; void* handle (0x0)
	}, ; 301
	%struct.DSOCacheEntry {
		i64 3519863767463074839, ; hash 0x30d911728d679c17, from name: libaot-System.IO.Compression.Brotli
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.53_name, ; name: libaot-System.IO.Compression.Brotli.dll.so
		ptr null; void* handle (0x0)
	}, ; 302
	%struct.DSOCacheEntry {
		i64 3522470458906976663, ; hash 0x30e2543832f52197, from name: Xamarin.AndroidX.SwipeRefreshLayout
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.261_name, ; name: libaot-Xamarin.AndroidX.SwipeRefreshLayout.dll.so
		ptr null; void* handle (0x0)
	}, ; 303
	%struct.DSOCacheEntry {
		i64 3524924510499499108, ; hash 0x30eb0c2a9c63ec64, from name: aot-System.Data.DataSetExtensions.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.33_name, ; name: libaot-System.Data.DataSetExtensions.dll.so
		ptr null; void* handle (0x0)
	}, ; 304
	%struct.DSOCacheEntry {
		i64 3525534382690385742, ; hash 0x30ed36d78bafbf4e, from name: libaot-Xamarin.AndroidX.Startup.StartupRuntime.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.260_name, ; name: libaot-Xamarin.AndroidX.Startup.StartupRuntime.dll.so
		ptr null; void* handle (0x0)
	}, ; 305
	%struct.DSOCacheEntry {
		i64 3531994851595924923, ; hash 0x31042a9aade235bb, from name: System.Numerics
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.93_name, ; name: libaot-System.Numerics.dll.so
		ptr null; void* handle (0x0)
	}, ; 306
	%struct.DSOCacheEntry {
		i64 3534503520749001150, ; hash 0x310d1439bb9c99be, from name: aot-Microsoft.Maui.Controls.Xaml.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.195_name, ; name: libaot-Microsoft.Maui.Controls.Xaml.dll.so
		ptr null; void* handle (0x0)
	}, ; 307
	%struct.DSOCacheEntry {
		i64 3536984838292738215, ; hash 0x3115e4f87e6190a7, from name: Xamarin.AndroidX.Annotation.Experimental.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.207_name, ; name: libaot-Xamarin.AndroidX.Annotation.Experimental.dll.so
		ptr null; void* handle (0x0)
	}, ; 308
	%struct.DSOCacheEntry {
		i64 3565908020027737498, ; hash 0x317ca6738378459a, from name: libaot-System.Security.Cryptography.X509Certificates.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.135_name, ; name: libaot-System.Security.Cryptography.X509Certificates.dll.so
		ptr null; void* handle (0x0)
	}, ; 309
	%struct.DSOCacheEntry {
		i64 3569692625789698928, ; hash 0x318a1887b586c370, from name: libmono-component-hot_reload
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.4_name, ; name: libmono-component-hot_reload.so
		ptr null; void* handle (0x0)
	}, ; 310
	%struct.DSOCacheEntry {
		i64 3577153083746314324, ; hash 0x31a499c6efe46854, from name: libaot-System.Collections.Immutable.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.19_name, ; name: libaot-System.Collections.Immutable.dll.so
		ptr null; void* handle (0x0)
	}, ; 311
	%struct.DSOCacheEntry {
		i64 3583717436449942140, ; hash 0x31bbec0566f8ea7c, from name: libaot-System.Net
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.91_name, ; name: libaot-System.Net.dll.so
		ptr null; void* handle (0x0)
	}, ; 312
	%struct.DSOCacheEntry {
		i64 3584501248261514691, ; hash 0x31beb4e4cf9265c3, from name: libaot-System.Xml.ReaderWriter
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.166_name, ; name: libaot-System.Xml.ReaderWriter.dll.so
		ptr null; void* handle (0x0)
	}, ; 313
	%struct.DSOCacheEntry {
		i64 3597248757993004480, ; hash 0x31ebfeafb4e35dc0, from name: System.ServiceModel.Web.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.141_name, ; name: libaot-System.ServiceModel.Web.dll.so
		ptr null; void* handle (0x0)
	}, ; 314
	%struct.DSOCacheEntry {
		i64 3604923293906189876, ; hash 0x320742a2d7cf3e34, from name: libaot-System.Reflection.Emit.Lightweight
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.101_name, ; name: libaot-System.Reflection.Emit.Lightweight.dll.so
		ptr null; void* handle (0x0)
	}, ; 315
	%struct.DSOCacheEntry {
		i64 3617300193753112415, ; hash 0x32333b5c669b1f5f, from name: Microsoft.CSharp.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.11_name, ; name: libaot-Microsoft.CSharp.dll.so
		ptr null; void* handle (0x0)
	}, ; 316
	%struct.DSOCacheEntry {
		i64 3624819157652780137, ; hash 0x324df1d19aecb469, from name: Xamarin.AndroidX.VersionedParcelable.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.266_name, ; name: libaot-Xamarin.AndroidX.VersionedParcelable.dll.so
		ptr null; void* handle (0x0)
	}, ; 317
	%struct.DSOCacheEntry {
		i64 3638003163729360188, ; hash 0x327cc89a39d5f53c, from name: Microsoft.Extensions.Configuration.Abstractions
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.185_name, ; name: libaot-Microsoft.Extensions.Configuration.Abstractions.dll.so
		ptr null; void* handle (0x0)
	}, ; 318
	%struct.DSOCacheEntry {
		i64 3647754201059316852, ; hash 0x329f6d1e86145474, from name: System.Xml.ReaderWriter
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.166_name, ; name: libaot-System.Xml.ReaderWriter.dll.so
		ptr null; void* handle (0x0)
	}, ; 319
	%struct.DSOCacheEntry {
		i64 3657389980202273675, ; hash 0x32c1a8cf2f078b8b, from name: libaot-System.Private.CoreLib
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.283_name, ; name: libaot-System.Private.CoreLib.dll.so
		ptr null; void* handle (0x0)
	}, ; 320
	%struct.DSOCacheEntry {
		i64 3659371656528649588, ; hash 0x32c8b3222885dd74, from name: Xamarin.Android.Glide.Annotations
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.201_name, ; name: libaot-Xamarin.Android.Glide.Annotations.dll.so
		ptr null; void* handle (0x0)
	}, ; 321
	%struct.DSOCacheEntry {
		i64 3672777413821373748, ; hash 0x32f8539941e69d34, from name: libaot-Xamarin.AndroidX.Collection.Ktx.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.216_name, ; name: libaot-Xamarin.AndroidX.Collection.Ktx.dll.so
		ptr null; void* handle (0x0)
	}, ; 322
	%struct.DSOCacheEntry {
		i64 3673950514234315711, ; hash 0x32fc7e86fb4cd3bf, from name: System.Runtime.Serialization.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.125_name, ; name: libaot-System.Runtime.Serialization.dll.so
		ptr null; void* handle (0x0)
	}, ; 323
	%struct.DSOCacheEntry {
		i64 3682807869886927031, ; hash 0x331bf63ecc9f90b7, from name: libaot-Xamarin.AndroidX.Navigation.Runtime.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.250_name, ; name: libaot-Xamarin.AndroidX.Navigation.Runtime.dll.so
		ptr null; void* handle (0x0)
	}, ; 324
	%struct.DSOCacheEntry {
		i64 3683086715764323178, ; hash 0x331cf3daaa17b36a, from name: aot-System.Net.NameResolution
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.77_name, ; name: libaot-System.Net.NameResolution.dll.so
		ptr null; void* handle (0x0)
	}, ; 325
	%struct.DSOCacheEntry {
		i64 3703096612151080118, ; hash 0x33640abfb837b4b6, from name: libaot-System.Net.Requests
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.82_name, ; name: libaot-System.Net.Requests.dll.so
		ptr null; void* handle (0x0)
	}, ; 326
	%struct.DSOCacheEntry {
		i64 3707216742628388692, ; hash 0x3372adfc59beef54, from name: aot-Xamarin.AndroidX.CardView.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.214_name, ; name: libaot-Xamarin.AndroidX.CardView.dll.so
		ptr null; void* handle (0x0)
	}, ; 327
	%struct.DSOCacheEntry {
		i64 3727469159507183293, ; hash 0x33baa1739ba646bd, from name: Xamarin.AndroidX.RecyclerView
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.254_name, ; name: libaot-Xamarin.AndroidX.RecyclerView.dll.so
		ptr null; void* handle (0x0)
	}, ; 328
	%struct.DSOCacheEntry {
		i64 3766788760912740873, ; hash 0x3446526bb6234209, from name: aot-System.Collections.Immutable.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.19_name, ; name: libaot-System.Collections.Immutable.dll.so
		ptr null; void* handle (0x0)
	}, ; 329
	%struct.DSOCacheEntry {
		i64 3778015232232666774, ; hash 0x346e34d6413e3696, from name: libaot-System.Security.Claims.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.128_name, ; name: libaot-System.Security.Claims.dll.so
		ptr null; void* handle (0x0)
	}, ; 330
	%struct.DSOCacheEntry {
		i64 3792734155220677803, ; hash 0x34a27f9e916b74ab, from name: libaot-System.Xml
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.173_name, ; name: libaot-System.Xml.dll.so
		ptr null; void* handle (0x0)
	}, ; 331
	%struct.DSOCacheEntry {
		i64 3810344663955173033, ; hash 0x34e11048a6da6ea9, from name: aot-Xamarin.AndroidX.VersionedParcelable
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.266_name, ; name: libaot-Xamarin.AndroidX.VersionedParcelable.dll.so
		ptr null; void* handle (0x0)
	}, ; 332
	%struct.DSOCacheEntry {
		i64 3814794088686254232, ; hash 0x34f0df0313677898, from name: libaot-Xamarin.AndroidX.DocumentFile.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.226_name, ; name: libaot-Xamarin.AndroidX.DocumentFile.dll.so
		ptr null; void* handle (0x0)
	}, ; 333
	%struct.DSOCacheEntry {
		i64 3818251145240562051, ; hash 0x34fd272fc74ac983, from name: aot-Xamarin.AndroidX.ProfileInstaller.ProfileInstaller.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.253_name, ; name: libaot-Xamarin.AndroidX.ProfileInstaller.ProfileInstaller.dll.so
		ptr null; void* handle (0x0)
	}, ; 334
	%struct.DSOCacheEntry {
		i64 3869649043256705283, ; hash 0x35b3c14d74bf0103, from name: System.Diagnostics.Tools
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.42_name, ; name: libaot-System.Diagnostics.Tools.dll.so
		ptr null; void* handle (0x0)
	}, ; 335
	%struct.DSOCacheEntry {
		i64 3919223565570527920, ; hash 0x3663e111652bd2b0, from name: System.Security.Cryptography.Encoding
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.132_name, ; name: libaot-System.Security.Cryptography.Encoding.dll.so
		ptr null; void* handle (0x0)
	}, ; 336
	%struct.DSOCacheEntry {
		i64 3926486732424186854, ; hash 0x367daee1356d8be6, from name: aot-Xamarin.AndroidX.DrawerLayout
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.227_name, ; name: libaot-Xamarin.AndroidX.DrawerLayout.dll.so
		ptr null; void* handle (0x0)
	}, ; 337
	%struct.DSOCacheEntry {
		i64 3933965368022646939, ; hash 0x369840a8bfadc09b, from name: System.Net.Requests
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.82_name, ; name: libaot-System.Net.Requests.dll.so
		ptr null; void* handle (0x0)
	}, ; 338
	%struct.DSOCacheEntry {
		i64 3934684319247098776, ; hash 0x369ace8aa005e398, from name: System.Security.SecureString.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.139_name, ; name: libaot-System.Security.SecureString.dll.so
		ptr null; void* handle (0x0)
	}, ; 339
	%struct.DSOCacheEntry {
		i64 3943677120668259164, ; hash 0x36bac1725e44535c, from name: aot-System.ObjectModel.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.94_name, ; name: libaot-System.ObjectModel.dll.so
		ptr null; void* handle (0x0)
	}, ; 340
	%struct.DSOCacheEntry {
		i64 3957090676662399508, ; hash 0x36ea69013e78f214, from name: libaot-System.Xml.Serialization.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.167_name, ; name: libaot-System.Xml.Serialization.dll.so
		ptr null; void* handle (0x0)
	}, ; 341
	%struct.DSOCacheEntry {
		i64 3966267475168208030, ; hash 0x370b03412596249e, from name: System.Memory
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.72_name, ; name: libaot-System.Memory.dll.so
		ptr null; void* handle (0x0)
	}, ; 342
	%struct.DSOCacheEntry {
		i64 3994531522905462024, ; hash 0x376f6d4192e15508, from name: aot-System.IO.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.67_name, ; name: libaot-System.IO.dll.so
		ptr null; void* handle (0x0)
	}, ; 343
	%struct.DSOCacheEntry {
		i64 4006972109285359177, ; hash 0x379b9fe74ed9fe49, from name: System.Xml.XmlDocument
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.171_name, ; name: libaot-System.Xml.XmlDocument.dll.so
		ptr null; void* handle (0x0)
	}, ; 344
	%struct.DSOCacheEntry {
		i64 4007760827643490102, ; hash 0x379e6d3d1c6a6f36, from name: libaot-Xamarin.KotlinX.Coroutines.Android
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.281_name, ; name: libaot-Xamarin.KotlinX.Coroutines.Android.dll.so
		ptr null; void* handle (0x0)
	}, ; 345
	%struct.DSOCacheEntry {
		i64 4009997192427317104, ; hash 0x37a65f335cf1a770, from name: System.Runtime.Serialization.Primitives
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.123_name, ; name: libaot-System.Runtime.Serialization.Primitives.dll.so
		ptr null; void* handle (0x0)
	}, ; 346
	%struct.DSOCacheEntry {
		i64 4017192615964119979, ; hash 0x37bfef6674dd13ab, from name: aot-System.Runtime.Serialization.Primitives.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.123_name, ; name: libaot-System.Runtime.Serialization.Primitives.dll.so
		ptr null; void* handle (0x0)
	}, ; 347
	%struct.DSOCacheEntry {
		i64 4028806192448886134, ; hash 0x37e931e2f1cf5576, from name: aot-System.Net.WebSockets.Client.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.89_name, ; name: libaot-System.Net.WebSockets.Client.dll.so
		ptr null; void* handle (0x0)
	}, ; 348
	%struct.DSOCacheEntry {
		i64 4054259778776684218, ; hash 0x38439fc9d52356ba, from name: libaot-Xamarin.AndroidX.Arch.Core.Runtime.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.212_name, ; name: libaot-Xamarin.AndroidX.Arch.Core.Runtime.dll.so
		ptr null; void* handle (0x0)
	}, ; 349
	%struct.DSOCacheEntry {
		i64 4074682551133317578, ; hash 0x388c2e3110c8a9ca, from name: libaot-System.Security.Cryptography.Csp.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.131_name, ; name: libaot-System.Security.Cryptography.Csp.dll.so
		ptr null; void* handle (0x0)
	}, ; 350
	%struct.DSOCacheEntry {
		i64 4078510067578159670, ; hash 0x3899c74c2ed9c236, from name: libaot-System.Reflection.Metadata
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.104_name, ; name: libaot-System.Reflection.Metadata.dll.so
		ptr null; void* handle (0x0)
	}, ; 351
	%struct.DSOCacheEntry {
		i64 4082358154728349959, ; hash 0x38a7731cca80a107, from name: libaot-System.Reflection.Emit.ILGeneration
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.100_name, ; name: libaot-System.Reflection.Emit.ILGeneration.dll.so
		ptr null; void* handle (0x0)
	}, ; 352
	%struct.DSOCacheEntry {
		i64 4093745415275440803, ; hash 0x38cfe7c3fe606aa3, from name: System.Diagnostics.Tracing.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.44_name, ; name: libaot-System.Diagnostics.Tracing.dll.so
		ptr null; void* handle (0x0)
	}, ; 353
	%struct.DSOCacheEntry {
		i64 4095418721340757718, ; hash 0x38d5d9a0ec0016d6, from name: aot-Microsoft.Maui.Essentials
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.197_name, ; name: libaot-Microsoft.Maui.Essentials.dll.so
		ptr null; void* handle (0x0)
	}, ; 354
	%struct.DSOCacheEntry {
		i64 4105760315252337620, ; hash 0x38fa9740e382ebd4, from name: libaot-System.Net.WebHeaderCollection.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.87_name, ; name: libaot-System.Net.WebHeaderCollection.dll.so
		ptr null; void* handle (0x0)
	}, ; 355
	%struct.DSOCacheEntry {
		i64 4115927144641244248, ; hash 0x391eb5ee51baac58, from name: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.238_name, ; name: libaot-Xamarin.AndroidX.Lifecycle.LiveData.Core.dll.so
		ptr null; void* handle (0x0)
	}, ; 356
	%struct.DSOCacheEntry {
		i64 4137384516858186512, ; hash 0x396af14c1a888b10, from name: System.Security.Cryptography.Encoding.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.132_name, ; name: libaot-System.Security.Cryptography.Encoding.dll.so
		ptr null; void* handle (0x0)
	}, ; 357
	%struct.DSOCacheEntry {
		i64 4154383907710350974, ; hash 0x39a7562737acb67e, from name: System.ComponentModel
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.28_name, ; name: libaot-System.ComponentModel.dll.so
		ptr null; void* handle (0x0)
	}, ; 358
	%struct.DSOCacheEntry {
		i64 4163621765406849486, ; hash 0x39c827ef9228f9ce, from name: libaot-MauiApp1
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.9_name, ; name: libaot-MauiApp1.dll.so
		ptr null; void* handle (0x0)
	}, ; 359
	%struct.DSOCacheEntry {
		i64 4167269041631776580, ; hash 0x39d51d1d3df1cf44, from name: System.Threading.ThreadPool
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.156_name, ; name: libaot-System.Threading.ThreadPool.dll.so
		ptr null; void* handle (0x0)
	}, ; 360
	%struct.DSOCacheEntry {
		i64 4186592800298148390, ; hash 0x3a19c3f868faa226, from name: libaot-Xamarin.AndroidX.VersionedParcelable.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.266_name, ; name: libaot-Xamarin.AndroidX.VersionedParcelable.dll.so
		ptr null; void* handle (0x0)
	}, ; 361
	%struct.DSOCacheEntry {
		i64 4187479170553454871, ; hash 0x3a1cea1e912fa117, from name: System.Linq.Expressions
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.68_name, ; name: libaot-System.Linq.Expressions.dll.so
		ptr null; void* handle (0x0)
	}, ; 362
	%struct.DSOCacheEntry {
		i64 4201423742386704971, ; hash 0x3a4e74a233da124b, from name: Xamarin.AndroidX.Core.Core.Ktx
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.222_name, ; name: libaot-Xamarin.AndroidX.Core.Core.Ktx.dll.so
		ptr null; void* handle (0x0)
	}, ; 363
	%struct.DSOCacheEntry {
		i64 4205801962323029395, ; hash 0x3a5e0299f7e7ad93, from name: System.ComponentModel.TypeConverter
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.27_name, ; name: libaot-System.ComponentModel.TypeConverter.dll.so
		ptr null; void* handle (0x0)
	}, ; 364
	%struct.DSOCacheEntry {
		i64 4220783285704279373, ; hash 0x3a933c09224f454d, from name: aot-System.Threading.Tasks.Extensions
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.152_name, ; name: libaot-System.Threading.Tasks.Extensions.dll.so
		ptr null; void* handle (0x0)
	}, ; 365
	%struct.DSOCacheEntry {
		i64 4221931987470636147, ; hash 0x3a9750c61b0bd473, from name: libaot-System.Threading.ThreadPool
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.156_name, ; name: libaot-System.Threading.ThreadPool.dll.so
		ptr null; void* handle (0x0)
	}, ; 366
	%struct.DSOCacheEntry {
		i64 4236410383307072060, ; hash 0x3acac0cc53cb623c, from name: aot-MauiApp1.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.9_name, ; name: libaot-MauiApp1.dll.so
		ptr null; void* handle (0x0)
	}, ; 367
	%struct.DSOCacheEntry {
		i64 4243001330476888824, ; hash 0x3ae22b3acc95b2f8, from name: aot-Xamarin.AndroidX.Lifecycle.ViewModel
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.243_name, ; name: libaot-Xamarin.AndroidX.Lifecycle.ViewModel.dll.so
		ptr null; void* handle (0x0)
	}, ; 368
	%struct.DSOCacheEntry {
		i64 4244996295783171795, ; hash 0x3ae941a3db0146d3, from name: aot-Xamarin.AndroidX.Navigation.Fragment.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.249_name, ; name: libaot-Xamarin.AndroidX.Navigation.Fragment.dll.so
		ptr null; void* handle (0x0)
	}, ; 369
	%struct.DSOCacheEntry {
		i64 4282138915307457788, ; hash 0x3b6d36a7ddc70cfc, from name: System.Reflection.Emit
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.102_name, ; name: libaot-System.Reflection.Emit.dll.so
		ptr null; void* handle (0x0)
	}, ; 370
	%struct.DSOCacheEntry {
		i64 4336779140400561657, ; hash 0x3c2f55a6a4e63df9, from name: libaot-System.IO.FileSystem.Primitives.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.59_name, ; name: libaot-System.IO.FileSystem.Primitives.dll.so
		ptr null; void* handle (0x0)
	}, ; 371
	%struct.DSOCacheEntry {
		i64 4348972226440319252, ; hash 0x3c5aa732b703d114, from name: aot-System.Xml.XmlSerializer.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.172_name, ; name: libaot-System.Xml.XmlSerializer.dll.so
		ptr null; void* handle (0x0)
	}, ; 372
	%struct.DSOCacheEntry {
		i64 4364864446463818253, ; hash 0x3c931d1688353a0d, from name: aot-System.Security.Cryptography.Encoding
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.132_name, ; name: libaot-System.Security.Cryptography.Encoding.dll.so
		ptr null; void* handle (0x0)
	}, ; 373
	%struct.DSOCacheEntry {
		i64 4411920538413871651, ; hash 0x3d3a4a5ab568b223, from name: aot-netstandard
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.177_name, ; name: libaot-netstandard.dll.so
		ptr null; void* handle (0x0)
	}, ; 374
	%struct.DSOCacheEntry {
		i64 4425588670699136170, ; hash 0x3d6ad972bf03e4aa, from name: Xamarin.AndroidX.Collection.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.215_name, ; name: libaot-Xamarin.AndroidX.Collection.dll.so
		ptr null; void* handle (0x0)
	}, ; 375
	%struct.DSOCacheEntry {
		i64 4433889062591767415, ; hash 0x3d88569c5545a377, from name: aot-System.IO.Pipes.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.65_name, ; name: libaot-System.IO.Pipes.dll.so
		ptr null; void* handle (0x0)
	}, ; 376
	%struct.DSOCacheEntry {
		i64 4442845440040250147, ; hash 0x3da8286375902b23, from name: System.Security.Principal.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.138_name, ; name: libaot-System.Security.Principal.dll.so
		ptr null; void* handle (0x0)
	}, ; 377
	%struct.DSOCacheEntry {
		i64 4468445964959563603, ; hash 0x3e031bee27713f53, from name: Microsoft.Win32.Primitives.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.14_name, ; name: libaot-Microsoft.Win32.Primitives.dll.so
		ptr null; void* handle (0x0)
	}, ; 378
	%struct.DSOCacheEntry {
		i64 4472958691645351923, ; hash 0x3e13243b368467f3, from name: aot-mscorlib
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.176_name, ; name: libaot-mscorlib.dll.so
		ptr null; void* handle (0x0)
	}, ; 379
	%struct.DSOCacheEntry {
		i64 4480088684592380434, ; hash 0x3e2c78ec0f603a12, from name: aot-Newtonsoft.Json.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.199_name, ; name: libaot-Newtonsoft.Json.dll.so
		ptr null; void* handle (0x0)
	}, ; 380
	%struct.DSOCacheEntry {
		i64 4485509010103122468, ; hash 0x3e3fbaadf002ba24, from name: aot-System.Memory.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.72_name, ; name: libaot-System.Memory.dll.so
		ptr null; void* handle (0x0)
	}, ; 381
	%struct.DSOCacheEntry {
		i64 4511511353632409648, ; hash 0x3e9c1bac5166c830, from name: libaot-System.Runtime.CompilerServices.Unsafe.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.111_name, ; name: libaot-System.Runtime.CompilerServices.Unsafe.dll.so
		ptr null; void* handle (0x0)
	}, ; 382
	%struct.DSOCacheEntry {
		i64 4519937209358600751, ; hash 0x3eba0af1bae3ca2f, from name: aot-Xamarin.AndroidX.Loader
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.246_name, ; name: libaot-Xamarin.AndroidX.Loader.dll.so
		ptr null; void* handle (0x0)
	}, ; 383
	%struct.DSOCacheEntry {
		i64 4531878619915090591, ; hash 0x3ee477980939fa9f, from name: libaot-Xamarin.AndroidX.Fragment.Ktx.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.233_name, ; name: libaot-Xamarin.AndroidX.Fragment.Ktx.dll.so
		ptr null; void* handle (0x0)
	}, ; 384
	%struct.DSOCacheEntry {
		i64 4533637005954432954, ; hash 0x3eeab6d6307abfba, from name: System.Text.RegularExpressions.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.148_name, ; name: libaot-System.Text.RegularExpressions.dll.so
		ptr null; void* handle (0x0)
	}, ; 385
	%struct.DSOCacheEntry {
		i64 4537756794601834247, ; hash 0x3ef959c33b5b8707, from name: aot-Xamarin.AndroidX.Lifecycle.LiveData.Core.Ktx
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.239_name, ; name: libaot-Xamarin.AndroidX.Lifecycle.LiveData.Core.Ktx.dll.so
		ptr null; void* handle (0x0)
	}, ; 386
	%struct.DSOCacheEntry {
		i64 4543721488248912841, ; hash 0x3f0e8a9eb162bbc9, from name: libaot-System.Net.HttpListener
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.75_name, ; name: libaot-System.Net.HttpListener.dll.so
		ptr null; void* handle (0x0)
	}, ; 387
	%struct.DSOCacheEntry {
		i64 4553845421192707918, ; hash 0x3f328248843aff4e, from name: libaot-System.AppContext
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.16_name, ; name: libaot-System.AppContext.dll.so
		ptr null; void* handle (0x0)
	}, ; 388
	%struct.DSOCacheEntry {
		i64 4562889186705488620, ; hash 0x3f52a38a430d3aec, from name: libaot-System.Memory.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.72_name, ; name: libaot-System.Memory.dll.so
		ptr null; void* handle (0x0)
	}, ; 389
	%struct.DSOCacheEntry {
		i64 4585909008629987955, ; hash 0x3fa46bf237a77a73, from name: libaot-GoogleGson.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.183_name, ; name: libaot-GoogleGson.dll.so
		ptr null; void* handle (0x0)
	}, ; 390
	%struct.DSOCacheEntry {
		i64 4597275209471002803, ; hash 0x3fcccd72133a88b3, from name: aot-System.Reflection.Metadata.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.104_name, ; name: libaot-System.Reflection.Metadata.dll.so
		ptr null; void* handle (0x0)
	}, ; 391
	%struct.DSOCacheEntry {
		i64 4600564633383719664, ; hash 0x3fd87d28c30fd2f0, from name: aot-System.Net.NetworkInformation.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.78_name, ; name: libaot-System.Net.NetworkInformation.dll.so
		ptr null; void* handle (0x0)
	}, ; 392
	%struct.DSOCacheEntry {
		i64 4619841365973187374, ; hash 0x401cf93ed17cbb2e, from name: libaot-System.Private.Xml.Linq.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.97_name, ; name: libaot-System.Private.Xml.Linq.dll.so
		ptr null; void* handle (0x0)
	}, ; 393
	%struct.DSOCacheEntry {
		i64 4624036676708874426, ; hash 0x402be0dbb79c38ba, from name: aot-Mono.Android.Runtime.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.180_name, ; name: libaot-Mono.Android.Runtime.dll.so
		ptr null; void* handle (0x0)
	}, ; 394
	%struct.DSOCacheEntry {
		i64 4646967399724649078, ; hash 0x407d583ab7688a76, from name: aot-Xamarin.Android.Glide.Annotations
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.201_name, ; name: libaot-Xamarin.Android.Glide.Annotations.dll.so
		ptr null; void* handle (0x0)
	}, ; 395
	%struct.DSOCacheEntry {
		i64 4649840642642325182, ; hash 0x40878d6db6deaebe, from name: aot-System.Net.Http.Json
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.73_name, ; name: libaot-System.Net.Http.Json.dll.so
		ptr null; void* handle (0x0)
	}, ; 396
	%struct.DSOCacheEntry {
		i64 4651216096443836840, ; hash 0x408c7065821d29a8, from name: aot-System.Diagnostics.Process.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.39_name, ; name: libaot-System.Diagnostics.Process.dll.so
		ptr null; void* handle (0x0)
	}, ; 397
	%struct.DSOCacheEntry {
		i64 4672453897036726049, ; hash 0x40d7e4104a437f21, from name: System.IO.FileSystem.Watcher
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.60_name, ; name: libaot-System.IO.FileSystem.Watcher.dll.so
		ptr null; void* handle (0x0)
	}, ; 398
	%struct.DSOCacheEntry {
		i64 4675735443907349489, ; hash 0x40e38c9cf5cd0bf1, from name: libaot-System.IO.FileSystem
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.61_name, ; name: libaot-System.IO.FileSystem.dll.so
		ptr null; void* handle (0x0)
	}, ; 399
	%struct.DSOCacheEntry {
		i64 4676011426420077172, ; hash 0x40e4879e256fb274, from name: System.Drawing.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.46_name, ; name: libaot-System.Drawing.dll.so
		ptr null; void* handle (0x0)
	}, ; 400
	%struct.DSOCacheEntry {
		i64 4679026139925672438, ; hash 0x40ef3d7bd50971f6, from name: aot-GoogleGson
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.183_name, ; name: libaot-GoogleGson.dll.so
		ptr null; void* handle (0x0)
	}, ; 401
	%struct.DSOCacheEntry {
		i64 4704458384224729820, ; hash 0x414997f9a452badc, from name: libaot-System.Net.WebHeaderCollection
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.87_name, ; name: libaot-System.Net.WebHeaderCollection.dll.so
		ptr null; void* handle (0x0)
	}, ; 402
	%struct.DSOCacheEntry {
		i64 4716677666592453464, ; hash 0x417501590542f358, from name: System.Xml.XmlSerializer
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.172_name, ; name: libaot-System.Xml.XmlSerializer.dll.so
		ptr null; void* handle (0x0)
	}, ; 403
	%struct.DSOCacheEntry {
		i64 4728906805301616458, ; hash 0x41a073af41ee1f4a, from name: libaot-Xamarin.AndroidX.Transition
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.263_name, ; name: libaot-Xamarin.AndroidX.Transition.dll.so
		ptr null; void* handle (0x0)
	}, ; 404
	%struct.DSOCacheEntry {
		i64 4743821336939966868, ; hash 0x41d5705f4239b194, from name: System.ComponentModel.Annotations
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.23_name, ; name: libaot-System.ComponentModel.Annotations.dll.so
		ptr null; void* handle (0x0)
	}, ; 405
	%struct.DSOCacheEntry {
		i64 4746643953623332214, ; hash 0x41df7786eaf97576, from name: libaot-mscorlib
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.176_name, ; name: libaot-mscorlib.dll.so
		ptr null; void* handle (0x0)
	}, ; 406
	%struct.DSOCacheEntry {
		i64 4748725187834767676, ; hash 0x41e6dc6604d7693c, from name: libaot-System.Private.DataContractSerialization
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.95_name, ; name: libaot-System.Private.DataContractSerialization.dll.so
		ptr null; void* handle (0x0)
	}, ; 407
	%struct.DSOCacheEntry {
		i64 4749108355177656911, ; hash 0x41e838e31e34324f, from name: aot-Microsoft.Win32.Registry
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.15_name, ; name: libaot-Microsoft.Win32.Registry.dll.so
		ptr null; void* handle (0x0)
	}, ; 408
	%struct.DSOCacheEntry {
		i64 4764816346233252143, ; hash 0x42200738c935292f, from name: System.Xml.XmlDocument.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.171_name, ; name: libaot-System.Xml.XmlDocument.dll.so
		ptr null; void* handle (0x0)
	}, ; 409
	%struct.DSOCacheEntry {
		i64 4765831871471954487, ; hash 0x4223a2d62e522a37, from name: libaot-System.Security.AccessControl.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.127_name, ; name: libaot-System.Security.AccessControl.dll.so
		ptr null; void* handle (0x0)
	}, ; 410
	%struct.DSOCacheEntry {
		i64 4768057870557842753, ; hash 0x422b8b5efb1b0d41, from name: aot-Xamarin.AndroidX.Concurrent.Futures.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.217_name, ; name: libaot-Xamarin.AndroidX.Concurrent.Futures.dll.so
		ptr null; void* handle (0x0)
	}, ; 411
	%struct.DSOCacheEntry {
		i64 4776574393454415983, ; hash 0x4249cd1a7d13d06f, from name: libaot-Xamarin.AndroidX.LocalBroadcastManager.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.247_name, ; name: libaot-Xamarin.AndroidX.LocalBroadcastManager.dll.so
		ptr null; void* handle (0x0)
	}, ; 412
	%struct.DSOCacheEntry {
		i64 4778132833905139113, ; hash 0x424f567f2e8bdda9, from name: libaot-System.Runtime.InteropServices.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.117_name, ; name: libaot-System.Runtime.InteropServices.dll.so
		ptr null; void* handle (0x0)
	}, ; 413
	%struct.DSOCacheEntry {
		i64 4791705247387512029, ; hash 0x427f8e88f2e86cdd, from name: libaot-System.Resources.Reader.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.108_name, ; name: libaot-System.Resources.Reader.dll.so
		ptr null; void* handle (0x0)
	}, ; 414
	%struct.DSOCacheEntry {
		i64 4794310189461587505, ; hash 0x4288cfb749e4c631, from name: Xamarin.AndroidX.Activity
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.204_name, ; name: libaot-Xamarin.AndroidX.Activity.dll.so
		ptr null; void* handle (0x0)
	}, ; 415
	%struct.DSOCacheEntry {
		i64 4799618160137045028, ; hash 0x429bab49847b8424, from name: aot-System.Runtime.Serialization
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.125_name, ; name: libaot-System.Runtime.Serialization.dll.so
		ptr null; void* handle (0x0)
	}, ; 416
	%struct.DSOCacheEntry {
		i64 4809057822547766521, ; hash 0x42bd349c3145ecf9, from name: System.Drawing
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.46_name, ; name: libaot-System.Drawing.dll.so
		ptr null; void* handle (0x0)
	}, ; 417
	%struct.DSOCacheEntry {
		i64 4821796847100292949, ; hash 0x42ea76af7a82ef55, from name: System.Private.Xml.Linq.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.97_name, ; name: libaot-System.Private.Xml.Linq.dll.so
		ptr null; void* handle (0x0)
	}, ; 418
	%struct.DSOCacheEntry {
		i64 4823555214533265396, ; hash 0x42f0b5e94cbd07f4, from name: aot-Xamarin.AndroidX.Activity.Ktx
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.205_name, ; name: libaot-Xamarin.AndroidX.Activity.Ktx.dll.so
		ptr null; void* handle (0x0)
	}, ; 419
	%struct.DSOCacheEntry {
		i64 4826109218023906764, ; hash 0x42f9c8c3938d9dcc, from name: Xamarin.AndroidX.Lifecycle.Runtime.Ktx.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.242_name, ; name: libaot-Xamarin.AndroidX.Lifecycle.Runtime.Ktx.dll.so
		ptr null; void* handle (0x0)
	}, ; 420
	%struct.DSOCacheEntry {
		i64 4880739103642492700, ; hash 0x43bbde5b01f81f1c, from name: aot-System.Reflection.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.107_name, ; name: libaot-System.Reflection.dll.so
		ptr null; void* handle (0x0)
	}, ; 421
	%struct.DSOCacheEntry {
		i64 4904118099769380138, ; hash 0x440eed6db9514d2a, from name: Xamarin.KotlinX.Coroutines.Core.Jvm.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.282_name, ; name: libaot-Xamarin.KotlinX.Coroutines.Core.Jvm.dll.so
		ptr null; void* handle (0x0)
	}, ; 422
	%struct.DSOCacheEntry {
		i64 4905845688753735370, ; hash 0x441510a9610c46ca, from name: libaot-Microsoft.CSharp
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.11_name, ; name: libaot-Microsoft.CSharp.dll.so
		ptr null; void* handle (0x0)
	}, ; 423
	%struct.DSOCacheEntry {
		i64 4931815757766637469, ; hash 0x4471544d435ab79d, from name: System.IO.FileSystem.Watcher.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.60_name, ; name: libaot-System.IO.FileSystem.Watcher.dll.so
		ptr null; void* handle (0x0)
	}, ; 424
	%struct.DSOCacheEntry {
		i64 4936802805617500442, ; hash 0x44830bfed2fba11a, from name: System.Security.Cryptography.Algorithms.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.129_name, ; name: libaot-System.Security.Cryptography.Algorithms.dll.so
		ptr null; void* handle (0x0)
	}, ; 425
	%struct.DSOCacheEntry {
		i64 4942169814716192606, ; hash 0x44961d4301d1175e, from name: aot-Xamarin.AndroidX.RecyclerView.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.254_name, ; name: libaot-Xamarin.AndroidX.RecyclerView.dll.so
		ptr null; void* handle (0x0)
	}, ; 426
	%struct.DSOCacheEntry {
		i64 4949216247540332023, ; hash 0x44af25f47f3bb5f7, from name: libaot-System.Diagnostics.StackTrace.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.40_name, ; name: libaot-System.Diagnostics.StackTrace.dll.so
		ptr null; void* handle (0x0)
	}, ; 427
	%struct.DSOCacheEntry {
		i64 4952410279526942859, ; hash 0x44ba7ee90532488b, from name: aot-System.Diagnostics.StackTrace.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.40_name, ; name: libaot-System.Diagnostics.StackTrace.dll.so
		ptr null; void* handle (0x0)
	}, ; 428
	%struct.DSOCacheEntry {
		i64 4978201050208161612, ; hash 0x45161f7ac2224f4c, from name: aot-Xamarin.AndroidX.Interpolator.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.234_name, ; name: libaot-Xamarin.AndroidX.Interpolator.dll.so
		ptr null; void* handle (0x0)
	}, ; 429
	%struct.DSOCacheEntry {
		i64 5029111617119435182, ; hash 0x45cafe5ed231b9ae, from name: System.Net.WebClient.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.86_name, ; name: libaot-System.Net.WebClient.dll.so
		ptr null; void* handle (0x0)
	}, ; 430
	%struct.DSOCacheEntry {
		i64 5045169923072412733, ; hash 0x46040b5088374c3d, from name: aot-Xamarin.Jetbrains.Annotations
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.276_name, ; name: libaot-Xamarin.Jetbrains.Annotations.dll.so
		ptr null; void* handle (0x0)
	}, ; 431
	%struct.DSOCacheEntry {
		i64 5051835836669326118, ; hash 0x461bb9ed7c437326, from name: libaot-Xamarin.AndroidX.Interpolator.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.234_name, ; name: libaot-Xamarin.AndroidX.Interpolator.dll.so
		ptr null; void* handle (0x0)
	}, ; 432
	%struct.DSOCacheEntry {
		i64 5058818309265384776, ; hash 0x4634887313016548, from name: Xamarin.Kotlin.StdLib.Common.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.278_name, ; name: libaot-Xamarin.Kotlin.StdLib.Common.dll.so
		ptr null; void* handle (0x0)
	}, ; 433
	%struct.DSOCacheEntry {
		i64 5072736578407353757, ; hash 0x4665fb0aa319cd9d, from name: aot-Xamarin.Android.Glide.GifDecoder.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.203_name, ; name: libaot-Xamarin.Android.Glide.GifDecoder.dll.so
		ptr null; void* handle (0x0)
	}, ; 434
	%struct.DSOCacheEntry {
		i64 5074164375705998164, ; hash 0x466b0d9d99e5d354, from name: aot-Microsoft.Extensions.DependencyInjection
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.186_name, ; name: libaot-Microsoft.Extensions.DependencyInjection.dll.so
		ptr null; void* handle (0x0)
	}, ; 435
	%struct.DSOCacheEntry {
		i64 5084339791899622993, ; hash 0x468f341a4d8f7e51, from name: aot-System.Xml
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.173_name, ; name: libaot-System.Xml.dll.so
		ptr null; void* handle (0x0)
	}, ; 436
	%struct.DSOCacheEntry {
		i64 5092863674775640475, ; hash 0x46ad7c87707e199b, from name: CommunityToolkit.Mvvm.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.182_name, ; name: libaot-CommunityToolkit.Mvvm.dll.so
		ptr null; void* handle (0x0)
	}, ; 437
	%struct.DSOCacheEntry {
		i64 5099468265966638712, ; hash 0x46c4f35ea8519678, from name: System.Resources.ResourceManager
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.109_name, ; name: libaot-System.Resources.ResourceManager.dll.so
		ptr null; void* handle (0x0)
	}, ; 438
	%struct.DSOCacheEntry {
		i64 5103417709280584325, ; hash 0x46d2fb5e161b6285, from name: System.Collections.Specialized
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.21_name, ; name: libaot-System.Collections.Specialized.dll.so
		ptr null; void* handle (0x0)
	}, ; 439
	%struct.DSOCacheEntry {
		i64 5109692736403029004, ; hash 0x46e94678b0b23c0c, from name: libaot-System.Text.Encodings.Web
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.146_name, ; name: libaot-System.Text.Encodings.Web.dll.so
		ptr null; void* handle (0x0)
	}, ; 440
	%struct.DSOCacheEntry {
		i64 5153342474927477147, ; hash 0x478459ad67fc119b, from name: aot-System.Security.Cryptography.Cng
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.130_name, ; name: libaot-System.Security.Cryptography.Cng.dll.so
		ptr null; void* handle (0x0)
	}, ; 441
	%struct.DSOCacheEntry {
		i64 5161677616539729366, ; hash 0x47a1f671caef7dd6, from name: aot-Xamarin.AndroidX.Window
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.269_name, ; name: libaot-Xamarin.AndroidX.Window.dll.so
		ptr null; void* handle (0x0)
	}, ; 442
	%struct.DSOCacheEntry {
		i64 5166157643424585078, ; hash 0x47b1e10155fdd576, from name: aot-Xamarin.AndroidX.Window.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.269_name, ; name: libaot-Xamarin.AndroidX.Window.dll.so
		ptr null; void* handle (0x0)
	}, ; 443
	%struct.DSOCacheEntry {
		i64 5185404252742227183, ; hash 0x47f641b1c58014ef, from name: libaot-System.ComponentModel.Annotations
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.23_name, ; name: libaot-System.ComponentModel.Annotations.dll.so
		ptr null; void* handle (0x0)
	}, ; 444
	%struct.DSOCacheEntry {
		i64 5205316157927637098, ; hash 0x483cff7778e0c06a, from name: Xamarin.AndroidX.LocalBroadcastManager
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.247_name, ; name: libaot-Xamarin.AndroidX.LocalBroadcastManager.dll.so
		ptr null; void* handle (0x0)
	}, ; 445
	%struct.DSOCacheEntry {
		i64 5232730255288553603, ; hash 0x489e647167e9d083, from name: aot-System.ComponentModel.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.28_name, ; name: libaot-System.ComponentModel.dll.so
		ptr null; void* handle (0x0)
	}, ; 446
	%struct.DSOCacheEntry {
		i64 5245831624004909525, ; hash 0x48ccf0118452b9d5, from name: libaot-System.Runtime.Serialization.Primitives
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.123_name, ; name: libaot-System.Runtime.Serialization.Primitives.dll.so
		ptr null; void* handle (0x0)
	}, ; 447
	%struct.DSOCacheEntry {
		i64 5255546469364035812, ; hash 0x48ef73ab370070e4, from name: aot-Xamarin.AndroidX.Activity.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.204_name, ; name: libaot-Xamarin.AndroidX.Activity.dll.so
		ptr null; void* handle (0x0)
	}, ; 448
	%struct.DSOCacheEntry {
		i64 5266401548478623734, ; hash 0x4916044e45a2aff6, from name: aot-Xamarin.Google.Android.Material
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.271_name, ; name: libaot-Xamarin.Google.Android.Material.dll.so
		ptr null; void* handle (0x0)
	}, ; 449
	%struct.DSOCacheEntry {
		i64 5266659643402539735, ; hash 0x4916ef0aade4d2d7, from name: Microsoft.Maui.Essentials.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.197_name, ; name: libaot-Microsoft.Maui.Essentials.dll.so
		ptr null; void* handle (0x0)
	}, ; 450
	%struct.DSOCacheEntry {
		i64 5267519814036117019, ; hash 0x4919fd5cc2f4561b, from name: System.Reflection.Emit.Lightweight.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.101_name, ; name: libaot-System.Reflection.Emit.Lightweight.dll.so
		ptr null; void* handle (0x0)
	}, ; 451
	%struct.DSOCacheEntry {
		i64 5290786973231294105, ; hash 0x496ca6b869b72699, from name: System.Runtime.Loader
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.119_name, ; name: libaot-System.Runtime.Loader.dll.so
		ptr null; void* handle (0x0)
	}, ; 452
	%struct.DSOCacheEntry {
		i64 5297487996514449678, ; hash 0x49847543fa23b90e, from name: libaot-System.ComponentModel.DataAnnotations
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.24_name, ; name: libaot-System.ComponentModel.DataAnnotations.dll.so
		ptr null; void* handle (0x0)
	}, ; 453
	%struct.DSOCacheEntry {
		i64 5308663384316065149, ; hash 0x49ac2938b648357d, from name: aot-System.Net.ServicePoint.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.84_name, ; name: libaot-System.Net.ServicePoint.dll.so
		ptr null; void* handle (0x0)
	}, ; 454
	%struct.DSOCacheEntry {
		i64 5334205502128732672, ; hash 0x4a06e7a471513a00, from name: aot-System.Runtime
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.126_name, ; name: libaot-System.Runtime.dll.so
		ptr null; void* handle (0x0)
	}, ; 455
	%struct.DSOCacheEntry {
		i64 5366974786996218887, ; hash 0x4a7b532221632c07, from name: libaot-Microsoft.Maui.Essentials
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.197_name, ; name: libaot-Microsoft.Maui.Essentials.dll.so
		ptr null; void* handle (0x0)
	}, ; 456
	%struct.DSOCacheEntry {
		i64 5376510917114486089, ; hash 0x4a9d3431719e5d49, from name: Xamarin.AndroidX.VectorDrawable.Animated
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.265_name, ; name: libaot-Xamarin.AndroidX.VectorDrawable.Animated.dll.so
		ptr null; void* handle (0x0)
	}, ; 457
	%struct.DSOCacheEntry {
		i64 5377012889353650475, ; hash 0x4a9efcbbf69f012b, from name: Xamarin.Android.Glide.Annotations.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.201_name, ; name: libaot-Xamarin.Android.Glide.Annotations.dll.so
		ptr null; void* handle (0x0)
	}, ; 458
	%struct.DSOCacheEntry {
		i64 5402637973567130259, ; hash 0x4afa069cd0814a93, from name: aot-Xamarin.AndroidX.Arch.Core.Common.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.211_name, ; name: libaot-Xamarin.AndroidX.Arch.Core.Common.dll.so
		ptr null; void* handle (0x0)
	}, ; 459
	%struct.DSOCacheEntry {
		i64 5408338804355907810, ; hash 0x4b0e477cea9840e2, from name: Xamarin.AndroidX.Transition
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.263_name, ; name: libaot-Xamarin.AndroidX.Transition.dll.so
		ptr null; void* handle (0x0)
	}, ; 460
	%struct.DSOCacheEntry {
		i64 5421210907422141054, ; hash 0x4b3c0298f55eaa7e, from name: aot-WindowsBase.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.175_name, ; name: libaot-WindowsBase.dll.so
		ptr null; void* handle (0x0)
	}, ; 461
	%struct.DSOCacheEntry {
		i64 5423376490970181369, ; hash 0x4b43b42f2b7b6ef9, from name: System.Runtime.InteropServices.RuntimeInformation
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.116_name, ; name: libaot-System.Runtime.InteropServices.RuntimeInformation.dll.so
		ptr null; void* handle (0x0)
	}, ; 462
	%struct.DSOCacheEntry {
		i64 5428475970428150530, ; hash 0x4b55d222411d2302, from name: System.Buffers.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.17_name, ; name: libaot-System.Buffers.dll.so
		ptr null; void* handle (0x0)
	}, ; 463
	%struct.DSOCacheEntry {
		i64 5438005991099355802, ; hash 0x4b77ada319ec529a, from name: aot-System.Web.HttpUtility.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.162_name, ; name: libaot-System.Web.HttpUtility.dll.so
		ptr null; void* handle (0x0)
	}, ; 464
	%struct.DSOCacheEntry {
		i64 5440320908473006344, ; hash 0x4b7fe70acda9f908, from name: Microsoft.VisualBasic.Core
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.12_name, ; name: libaot-Microsoft.VisualBasic.Core.dll.so
		ptr null; void* handle (0x0)
	}, ; 465
	%struct.DSOCacheEntry {
		i64 5440481460344582099, ; hash 0x4b80791032efefd3, from name: libaot-System.Numerics.Vectors.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.92_name, ; name: libaot-System.Numerics.Vectors.dll.so
		ptr null; void* handle (0x0)
	}, ; 466
	%struct.DSOCacheEntry {
		i64 5446034149219586269, ; hash 0x4b94333452e150dd, from name: System.Diagnostics.Debug
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.36_name, ; name: libaot-System.Diagnostics.Debug.dll.so
		ptr null; void* handle (0x0)
	}, ; 467
	%struct.DSOCacheEntry {
		i64 5453355464743436949, ; hash 0x4bae35e6edf7c295, from name: libaot-System.Reflection.DispatchProxy
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.99_name, ; name: libaot-System.Reflection.DispatchProxy.dll.so
		ptr null; void* handle (0x0)
	}, ; 468
	%struct.DSOCacheEntry {
		i64 5457765010617926378, ; hash 0x4bbde05c557002ea, from name: System.Xml.Serialization
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.167_name, ; name: libaot-System.Xml.Serialization.dll.so
		ptr null; void* handle (0x0)
	}, ; 469
	%struct.DSOCacheEntry {
		i64 5479418050698653789, ; hash 0x4c0acdaf97c1b05d, from name: libaot-System.ComponentModel.Primitives
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.26_name, ; name: libaot-System.ComponentModel.Primitives.dll.so
		ptr null; void* handle (0x0)
	}, ; 470
	%struct.DSOCacheEntry {
		i64 5510000569032476011, ; hash 0x4c7774530561856b, from name: aot-System.Reflection.Emit.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.102_name, ; name: libaot-System.Reflection.Emit.dll.so
		ptr null; void* handle (0x0)
	}, ; 471
	%struct.DSOCacheEntry {
		i64 5527944986868979796, ; hash 0x4cb734ad603a1854, from name: libaot-Xamarin.Android.Glide.Annotations
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.201_name, ; name: libaot-Xamarin.Android.Glide.Annotations.dll.so
		ptr null; void* handle (0x0)
	}, ; 472
	%struct.DSOCacheEntry {
		i64 5539438695474257105, ; hash 0x4ce00a24f2cbdcd1, from name: libaot-System.Xml.XmlDocument.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.171_name, ; name: libaot-System.Xml.XmlDocument.dll.so
		ptr null; void* handle (0x0)
	}, ; 473
	%struct.DSOCacheEntry {
		i64 5550740384747212943, ; hash 0x4d0830f88945d08f, from name: aot-Xamarin.Android.Glide.DiskLruCache
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.202_name, ; name: libaot-Xamarin.Android.Glide.DiskLruCache.dll.so
		ptr null; void* handle (0x0)
	}, ; 474
	%struct.DSOCacheEntry {
		i64 5554419957827635904, ; hash 0x4d154385e7a80ac0, from name: libaot-System.Net.Sockets
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.85_name, ; name: libaot-System.Net.Sockets.dll.so
		ptr null; void* handle (0x0)
	}, ; 475
	%struct.DSOCacheEntry {
		i64 5560885507890286183, ; hash 0x4d2c3be8166b0e67, from name: Xamarin.AndroidX.ResourceInspection.Annotation.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.255_name, ; name: libaot-Xamarin.AndroidX.ResourceInspection.Annotation.dll.so
		ptr null; void* handle (0x0)
	}, ; 476
	%struct.DSOCacheEntry {
		i64 5570799893513421663, ; hash 0x4d4f74fcdfa6c35f, from name: System.IO.Compression.Brotli
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.53_name, ; name: libaot-System.IO.Compression.Brotli.dll.so
		ptr null; void* handle (0x0)
	}, ; 477
	%struct.DSOCacheEntry {
		i64 5574231584441077149, ; hash 0x4d5ba617ae5f8d9d, from name: Xamarin.AndroidX.Annotation.Jvm
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.208_name, ; name: libaot-Xamarin.AndroidX.Annotation.Jvm.dll.so
		ptr null; void* handle (0x0)
	}, ; 478
	%struct.DSOCacheEntry {
		i64 5591092099223752348, ; hash 0x4d978ca430b98e9c, from name: libaot-WindowsBase
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.175_name, ; name: libaot-WindowsBase.dll.so
		ptr null; void* handle (0x0)
	}, ; 479
	%struct.DSOCacheEntry {
		i64 5591791169662171124, ; hash 0x4d9a087135e137f4, from name: System.Linq.Parallel
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.69_name, ; name: libaot-System.Linq.Parallel.dll.so
		ptr null; void* handle (0x0)
	}, ; 480
	%struct.DSOCacheEntry {
		i64 5594204626678690822, ; hash 0x4da29b77f607b406, from name: aot-Xamarin.AndroidX.CustomView.PoolingContainer
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.225_name, ; name: libaot-Xamarin.AndroidX.CustomView.PoolingContainer.dll.so
		ptr null; void* handle (0x0)
	}, ; 481
	%struct.DSOCacheEntry {
		i64 5624338208435324370, ; hash 0x4e0da9cd3271c5d2, from name: libaot-Xamarin.AndroidX.ConstraintLayout.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.218_name, ; name: libaot-Xamarin.AndroidX.ConstraintLayout.dll.so
		ptr null; void* handle (0x0)
	}, ; 482
	%struct.DSOCacheEntry {
		i64 5641232295354610839, ; hash 0x4e49aee25412b497, from name: aot-System.Net.Mail
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.76_name, ; name: libaot-System.Net.Mail.dll.so
		ptr null; void* handle (0x0)
	}, ; 483
	%struct.DSOCacheEntry {
		i64 5642869431399447073, ; hash 0x4e4f7fd9c4797a21, from name: libmono-component-hot_reload.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.4_name, ; name: libmono-component-hot_reload.so
		ptr null; void* handle (0x0)
	}, ; 484
	%struct.DSOCacheEntry {
		i64 5647286806239336998, ; hash 0x4e5f316dfea55a26, from name: Xamarin.AndroidX.Window.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.269_name, ; name: libaot-Xamarin.AndroidX.Window.dll.so
		ptr null; void* handle (0x0)
	}, ; 485
	%struct.DSOCacheEntry {
		i64 5661857649196835739, ; hash 0x4e92f588bd34a39b, from name: aot-Xamarin.AndroidX.Security.SecurityCrypto
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.258_name, ; name: libaot-Xamarin.AndroidX.Security.SecurityCrypto.dll.so
		ptr null; void* handle (0x0)
	}, ; 486
	%struct.DSOCacheEntry {
		i64 5678506072386041620, ; hash 0x4ece1b2fd377f714, from name: aot-System.Buffers
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.17_name, ; name: libaot-System.Buffers.dll.so
		ptr null; void* handle (0x0)
	}, ; 487
	%struct.DSOCacheEntry {
		i64 5687866641190756057, ; hash 0x4eef5c9315f81ed9, from name: libaot-System.Net.HttpListener.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.75_name, ; name: libaot-System.Net.HttpListener.dll.so
		ptr null; void* handle (0x0)
	}, ; 488
	%struct.DSOCacheEntry {
		i64 5718066319469868703, ; hash 0x4f5aa7059e20769f, from name: System.Private.DataContractSerialization.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.95_name, ; name: libaot-System.Private.DataContractSerialization.dll.so
		ptr null; void* handle (0x0)
	}, ; 489
	%struct.DSOCacheEntry {
		i64 5724799082821825042, ; hash 0x4f72926f3e13b212, from name: Xamarin.AndroidX.ExifInterface
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.231_name, ; name: libaot-Xamarin.AndroidX.ExifInterface.dll.so
		ptr null; void* handle (0x0)
	}, ; 490
	%struct.DSOCacheEntry {
		i64 5729643961183640500, ; hash 0x4f83c8d363d01bb4, from name: aot-Xamarin.AndroidX.Fragment.Ktx
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.233_name, ; name: libaot-Xamarin.AndroidX.Fragment.Ktx.dll.so
		ptr null; void* handle (0x0)
	}, ; 491
	%struct.DSOCacheEntry {
		i64 5740227960783468797, ; hash 0x4fa962ead44378fd, from name: System.Net.WebProxy.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.88_name, ; name: libaot-System.Net.WebProxy.dll.so
		ptr null; void* handle (0x0)
	}, ; 492
	%struct.DSOCacheEntry {
		i64 5745729879822869618, ; hash 0x4fbceee22e30a472, from name: libaot-System.IO.Compression.ZipFile.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.55_name, ; name: libaot-System.IO.Compression.ZipFile.dll.so
		ptr null; void* handle (0x0)
	}, ; 493
	%struct.DSOCacheEntry {
		i64 5753633696766002394, ; hash 0x4fd9035cf77484da, from name: libaot-System.Drawing
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.46_name, ; name: libaot-System.Drawing.dll.so
		ptr null; void* handle (0x0)
	}, ; 494
	%struct.DSOCacheEntry {
		i64 5759268217942071081, ; hash 0x4fed07ee28a25729, from name: aot-Xamarin.AndroidX.AppCompat.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.209_name, ; name: libaot-Xamarin.AndroidX.AppCompat.dll.so
		ptr null; void* handle (0x0)
	}, ; 495
	%struct.DSOCacheEntry {
		i64 5783556987928984683, ; hash 0x504352701bbc3c6b, from name: Microsoft.VisualBasic
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.13_name, ; name: libaot-Microsoft.VisualBasic.dll.so
		ptr null; void* handle (0x0)
	}, ; 496
	%struct.DSOCacheEntry {
		i64 5806416082395050786, ; hash 0x509488a9c945b322, from name: aot-System.Text.Encoding.CodePages
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.143_name, ; name: libaot-System.Text.Encoding.CodePages.dll.so
		ptr null; void* handle (0x0)
	}, ; 497
	%struct.DSOCacheEntry {
		i64 5821506633478762649, ; hash 0x50ca25708214f099, from name: libaot-System.Net.Ping.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.79_name, ; name: libaot-System.Net.Ping.dll.so
		ptr null; void* handle (0x0)
	}, ; 498
	%struct.DSOCacheEntry {
		i64 5862872057478554108, ; hash 0x515d1b12cd92a1fc, from name: aot-Xamarin.AndroidX.Core.Core.Ktx.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.222_name, ; name: libaot-Xamarin.AndroidX.Core.Core.Ktx.dll.so
		ptr null; void* handle (0x0)
	}, ; 499
	%struct.DSOCacheEntry {
		i64 5900900230463535802, ; hash 0x51e4357ecbccbaba, from name: System.Security.Cryptography.Native.Android.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.2_name, ; name: libSystem.Security.Cryptography.Native.Android.so
		ptr null; void* handle (0x0)
	}, ; 500
	%struct.DSOCacheEntry {
		i64 5923381430294887701, ; hash 0x5234140705df3d15, from name: libaot-Xamarin.AndroidX.Lifecycle.Process.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.240_name, ; name: libaot-Xamarin.AndroidX.Lifecycle.Process.dll.so
		ptr null; void* handle (0x0)
	}, ; 501
	%struct.DSOCacheEntry {
		i64 5947628580774689620, ; hash 0x528a38aead093b54, from name: System.Runtime.Intrinsics.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.118_name, ; name: libaot-System.Runtime.Intrinsics.dll.so
		ptr null; void* handle (0x0)
	}, ; 502
	%struct.DSOCacheEntry {
		i64 5948985717485083712, ; hash 0x528f0afdb0921c40, from name: libSystem.Native.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.1_name, ; name: libSystem.Native.so
		ptr null; void* handle (0x0)
	}, ; 503
	%struct.DSOCacheEntry {
		i64 5950425681055936976, ; hash 0x529428a155b371d0, from name: libaot-Microsoft.Win32.Registry.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.15_name, ; name: libaot-Microsoft.Win32.Registry.dll.so
		ptr null; void* handle (0x0)
	}, ; 504
	%struct.DSOCacheEntry {
		i64 5955778668114550946, ; hash 0x52a72d24c1d120a2, from name: aot-Xamarin.AndroidX.Lifecycle.LiveData.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.237_name, ; name: libaot-Xamarin.AndroidX.Lifecycle.LiveData.dll.so
		ptr null; void* handle (0x0)
	}, ; 505
	%struct.DSOCacheEntry {
		i64 5958220530006169673, ; hash 0x52afda0108751849, from name: System.Net.Requests.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.82_name, ; name: libaot-System.Net.Requests.dll.so
		ptr null; void* handle (0x0)
	}, ; 506
	%struct.DSOCacheEntry {
		i64 5962886101144695184, ; hash 0x52c06d50f6d7f190, from name: libaot-Mono.Android.Export
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.179_name, ; name: libaot-Mono.Android.Export.dll.so
		ptr null; void* handle (0x0)
	}, ; 507
	%struct.DSOCacheEntry {
		i64 5978550740345035225, ; hash 0x52f81438fdea19d9, from name: System.Xml.XPath.XDocument.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.169_name, ; name: libaot-System.Xml.XPath.XDocument.dll.so
		ptr null; void* handle (0x0)
	}, ; 508
	%struct.DSOCacheEntry {
		i64 5979151488806146654, ; hash 0x52fa3699a489d25e, from name: System.Formats.Asn1
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.48_name, ; name: libaot-System.Formats.Asn1.dll.so
		ptr null; void* handle (0x0)
	}, ; 509
	%struct.DSOCacheEntry {
		i64 5983473201068900625, ; hash 0x5309912cb0c80111, from name: aot-System.Text.Encoding.CodePages.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.143_name, ; name: libaot-System.Text.Encoding.CodePages.dll.so
		ptr null; void* handle (0x0)
	}, ; 510
	%struct.DSOCacheEntry {
		i64 5984759512290286505, ; hash 0x530e23115c33dba9, from name: System.Security.Cryptography.Primitives
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.134_name, ; name: libaot-System.Security.Cryptography.Primitives.dll.so
		ptr null; void* handle (0x0)
	}, ; 511
	%struct.DSOCacheEntry {
		i64 6019580974212452262, ; hash 0x5389d900c0a20fa6, from name: libaot-System.Diagnostics.Debug.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.36_name, ; name: libaot-System.Diagnostics.Debug.dll.so
		ptr null; void* handle (0x0)
	}, ; 512
	%struct.DSOCacheEntry {
		i64 6022984298749388524, ; hash 0x5395f04efeb666ec, from name: System.Net.Mail.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.76_name, ; name: libaot-System.Net.Mail.dll.so
		ptr null; void* handle (0x0)
	}, ; 513
	%struct.DSOCacheEntry {
		i64 6027563593999215487, ; hash 0x53a6352741666b7f, from name: libaot-System.Reflection.Primitives.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.105_name, ; name: libaot-System.Reflection.Primitives.dll.so
		ptr null; void* handle (0x0)
	}, ; 514
	%struct.DSOCacheEntry {
		i64 6037857494324318918, ; hash 0x53cac766b1a192c6, from name: System.Threading.Tasks.Parallel.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.153_name, ; name: libaot-System.Threading.Tasks.Parallel.dll.so
		ptr null; void* handle (0x0)
	}, ; 515
	%struct.DSOCacheEntry {
		i64 6037906442115797419, ; hash 0x53caf3eb3d5ad1ab, from name: aot-System.IO.FileSystem.AccessControl
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.57_name, ; name: libaot-System.IO.FileSystem.AccessControl.dll.so
		ptr null; void* handle (0x0)
	}, ; 516
	%struct.DSOCacheEntry {
		i64 6069444521208265984, ; hash 0x543affa27e8f3d00, from name: aot-Microsoft.Extensions.DependencyInjection.Abstractions
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.187_name, ; name: libaot-Microsoft.Extensions.DependencyInjection.Abstractions.dll.so
		ptr null; void* handle (0x0)
	}, ; 517
	%struct.DSOCacheEntry {
		i64 6073268355799849528, ; hash 0x544895645d121a38, from name: libmono-component-debugger
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.3_name, ; name: libmono-component-debugger.so
		ptr null; void* handle (0x0)
	}, ; 518
	%struct.DSOCacheEntry {
		i64 6076224371281935956, ; hash 0x545315df59d4be54, from name: System.Xml.XDocument.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.168_name, ; name: libaot-System.Xml.XDocument.dll.so
		ptr null; void* handle (0x0)
	}, ; 519
	%struct.DSOCacheEntry {
		i64 6102788177522843259, ; hash 0x54b1758374b3de7b, from name: Xamarin.AndroidX.SavedState.SavedState.Ktx
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.257_name, ; name: libaot-Xamarin.AndroidX.SavedState.SavedState.Ktx.dll.so
		ptr null; void* handle (0x0)
	}, ; 520
	%struct.DSOCacheEntry {
		i64 6120656991460866797, ; hash 0x54f0f11ae8093aed, from name: aot-System.Runtime.Serialization.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.125_name, ; name: libaot-System.Runtime.Serialization.dll.so
		ptr null; void* handle (0x0)
	}, ; 521
	%struct.DSOCacheEntry {
		i64 6121255420287301087, ; hash 0x54f3115f79a8b5df, from name: Microsoft.Win32.Registry.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.15_name, ; name: libaot-Microsoft.Win32.Registry.dll.so
		ptr null; void* handle (0x0)
	}, ; 522
	%struct.DSOCacheEntry {
		i64 6149810009767629454, ; hash 0x5558839eec57528e, from name: aot-System.Runtime.CompilerServices.VisualC.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.112_name, ; name: libaot-System.Runtime.CompilerServices.VisualC.dll.so
		ptr null; void* handle (0x0)
	}, ; 523
	%struct.DSOCacheEntry {
		i64 6153230300087301221, ; hash 0x5564aa5b51dfb465, from name: aot-System.ServiceProcess
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.142_name, ; name: libaot-System.ServiceProcess.dll.so
		ptr null; void* handle (0x0)
	}, ; 524
	%struct.DSOCacheEntry {
		i64 6153263910407647837, ; hash 0x5564c8ecd514325d, from name: aot-System.Security.Cryptography.Algorithms.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.129_name, ; name: libaot-System.Security.Cryptography.Algorithms.dll.so
		ptr null; void* handle (0x0)
	}, ; 525
	%struct.DSOCacheEntry {
		i64 6175880366989510749, ; hash 0x55b52278f9b8085d, from name: libaot-Xamarin.AndroidX.ConstraintLayout.Core.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.219_name, ; name: libaot-Xamarin.AndroidX.ConstraintLayout.Core.dll.so
		ptr null; void* handle (0x0)
	}, ; 526
	%struct.DSOCacheEntry {
		i64 6178523303425703083, ; hash 0x55be863591297cab, from name: Microsoft.VisualBasic.Core.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.12_name, ; name: libaot-Microsoft.VisualBasic.Core.dll.so
		ptr null; void* handle (0x0)
	}, ; 527
	%struct.DSOCacheEntry {
		i64 6198196371300036003, ; hash 0x56046ac29f742da3, from name: libaot-Microsoft.Extensions.Configuration.Abstractions
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.185_name, ; name: libaot-Microsoft.Extensions.Configuration.Abstractions.dll.so
		ptr null; void* handle (0x0)
	}, ; 528
	%struct.DSOCacheEntry {
		i64 6245546595253708013, ; hash 0x56aca389be3f64ed, from name: aot-System.Runtime.CompilerServices.VisualC
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.112_name, ; name: libaot-System.Runtime.CompilerServices.VisualC.dll.so
		ptr null; void* handle (0x0)
	}, ; 529
	%struct.DSOCacheEntry {
		i64 6251033168959842974, ; hash 0x56c0218c3b092a9e, from name: libaot-System.Web.HttpUtility.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.162_name, ; name: libaot-System.Web.HttpUtility.dll.so
		ptr null; void* handle (0x0)
	}, ; 530
	%struct.DSOCacheEntry {
		i64 6251069312384999852, ; hash 0x56c0426b870da1ac, from name: System.Transactions.Local
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.159_name, ; name: libaot-System.Transactions.Local.dll.so
		ptr null; void* handle (0x0)
	}, ; 531
	%struct.DSOCacheEntry {
		i64 6267348516347448299, ; hash 0x56fa184510760beb, from name: aot-Xamarin.AndroidX.Legacy.Support.Core.Utils
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.235_name, ; name: libaot-Xamarin.AndroidX.Legacy.Support.Core.Utils.dll.so
		ptr null; void* handle (0x0)
	}, ; 532
	%struct.DSOCacheEntry {
		i64 6268813884089785192, ; hash 0x56ff4d0394355b68, from name: System.Formats.Tar.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.49_name, ; name: libaot-System.Formats.Tar.dll.so
		ptr null; void* handle (0x0)
	}, ; 533
	%struct.DSOCacheEntry {
		i64 6278736998281604212, ; hash 0x57228e08a4ad6c74, from name: System.Private.DataContractSerialization
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.95_name, ; name: libaot-System.Private.DataContractSerialization.dll.so
		ptr null; void* handle (0x0)
	}, ; 534
	%struct.DSOCacheEntry {
		i64 6284145129771520194, ; hash 0x5735c4b3610850c2, from name: System.Reflection.Emit.ILGeneration
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.100_name, ; name: libaot-System.Reflection.Emit.ILGeneration.dll.so
		ptr null; void* handle (0x0)
	}, ; 535
	%struct.DSOCacheEntry {
		i64 6291001507563310904, ; hash 0x574e208a3bc20f38, from name: aot-Xamarin.AndroidX.Lifecycle.ViewModel.Ktx
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.244_name, ; name: libaot-Xamarin.AndroidX.Lifecycle.ViewModel.Ktx.dll.so
		ptr null; void* handle (0x0)
	}, ; 536
	%struct.DSOCacheEntry {
		i64 6308061292769401015, ; hash 0x578abc5300e958b7, from name: libSystem.Native
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.1_name, ; name: libSystem.Native.so
		ptr null; void* handle (0x0)
	}, ; 537
	%struct.DSOCacheEntry {
		i64 6309031637591895059, ; hash 0x578e2ed9035dac13, from name: aot-System.ComponentModel.Primitives.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.26_name, ; name: libaot-System.ComponentModel.Primitives.dll.so
		ptr null; void* handle (0x0)
	}, ; 538
	%struct.DSOCacheEntry {
		i64 6319713645133255417, ; hash 0x57b42213b45b52f9, from name: Xamarin.AndroidX.Lifecycle.Runtime
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.241_name, ; name: libaot-Xamarin.AndroidX.Lifecycle.Runtime.dll.so
		ptr null; void* handle (0x0)
	}, ; 539
	%struct.DSOCacheEntry {
		i64 6334998129641266509, ; hash 0x57ea6f3c12081d4d, from name: aot-System.Net.Quic
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.81_name, ; name: libaot-System.Net.Quic.dll.so
		ptr null; void* handle (0x0)
	}, ; 540
	%struct.DSOCacheEntry {
		i64 6342692645518226948, ; hash 0x5805c55b2798b604, from name: Xamarin.AndroidX.CursorAdapter.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.223_name, ; name: libaot-Xamarin.AndroidX.CursorAdapter.dll.so
		ptr null; void* handle (0x0)
	}, ; 541
	%struct.DSOCacheEntry {
		i64 6352489697598145066, ; hash 0x582893b918aa822a, from name: Xamarin.AndroidX.SwipeRefreshLayout.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.261_name, ; name: libaot-Xamarin.AndroidX.SwipeRefreshLayout.dll.so
		ptr null; void* handle (0x0)
	}, ; 542
	%struct.DSOCacheEntry {
		i64 6357457916754632952, ; hash 0x583a3a4ac2a7a0f8, from name: _Microsoft.Android.Resource.Designer
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.10_name, ; name: libaot-_Microsoft.Android.Resource.Designer.dll.so
		ptr null; void* handle (0x0)
	}, ; 543
	%struct.DSOCacheEntry {
		i64 6380851069551158718, ; hash 0x588d563d9544a5be, from name: Xamarin.AndroidX.Startup.StartupRuntime.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.260_name, ; name: libaot-Xamarin.AndroidX.Startup.StartupRuntime.dll.so
		ptr null; void* handle (0x0)
	}, ; 544
	%struct.DSOCacheEntry {
		i64 6385611344971160469, ; hash 0x589e3faf92b5db95, from name: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.245_name, ; name: libaot-Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll.so
		ptr null; void* handle (0x0)
	}, ; 545
	%struct.DSOCacheEntry {
		i64 6401687960814735282, ; hash 0x58d75d486341cfb2, from name: Xamarin.AndroidX.Lifecycle.LiveData.Core
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.238_name, ; name: libaot-Xamarin.AndroidX.Lifecycle.LiveData.Core.dll.so
		ptr null; void* handle (0x0)
	}, ; 546
	%struct.DSOCacheEntry {
		i64 6404578999226158050, ; hash 0x58e1a2aab8cd4be2, from name: libaot-System.Linq.Queryable
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.70_name, ; name: libaot-System.Linq.Queryable.dll.so
		ptr null; void* handle (0x0)
	}, ; 547
	%struct.DSOCacheEntry {
		i64 6458790885169138303, ; hash 0x59a23c1705098a7f, from name: aot-Xamarin.AndroidX.Window.Extensions.Core.Core
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.270_name, ; name: libaot-Xamarin.AndroidX.Window.Extensions.Core.Core.dll.so
		ptr null; void* handle (0x0)
	}, ; 548
	%struct.DSOCacheEntry {
		i64 6465947575367127185, ; hash 0x59bba90fce0e5091, from name: System.IO.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.67_name, ; name: libaot-System.IO.dll.so
		ptr null; void* handle (0x0)
	}, ; 549
	%struct.DSOCacheEntry {
		i64 6488258789742214262, ; hash 0x5a0aecfe3563fc76, from name: aot-System.Collections.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.22_name, ; name: libaot-System.Collections.dll.so
		ptr null; void* handle (0x0)
	}, ; 550
	%struct.DSOCacheEntry {
		i64 6496174396349718907, ; hash 0x5a270c31fd69a17b, from name: libaot-System.Runtime.Serialization.Xml.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.124_name, ; name: libaot-System.Runtime.Serialization.Xml.dll.so
		ptr null; void* handle (0x0)
	}, ; 551
	%struct.DSOCacheEntry {
		i64 6497688098531050961, ; hash 0x5a2c6ce63e3a05d1, from name: aot-System.Threading.ThreadPool
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.156_name, ; name: libaot-System.Threading.ThreadPool.dll.so
		ptr null; void* handle (0x0)
	}, ; 552
	%struct.DSOCacheEntry {
		i64 6521880595188375514, ; hash 0x5a825fd8cfb75fda, from name: aot-Newtonsoft.Json
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.199_name, ; name: libaot-Newtonsoft.Json.dll.so
		ptr null; void* handle (0x0)
	}, ; 553
	%struct.DSOCacheEntry {
		i64 6558713382764477133, ; hash 0x5b053b127346facd, from name: mono-component-marshal-ilgen.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.5_name, ; name: libmono-component-marshal-ilgen.so
		ptr null; void* handle (0x0)
	}, ; 554
	%struct.DSOCacheEntry {
		i64 6560151584539558821, ; hash 0x5b0a571be53243a5, from name: Microsoft.Extensions.Options
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.191_name, ; name: libaot-Microsoft.Extensions.Options.dll.so
		ptr null; void* handle (0x0)
	}, ; 555
	%struct.DSOCacheEntry {
		i64 6560588458386133218, ; hash 0x5b0be47183a210e2, from name: libaot-Xamarin.AndroidX.RecyclerView
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.254_name, ; name: libaot-Xamarin.AndroidX.RecyclerView.dll.so
		ptr null; void* handle (0x0)
	}, ; 556
	%struct.DSOCacheEntry {
		i64 6574825190052319144, ; hash 0x5b3e78ace95bcfa8, from name: GoogleGson.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.183_name, ; name: libaot-GoogleGson.dll.so
		ptr null; void* handle (0x0)
	}, ; 557
	%struct.DSOCacheEntry {
		i64 6591971792923354531, ; hash 0x5b7b636b7e9765a3, from name: Xamarin.AndroidX.Lifecycle.LiveData.Core.Ktx
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.239_name, ; name: libaot-Xamarin.AndroidX.Lifecycle.LiveData.Core.Ktx.dll.so
		ptr null; void* handle (0x0)
	}, ; 558
	%struct.DSOCacheEntry {
		i64 6594663189110128169, ; hash 0x5b84f33b0040fe29, from name: System.Runtime.Extensions.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.113_name, ; name: libaot-System.Runtime.Extensions.dll.so
		ptr null; void* handle (0x0)
	}, ; 559
	%struct.DSOCacheEntry {
		i64 6608482385487288462, ; hash 0x5bb60bb76365588e, from name: Xamarin.Android.Glide.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.200_name, ; name: libaot-Xamarin.Android.Glide.dll.so
		ptr null; void* handle (0x0)
	}, ; 560
	%struct.DSOCacheEntry {
		i64 6610894179593321960, ; hash 0x5bbe9d3af65b7de8, from name: System.Linq.Parallel.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.69_name, ; name: libaot-System.Linq.Parallel.dll.so
		ptr null; void* handle (0x0)
	}, ; 561
	%struct.DSOCacheEntry {
		i64 6617685658146568858, ; hash 0x5bd6be0b4905fa9a, from name: System.Text.Encoding.CodePages
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.143_name, ; name: libaot-System.Text.Encoding.CodePages.dll.so
		ptr null; void* handle (0x0)
	}, ; 562
	%struct.DSOCacheEntry {
		i64 6635387966917840004, ; hash 0x5c15a2333b0a0c84, from name: libxamarin-debug-app-helper.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.8_name, ; name: libxamarin-debug-app-helper.so
		ptr null; void* handle (0x0)
	}, ; 563
	%struct.DSOCacheEntry {
		i64 6672263946731405092, ; hash 0x5c98a4b558923f24, from name: aot-Xamarin.AndroidX.ViewPager2.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.268_name, ; name: libaot-Xamarin.AndroidX.ViewPager2.dll.so
		ptr null; void* handle (0x0)
	}, ; 564
	%struct.DSOCacheEntry {
		i64 6679219254897596376, ; hash 0x5cb15a86391ed7d8, from name: Microsoft.Maui.Controls.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.194_name, ; name: libaot-Microsoft.Maui.Controls.dll.so
		ptr null; void* handle (0x0)
	}, ; 565
	%struct.DSOCacheEntry {
		i64 6700811815215665556, ; hash 0x5cfe10d7f0ab9194, from name: aot-System.Net.Http.Json.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.73_name, ; name: libaot-System.Net.Http.Json.dll.so
		ptr null; void* handle (0x0)
	}, ; 566
	%struct.DSOCacheEntry {
		i64 6704907064679518435, ; hash 0x5d0c9d73823ad0e3, from name: aot-Microsoft.Extensions.Logging.Debug.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.190_name, ; name: libaot-Microsoft.Extensions.Logging.Debug.dll.so
		ptr null; void* handle (0x0)
	}, ; 567
	%struct.DSOCacheEntry {
		i64 6730079425753728317, ; hash 0x5d660b948a37453d, from name: libaot-System.Xml.XPath
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.170_name, ; name: libaot-System.Xml.XPath.dll.so
		ptr null; void* handle (0x0)
	}, ; 568
	%struct.DSOCacheEntry {
		i64 6772837112740759457, ; hash 0x5dfdf378527ec7a1, from name: System.Runtime.InteropServices.JavaScript
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.115_name, ; name: libaot-System.Runtime.InteropServices.JavaScript.dll.so
		ptr null; void* handle (0x0)
	}, ; 569
	%struct.DSOCacheEntry {
		i64 6776228679583289058, ; hash 0x5e0a001503604ee2, from name: aot-Microsoft.VisualBasic.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.13_name, ; name: libaot-Microsoft.VisualBasic.dll.so
		ptr null; void* handle (0x0)
	}, ; 570
	%struct.DSOCacheEntry {
		i64 6778788483263630001, ; hash 0x5e131835c0700ab1, from name: Xamarin.AndroidX.ProfileInstaller.ProfileInstaller.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.253_name, ; name: libaot-Xamarin.AndroidX.ProfileInstaller.ProfileInstaller.dll.so
		ptr null; void* handle (0x0)
	}, ; 571
	%struct.DSOCacheEntry {
		i64 6786606130239981554, ; hash 0x5e2ede51877147f2, from name: System.Diagnostics.TraceSource
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.43_name, ; name: libaot-System.Diagnostics.TraceSource.dll.so
		ptr null; void* handle (0x0)
	}, ; 572
	%struct.DSOCacheEntry {
		i64 6788149657292465783, ; hash 0x5e345a25ed1b6677, from name: libaot-System.Runtime.CompilerServices.VisualC.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.112_name, ; name: libaot-System.Runtime.CompilerServices.VisualC.dll.so
		ptr null; void* handle (0x0)
	}, ; 573
	%struct.DSOCacheEntry {
		i64 6790605347993621884, ; hash 0x5e3d1395f907157c, from name: libaot-Xamarin.AndroidX.Interpolator
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.234_name, ; name: libaot-Xamarin.AndroidX.Interpolator.dll.so
		ptr null; void* handle (0x0)
	}, ; 574
	%struct.DSOCacheEntry {
		i64 6798329586179154312, ; hash 0x5e5884bd523ca188, from name: System.Windows
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.164_name, ; name: libaot-System.Windows.dll.so
		ptr null; void* handle (0x0)
	}, ; 575
	%struct.DSOCacheEntry {
		i64 6811092106988893788, ; hash 0x5e85dc2f418a365c, from name: aot-Xamarin.AndroidX.SwipeRefreshLayout.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.261_name, ; name: libaot-Xamarin.AndroidX.SwipeRefreshLayout.dll.so
		ptr null; void* handle (0x0)
	}, ; 576
	%struct.DSOCacheEntry {
		i64 6836385375498469829, ; hash 0x5edfb8473e4301c5, from name: Xamarin.AndroidX.RecyclerView.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.254_name, ; name: libaot-Xamarin.AndroidX.RecyclerView.dll.so
		ptr null; void* handle (0x0)
	}, ; 577
	%struct.DSOCacheEntry {
		i64 6849804280171296592, ; hash 0x5f0f64b3748f7750, from name: aot-System.Threading.Timer
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.157_name, ; name: libaot-System.Threading.Timer.dll.so
		ptr null; void* handle (0x0)
	}, ; 578
	%struct.DSOCacheEntry {
		i64 6876862101832370452, ; hash 0x5f6f85a57d108914, from name: System.Xml.Linq
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.165_name, ; name: libaot-System.Xml.Linq.dll.so
		ptr null; void* handle (0x0)
	}, ; 579
	%struct.DSOCacheEntry {
		i64 6879679050593672945, ; hash 0x5f7987a57b551ef1, from name: libaot-Xamarin.AndroidX.CardView
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.214_name, ; name: libaot-Xamarin.AndroidX.CardView.dll.so
		ptr null; void* handle (0x0)
	}, ; 580
	%struct.DSOCacheEntry {
		i64 6894844156784520562, ; hash 0x5faf683aead1ad72, from name: System.Numerics.Vectors
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.92_name, ; name: libaot-System.Numerics.Vectors.dll.so
		ptr null; void* handle (0x0)
	}, ; 581
	%struct.DSOCacheEntry {
		i64 6899924208224414493, ; hash 0x5fc174829055ab1d, from name: libaot-System.Data.DataSetExtensions
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.33_name, ; name: libaot-System.Data.DataSetExtensions.dll.so
		ptr null; void* handle (0x0)
	}, ; 582
	%struct.DSOCacheEntry {
		i64 6913716284728566067, ; hash 0x5ff274549d146133, from name: System.IO.Compression.Native.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.0_name, ; name: libSystem.IO.Compression.Native.so
		ptr null; void* handle (0x0)
	}, ; 583
	%struct.DSOCacheEntry {
		i64 6917769210764326931, ; hash 0x6000da71fdbdf813, from name: libaot-Microsoft.Maui.Controls.Compatibility.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.193_name, ; name: libaot-Microsoft.Maui.Controls.Compatibility.dll.so
		ptr null; void* handle (0x0)
	}, ; 584
	%struct.DSOCacheEntry {
		i64 6935204139325058492, ; hash 0x603ecb6ba149edbc, from name: libaot-System.Data
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.34_name, ; name: libaot-System.Data.dll.so
		ptr null; void* handle (0x0)
	}, ; 585
	%struct.DSOCacheEntry {
		i64 6940751003067424443, ; hash 0x605280437c451ebb, from name: aot-Xamarin.AndroidX.Tracing.Tracing.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.262_name, ; name: libaot-Xamarin.AndroidX.Tracing.Tracing.dll.so
		ptr null; void* handle (0x0)
	}, ; 586
	%struct.DSOCacheEntry {
		i64 6969601061510368285, ; hash 0x60b8ff3d2982cc1d, from name: aot-System.Windows
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.164_name, ; name: libaot-System.Windows.dll.so
		ptr null; void* handle (0x0)
	}, ; 587
	%struct.DSOCacheEntry {
		i64 6977556444580408693, ; hash 0x60d5429e1f73ed75, from name: libaot-System.Security.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.140_name, ; name: libaot-System.Security.dll.so
		ptr null; void* handle (0x0)
	}, ; 588
	%struct.DSOCacheEntry {
		i64 6993628010754849192, ; hash 0x610e5b9f3843b9a8, from name: libaot-Microsoft.Maui.Controls.Xaml.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.195_name, ; name: libaot-Microsoft.Maui.Controls.Xaml.dll.so
		ptr null; void* handle (0x0)
	}, ; 589
	%struct.DSOCacheEntry {
		i64 7005231924406374519, ; hash 0x61379551e777d077, from name: libaot-Xamarin.AndroidX.Lifecycle.LiveData.Core
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.238_name, ; name: libaot-Xamarin.AndroidX.Lifecycle.LiveData.Core.dll.so
		ptr null; void* handle (0x0)
	}, ; 590
	%struct.DSOCacheEntry {
		i64 7005623937201008400, ; hash 0x6138f9da7ed6ef10, from name: libaot-System.Reflection.Emit.Lightweight.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.101_name, ; name: libaot-System.Reflection.Emit.Lightweight.dll.so
		ptr null; void* handle (0x0)
	}, ; 591
	%struct.DSOCacheEntry {
		i64 7011053663211085209, ; hash 0x614c442918e5dd99, from name: Xamarin.AndroidX.Fragment.Ktx
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.233_name, ; name: libaot-Xamarin.AndroidX.Fragment.Ktx.dll.so
		ptr null; void* handle (0x0)
	}, ; 592
	%struct.DSOCacheEntry {
		i64 7019789918392632159, ; hash 0x616b4dbd03a9435f, from name: libaot-System.Diagnostics.TextWriterTraceListener.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.41_name, ; name: libaot-System.Diagnostics.TextWriterTraceListener.dll.so
		ptr null; void* handle (0x0)
	}, ; 593
	%struct.DSOCacheEntry {
		i64 7026076528261849631, ; hash 0x6181a3606fc1e21f, from name: libaot-Xamarin.Kotlin.StdLib
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.277_name, ; name: libaot-Xamarin.Kotlin.StdLib.dll.so
		ptr null; void* handle (0x0)
	}, ; 594
	%struct.DSOCacheEntry {
		i64 7032820184502538532, ; hash 0x619998b242789124, from name: libaot-System.Net.Primitives
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.80_name, ; name: libaot-System.Net.Primitives.dll.so
		ptr null; void* handle (0x0)
	}, ; 595
	%struct.DSOCacheEntry {
		i64 7055523377329201871, ; hash 0x61ea4121422be2cf, from name: Xamarin.AndroidX.Legacy.Support.Core.Utils.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.235_name, ; name: libaot-Xamarin.AndroidX.Legacy.Support.Core.Utils.dll.so
		ptr null; void* handle (0x0)
	}, ; 596
	%struct.DSOCacheEntry {
		i64 7078790046120101683, ; hash 0x623cea0aba8f4733, from name: libaot-System.Data.Common
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.32_name, ; name: libaot-System.Data.Common.dll.so
		ptr null; void* handle (0x0)
	}, ; 597
	%struct.DSOCacheEntry {
		i64 7086827931071621775, ; hash 0x62597874a7d72a8f, from name: aot-Xamarin.AndroidX.Lifecycle.Common.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.236_name, ; name: libaot-Xamarin.AndroidX.Lifecycle.Common.dll.so
		ptr null; void* handle (0x0)
	}, ; 598
	%struct.DSOCacheEntry {
		i64 7101497697220435230, ; hash 0x628d9687c0141d1e, from name: System.Configuration
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.29_name, ; name: libaot-System.Configuration.dll.so
		ptr null; void* handle (0x0)
	}, ; 599
	%struct.DSOCacheEntry {
		i64 7106548671186296926, ; hash 0x629f885d4515605e, from name: libaot-System.Numerics
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.93_name, ; name: libaot-System.Numerics.dll.so
		ptr null; void* handle (0x0)
	}, ; 600
	%struct.DSOCacheEntry {
		i64 7112547816752919026, ; hash 0x62b4d88e3189b1f2, from name: System.IO.FileSystem
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.61_name, ; name: libaot-System.IO.FileSystem.dll.so
		ptr null; void* handle (0x0)
	}, ; 601
	%struct.DSOCacheEntry {
		i64 7114095377846552088, ; hash 0x62ba580dd6cac618, from name: aot-System.Net.Mail.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.76_name, ; name: libaot-System.Net.Mail.dll.so
		ptr null; void* handle (0x0)
	}, ; 602
	%struct.DSOCacheEntry {
		i64 7115462216925655511, ; hash 0x62bf332fdc9131d7, from name: aot-Microsoft.Extensions.Logging.Debug
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.190_name, ; name: libaot-Microsoft.Extensions.Logging.Debug.dll.so
		ptr null; void* handle (0x0)
	}, ; 603
	%struct.DSOCacheEntry {
		i64 7146110801539337461, ; hash 0x632c15e98b558cf5, from name: aot-System.Threading.ThreadPool.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.156_name, ; name: libaot-System.Threading.ThreadPool.dll.so
		ptr null; void* handle (0x0)
	}, ; 604
	%struct.DSOCacheEntry {
		i64 7146733078410969911, ; hash 0x632e4bdeab384337, from name: aot-System.Text.Encoding.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.145_name, ; name: libaot-System.Text.Encoding.dll.so
		ptr null; void* handle (0x0)
	}, ; 605
	%struct.DSOCacheEntry {
		i64 7149762907828324447, ; hash 0x63390f7bcd5f085f, from name: System.ComponentModel.Annotations.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.23_name, ; name: libaot-System.ComponentModel.Annotations.dll.so
		ptr null; void* handle (0x0)
	}, ; 606
	%struct.DSOCacheEntry {
		i64 7154350367321287918, ; hash 0x63495bc0f2deecee, from name: System.IO.Compression.ZipFile.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.55_name, ; name: libaot-System.IO.Compression.ZipFile.dll.so
		ptr null; void* handle (0x0)
	}, ; 607
	%struct.DSOCacheEntry {
		i64 7159690850612219724, ; hash 0x635c54e51c5b0f4c, from name: libaot-System.IO.FileSystem.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.61_name, ; name: libaot-System.IO.FileSystem.dll.so
		ptr null; void* handle (0x0)
	}, ; 608
	%struct.DSOCacheEntry {
		i64 7160851695570012272, ; hash 0x636074ad63b44870, from name: aot-System.Runtime.Handles.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.114_name, ; name: libaot-System.Runtime.Handles.dll.so
		ptr null; void* handle (0x0)
	}, ; 609
	%struct.DSOCacheEntry {
		i64 7163715482216656315, ; hash 0x636aa146ad7d6dbb, from name: libaot-Xamarin.AndroidX.Lifecycle.Process
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.240_name, ; name: libaot-Xamarin.AndroidX.Lifecycle.Process.dll.so
		ptr null; void* handle (0x0)
	}, ; 610
	%struct.DSOCacheEntry {
		i64 7173196384442841971, ; hash 0x638c501b3ed4fb73, from name: libaot-System.ValueTuple
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.161_name, ; name: libaot-System.ValueTuple.dll.so
		ptr null; void* handle (0x0)
	}, ; 611
	%struct.DSOCacheEntry {
		i64 7198932752074671326, ; hash 0x63e7bf32495604de, from name: libaot-Xamarin.AndroidX.Collection
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.215_name, ; name: libaot-Xamarin.AndroidX.Collection.dll.so
		ptr null; void* handle (0x0)
	}, ; 612
	%struct.DSOCacheEntry {
		i64 7201832913413494223, ; hash 0x63f20ce0b7ba55cf, from name: libaot-System.Windows
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.164_name, ; name: libaot-System.Windows.dll.so
		ptr null; void* handle (0x0)
	}, ; 613
	%struct.DSOCacheEntry {
		i64 7206699016636673907, ; hash 0x64035692a9c92f73, from name: aot-System.Text.Encoding
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.145_name, ; name: libaot-System.Text.Encoding.dll.so
		ptr null; void* handle (0x0)
	}, ; 614
	%struct.DSOCacheEntry {
		i64 7252784626773793767, ; hash 0x64a71130ef441be7, from name: System.Drawing.Primitives.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.45_name, ; name: libaot-System.Drawing.Primitives.dll.so
		ptr null; void* handle (0x0)
	}, ; 615
	%struct.DSOCacheEntry {
		i64 7257621909282966728, ; hash 0x64b840ac88e74cc8, from name: libaot-Xamarin.AndroidX.Emoji2
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.229_name, ; name: libaot-Xamarin.AndroidX.Emoji2.dll.so
		ptr null; void* handle (0x0)
	}, ; 616
	%struct.DSOCacheEntry {
		i64 7260863994773921465, ; hash 0x64c3c55562ec5eb9, from name: libaot-System.Security.Claims
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.128_name, ; name: libaot-System.Security.Claims.dll.so
		ptr null; void* handle (0x0)
	}, ; 617
	%struct.DSOCacheEntry {
		i64 7270811800166795866, ; hash 0x64e71ccf51a90a5a, from name: System.Linq
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.71_name, ; name: libaot-System.Linq.dll.so
		ptr null; void* handle (0x0)
	}, ; 618
	%struct.DSOCacheEntry {
		i64 7286834274487352090, ; hash 0x6520092a53f5bb1a, from name: libaot-System.Diagnostics.DiagnosticSource.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.37_name, ; name: libaot-System.Diagnostics.DiagnosticSource.dll.so
		ptr null; void* handle (0x0)
	}, ; 619
	%struct.DSOCacheEntry {
		i64 7287078049759399551, ; hash 0x6520e6e0ae748e7f, from name: libaot-Xamarin.AndroidX.Window
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.269_name, ; name: libaot-Xamarin.AndroidX.Window.dll.so
		ptr null; void* handle (0x0)
	}, ; 620
	%struct.DSOCacheEntry {
		i64 7289396155428031695, ; hash 0x6529232eb762cccf, from name: Xamarin.AndroidX.Navigation.Runtime.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.250_name, ; name: libaot-Xamarin.AndroidX.Navigation.Runtime.dll.so
		ptr null; void* handle (0x0)
	}, ; 621
	%struct.DSOCacheEntry {
		i64 7293199643205339005, ; hash 0x6536a66f3942877d, from name: aot-Xamarin.AndroidX.CustomView
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.224_name, ; name: libaot-Xamarin.AndroidX.CustomView.dll.so
		ptr null; void* handle (0x0)
	}, ; 622
	%struct.DSOCacheEntry {
		i64 7295730150743956922, ; hash 0x653fa3eaec335dba, from name: libaot-System.Threading.Timer
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.157_name, ; name: libaot-System.Threading.Timer.dll.so
		ptr null; void* handle (0x0)
	}, ; 623
	%struct.DSOCacheEntry {
		i64 7298692372030530791, ; hash 0x654a2a0acfbba4e7, from name: libaot-System.Transactions.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.160_name, ; name: libaot-System.Transactions.dll.so
		ptr null; void* handle (0x0)
	}, ; 624
	%struct.DSOCacheEntry {
		i64 7308315287952273013, ; hash 0x656c5a0884f3ae75, from name: libaot-Microsoft.VisualBasic.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.13_name, ; name: libaot-Microsoft.VisualBasic.dll.so
		ptr null; void* handle (0x0)
	}, ; 625
	%struct.DSOCacheEntry {
		i64 7316205155833392065, ; hash 0x658861d38954abc1, from name: Microsoft.Win32.Primitives
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.14_name, ; name: libaot-Microsoft.Win32.Primitives.dll.so
		ptr null; void* handle (0x0)
	}, ; 626
	%struct.DSOCacheEntry {
		i64 7338192458477945005, ; hash 0x65d67f295d0740ad, from name: System.Reflection
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.107_name, ; name: libaot-System.Reflection.dll.so
		ptr null; void* handle (0x0)
	}, ; 627
	%struct.DSOCacheEntry {
		i64 7338982286544642983, ; hash 0x65d94d818a60a3a7, from name: monodroid.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.7_name, ; name: libmonodroid.so
		ptr null; void* handle (0x0)
	}, ; 628
	%struct.DSOCacheEntry {
		i64 7343755648263762692, ; hash 0x65ea42da6c07b304, from name: System.Net.WebSockets.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.90_name, ; name: libaot-System.Net.WebSockets.dll.so
		ptr null; void* handle (0x0)
	}, ; 629
	%struct.DSOCacheEntry {
		i64 7348911439220114880, ; hash 0x65fc94048c8505c0, from name: libaot-Xamarin.AndroidX.Emoji2.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.229_name, ; name: libaot-Xamarin.AndroidX.Emoji2.dll.so
		ptr null; void* handle (0x0)
	}, ; 630
	%struct.DSOCacheEntry {
		i64 7349431895026339542, ; hash 0x65fe6d5e9bf88ed6, from name: Xamarin.Android.Glide.DiskLruCache
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.202_name, ; name: libaot-Xamarin.Android.Glide.DiskLruCache.dll.so
		ptr null; void* handle (0x0)
	}, ; 631
	%struct.DSOCacheEntry {
		i64 7357705307462257638, ; hash 0x661bd1fe8d4b4be6, from name: aot-Mono.Android.Runtime
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.180_name, ; name: libaot-Mono.Android.Runtime.dll.so
		ptr null; void* handle (0x0)
	}, ; 632
	%struct.DSOCacheEntry {
		i64 7360049220918255826, ; hash 0x662425c56e3920d2, from name: System.Data.Common.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.32_name, ; name: libaot-System.Data.Common.dll.so
		ptr null; void* handle (0x0)
	}, ; 633
	%struct.DSOCacheEntry {
		i64 7379149050533156055, ; hash 0x666800f70db094d7, from name: libaot-Xamarin.AndroidX.VectorDrawable.Animated
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.265_name, ; name: libaot-Xamarin.AndroidX.VectorDrawable.Animated.dll.so
		ptr null; void* handle (0x0)
	}, ; 634
	%struct.DSOCacheEntry {
		i64 7381472336305914060, ; hash 0x667041fb2ce300cc, from name: aot-System.Security.Cryptography.Primitives
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.134_name, ; name: libaot-System.Security.Cryptography.Primitives.dll.so
		ptr null; void* handle (0x0)
	}, ; 635
	%struct.DSOCacheEntry {
		i64 7393269986360208929, ; hash 0x669a2be1a18eae21, from name: aot-System.Net.WebSockets
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.90_name, ; name: libaot-System.Net.WebSockets.dll.so
		ptr null; void* handle (0x0)
	}, ; 636
	%struct.DSOCacheEntry {
		i64 7415347135721941512, ; hash 0x66e89aee86eaaa08, from name: libmono-component-marshal-ilgen
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.5_name, ; name: libmono-component-marshal-ilgen.so
		ptr null; void* handle (0x0)
	}, ; 637
	%struct.DSOCacheEntry {
		i64 7415791582644558104, ; hash 0x66ea2f2763dc5918, from name: System.Configuration.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.29_name, ; name: libaot-System.Configuration.dll.so
		ptr null; void* handle (0x0)
	}, ; 638
	%struct.DSOCacheEntry {
		i64 7447924280570395180, ; hash 0x675c57ac2167ba2c, from name: libaot-Xamarin.AndroidX.AppCompat.AppCompatResources
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.210_name, ; name: libaot-Xamarin.AndroidX.AppCompat.AppCompatResources.dll.so
		ptr null; void* handle (0x0)
	}, ; 639
	%struct.DSOCacheEntry {
		i64 7465578309990517956, ; hash 0x679b0feb29d88cc4, from name: aot-System.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.174_name, ; name: libaot-System.dll.so
		ptr null; void* handle (0x0)
	}, ; 640
	%struct.DSOCacheEntry {
		i64 7477302391979602800, ; hash 0x67c4b6e8b81f7370, from name: Xamarin.AndroidX.CardView.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.214_name, ; name: libaot-Xamarin.AndroidX.CardView.dll.so
		ptr null; void* handle (0x0)
	}, ; 641
	%struct.DSOCacheEntry {
		i64 7484096333359613774, ; hash 0x67dcd9f676b4074e, from name: libaot-System.Net.Security
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.83_name, ; name: libaot-System.Net.Security.dll.so
		ptr null; void* handle (0x0)
	}, ; 642
	%struct.DSOCacheEntry {
		i64 7489048572193775167, ; hash 0x67ee71ff6b419e3f, from name: System.ObjectModel
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.94_name, ; name: libaot-System.ObjectModel.dll.so
		ptr null; void* handle (0x0)
	}, ; 643
	%struct.DSOCacheEntry {
		i64 7514939451885975947, ; hash 0x684a6d9d9a3b798b, from name: System.Runtime.Serialization.Xml.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.124_name, ; name: libaot-System.Runtime.Serialization.Xml.dll.so
		ptr null; void* handle (0x0)
	}, ; 644
	%struct.DSOCacheEntry {
		i64 7515511324144895830, ; hash 0x684c75bafd150756, from name: System.Collections.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.22_name, ; name: libaot-System.Collections.dll.so
		ptr null; void* handle (0x0)
	}, ; 645
	%struct.DSOCacheEntry {
		i64 7527069578555012676, ; hash 0x687585e6cd6bb644, from name: aot-System.Net.WebProxy
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.88_name, ; name: libaot-System.Net.WebProxy.dll.so
		ptr null; void* handle (0x0)
	}, ; 646
	%struct.DSOCacheEntry {
		i64 7532437531913037246, ; hash 0x68889806d67f25be, from name: libaot-Xamarin.AndroidX.Navigation.Common
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.248_name, ; name: libaot-Xamarin.AndroidX.Navigation.Common.dll.so
		ptr null; void* handle (0x0)
	}, ; 647
	%struct.DSOCacheEntry {
		i64 7535601351437907993, ; hash 0x6893d580f968f819, from name: System.Net.Http.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.74_name, ; name: libaot-System.Net.Http.dll.so
		ptr null; void* handle (0x0)
	}, ; 648
	%struct.DSOCacheEntry {
		i64 7540556024932143097, ; hash 0x68a56fc0cb030ff9, from name: aot-System.Drawing.Primitives.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.45_name, ; name: libaot-System.Drawing.Primitives.dll.so
		ptr null; void* handle (0x0)
	}, ; 649
	%struct.DSOCacheEntry {
		i64 7564660874610836040, ; hash 0x68fb12fc75798248, from name: Xamarin.AndroidX.CustomView.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.224_name, ; name: libaot-Xamarin.AndroidX.CustomView.dll.so
		ptr null; void* handle (0x0)
	}, ; 650
	%struct.DSOCacheEntry {
		i64 7574871849319874938, ; hash 0x691f59d045d1417a, from name: System.Diagnostics.TextWriterTraceListener.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.41_name, ; name: libaot-System.Diagnostics.TextWriterTraceListener.dll.so
		ptr null; void* handle (0x0)
	}, ; 651
	%struct.DSOCacheEntry {
		i64 7592577537120840276, ; hash 0x695e410af5b2aa54, from name: System.Diagnostics.Process
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.39_name, ; name: libaot-System.Diagnostics.Process.dll.so
		ptr null; void* handle (0x0)
	}, ; 652
	%struct.DSOCacheEntry {
		i64 7603299711682212348, ; hash 0x698458cdc3a5f1fc, from name: aot-System.Collections.NonGeneric.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.20_name, ; name: libaot-System.Collections.NonGeneric.dll.so
		ptr null; void* handle (0x0)
	}, ; 653
	%struct.DSOCacheEntry {
		i64 7639941140308737920, ; hash 0x6a0685fd2cfebf80, from name: libSystem.IO.Compression.Native.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.0_name, ; name: libSystem.IO.Compression.Native.so
		ptr null; void* handle (0x0)
	}, ; 654
	%struct.DSOCacheEntry {
		i64 7640815069151536100, ; hash 0x6a09a0d2973aa3e4, from name: libaot-System.Threading.Channels
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.149_name, ; name: libaot-System.Threading.Channels.dll.so
		ptr null; void* handle (0x0)
	}, ; 655
	%struct.DSOCacheEntry {
		i64 7643894198677181568, ; hash 0x6a1491464cd29480, from name: libaot-Xamarin.AndroidX.ExifInterface
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.231_name, ; name: libaot-Xamarin.AndroidX.ExifInterface.dll.so
		ptr null; void* handle (0x0)
	}, ; 656
	%struct.DSOCacheEntry {
		i64 7644345471721608132, ; hash 0x6a162bb47e5513c4, from name: System.Diagnostics.FileVersionInfo.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.38_name, ; name: libaot-System.Diagnostics.FileVersionInfo.dll.so
		ptr null; void* handle (0x0)
	}, ; 657
	%struct.DSOCacheEntry {
		i64 7648061494641607363, ; hash 0x6a235f688074c2c3, from name: libaot-System.Text.Encoding.CodePages.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.143_name, ; name: libaot-System.Text.Encoding.CodePages.dll.so
		ptr null; void* handle (0x0)
	}, ; 658
	%struct.DSOCacheEntry {
		i64 7654504624184590948, ; hash 0x6a3a4366801b8264, from name: System.Net.Http
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.74_name, ; name: libaot-System.Net.Http.dll.so
		ptr null; void* handle (0x0)
	}, ; 659
	%struct.DSOCacheEntry {
		i64 7658328537957887241, ; hash 0x6a47d93ace376d09, from name: libaot-Xamarin.Google.Android.Material
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.271_name, ; name: libaot-Xamarin.Google.Android.Material.dll.so
		ptr null; void* handle (0x0)
	}, ; 660
	%struct.DSOCacheEntry {
		i64 7663901784317435967, ; hash 0x6a5ba61157b9203f, from name: libaot-System.IO.FileSystem.AccessControl
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.57_name, ; name: libaot-System.IO.FileSystem.AccessControl.dll.so
		ptr null; void* handle (0x0)
	}, ; 661
	%struct.DSOCacheEntry {
		i64 7673446916582303699, ; hash 0x6a7d8f50a1b467d3, from name: aot-System.Xml.XDocument.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.168_name, ; name: libaot-System.Xml.XDocument.dll.so
		ptr null; void* handle (0x0)
	}, ; 662
	%struct.DSOCacheEntry {
		i64 7675303261932883976, ; hash 0x6a8427a6b6e81008, from name: aot-System.Runtime.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.126_name, ; name: libaot-System.Runtime.dll.so
		ptr null; void* handle (0x0)
	}, ; 663
	%struct.DSOCacheEntry {
		i64 7677152469418976166, ; hash 0x6a8ab97ee23b23a6, from name: aot-Xamarin.AndroidX.Lifecycle.Runtime.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.241_name, ; name: libaot-Xamarin.AndroidX.Lifecycle.Runtime.dll.so
		ptr null; void* handle (0x0)
	}, ; 664
	%struct.DSOCacheEntry {
		i64 7694700312542370399, ; hash 0x6ac9112a7e2cda5f, from name: System.Net.Mail
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.76_name, ; name: libaot-System.Net.Mail.dll.so
		ptr null; void* handle (0x0)
	}, ; 665
	%struct.DSOCacheEntry {
		i64 7695876457946633523, ; hash 0x6acd3edd2f335533, from name: aot-System.Text.Json.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.147_name, ; name: libaot-System.Text.Json.dll.so
		ptr null; void* handle (0x0)
	}, ; 666
	%struct.DSOCacheEntry {
		i64 7714652370974252055, ; hash 0x6b0ff375198b9c17, from name: System.Private.CoreLib
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.283_name, ; name: libaot-System.Private.CoreLib.dll.so
		ptr null; void* handle (0x0)
	}, ; 667
	%struct.DSOCacheEntry {
		i64 7725404731275645577, ; hash 0x6b3626ac11ce9289, from name: Xamarin.AndroidX.Lifecycle.Runtime.Ktx
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.242_name, ; name: libaot-Xamarin.AndroidX.Lifecycle.Runtime.Ktx.dll.so
		ptr null; void* handle (0x0)
	}, ; 668
	%struct.DSOCacheEntry {
		i64 7735176074855944702, ; hash 0x6b58dda848e391fe, from name: Microsoft.CSharp
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.11_name, ; name: libaot-Microsoft.CSharp.dll.so
		ptr null; void* handle (0x0)
	}, ; 669
	%struct.DSOCacheEntry {
		i64 7740286304433625072, ; hash 0x6b6b0562539657f0, from name: libmonosgen-2.0
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.6_name, ; name: libmonosgen-2.0.so
		ptr null; void* handle (0x0)
	}, ; 670
	%struct.DSOCacheEntry {
		i64 7744206437584297173, ; hash 0x6b78f2b973815cd5, from name: libaot-System.IO.MemoryMappedFiles
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.63_name, ; name: libaot-System.IO.MemoryMappedFiles.dll.so
		ptr null; void* handle (0x0)
	}, ; 671
	%struct.DSOCacheEntry {
		i64 7756487412533532394, ; hash 0x6ba49434c0d996ea, from name: aot-Xamarin.Kotlin.StdLib.Jdk7.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.279_name, ; name: libaot-Xamarin.Kotlin.StdLib.Jdk7.dll.so
		ptr null; void* handle (0x0)
	}, ; 672
	%struct.DSOCacheEntry {
		i64 7756540058787761141, ; hash 0x6ba4c4166a21cbf5, from name: aot-System.Security.Cryptography.OpenSsl.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.133_name, ; name: libaot-System.Security.Cryptography.OpenSsl.dll.so
		ptr null; void* handle (0x0)
	}, ; 673
	%struct.DSOCacheEntry {
		i64 7756672559804613692, ; hash 0x6ba53c98b62c843c, from name: libaot-System.Runtime.Intrinsics.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.118_name, ; name: libaot-System.Runtime.Intrinsics.dll.so
		ptr null; void* handle (0x0)
	}, ; 674
	%struct.DSOCacheEntry {
		i64 7759661773326470811, ; hash 0x6bafdb45384d4e9b, from name: aot-Microsoft.Maui.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.196_name, ; name: libaot-Microsoft.Maui.dll.so
		ptr null; void* handle (0x0)
	}, ; 675
	%struct.DSOCacheEntry {
		i64 7770273181952392915, ; hash 0x6bd58e4a52043ed3, from name: aot-System.Linq.Queryable
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.70_name, ; name: libaot-System.Linq.Queryable.dll.so
		ptr null; void* handle (0x0)
	}, ; 676
	%struct.DSOCacheEntry {
		i64 7775464348757467397, ; hash 0x6be7ffa107672105, from name: libaot-Xamarin.AndroidX.CustomView
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.224_name, ; name: libaot-Xamarin.AndroidX.CustomView.dll.so
		ptr null; void* handle (0x0)
	}, ; 677
	%struct.DSOCacheEntry {
		i64 7778693613968946241, ; hash 0x6bf378a0ed37f441, from name: aot-Xamarin.AndroidX.DocumentFile.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.226_name, ; name: libaot-Xamarin.AndroidX.DocumentFile.dll.so
		ptr null; void* handle (0x0)
	}, ; 678
	%struct.DSOCacheEntry {
		i64 7780906328696880158, ; hash 0x6bfb5514b890fc1e, from name: libaot-System.Linq.Parallel.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.69_name, ; name: libaot-System.Linq.Parallel.dll.so
		ptr null; void* handle (0x0)
	}, ; 679
	%struct.DSOCacheEntry {
		i64 7800101709867366296, ; hash 0x6c3f872dac8fb798, from name: libaot-System.Globalization.Extensions
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.51_name, ; name: libaot-System.Globalization.Extensions.dll.so
		ptr null; void* handle (0x0)
	}, ; 680
	%struct.DSOCacheEntry {
		i64 7820441508502274321, ; hash 0x6c87ca1e14ff8111, from name: System.Data
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.34_name, ; name: libaot-System.Data.dll.so
		ptr null; void* handle (0x0)
	}, ; 681
	%struct.DSOCacheEntry {
		i64 7836164640616011524, ; hash 0x6cbfa6390d64d704, from name: Xamarin.AndroidX.AppCompat.AppCompatResources
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.210_name, ; name: libaot-Xamarin.AndroidX.AppCompat.AppCompatResources.dll.so
		ptr null; void* handle (0x0)
	}, ; 682
	%struct.DSOCacheEntry {
		i64 7852346557833039773, ; hash 0x6cf9239740e64f9d, from name: libxamarin-debug-app-helper
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.8_name, ; name: libxamarin-debug-app-helper.so
		ptr null; void* handle (0x0)
	}, ; 683
	%struct.DSOCacheEntry {
		i64 7855888427540559711, ; hash 0x6d05b8e70ea8375f, from name: System.Console.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.30_name, ; name: libaot-System.Console.dll.so
		ptr null; void* handle (0x0)
	}, ; 684
	%struct.DSOCacheEntry {
		i64 7857979991546028193, ; hash 0x6d0d272b403a60a1, from name: Xamarin.AndroidX.VectorDrawable.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.264_name, ; name: libaot-Xamarin.AndroidX.VectorDrawable.dll.so
		ptr null; void* handle (0x0)
	}, ; 685
	%struct.DSOCacheEntry {
		i64 7887176676410591982, ; hash 0x6d74e1662e330aee, from name: System.Resources.Reader.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.108_name, ; name: libaot-System.Resources.Reader.dll.so
		ptr null; void* handle (0x0)
	}, ; 686
	%struct.DSOCacheEntry {
		i64 7897713672933564717, ; hash 0x6d9a50bddcf3612d, from name: libaot-Microsoft.Extensions.DependencyInjection.Abstractions.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.187_name, ; name: libaot-Microsoft.Extensions.DependencyInjection.Abstractions.dll.so
		ptr null; void* handle (0x0)
	}, ; 687
	%struct.DSOCacheEntry {
		i64 7912366012189275497, ; hash 0x6dce5ef7716a7569, from name: aot-System.Xml.XPath.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.170_name, ; name: libaot-System.Xml.XPath.dll.so
		ptr null; void* handle (0x0)
	}, ; 688
	%struct.DSOCacheEntry {
		i64 7943954064725388365, ; hash 0x6e3e98220bfa2c4d, from name: Xamarin.KotlinX.Coroutines.Android.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.281_name, ; name: libaot-Xamarin.KotlinX.Coroutines.Android.dll.so
		ptr null; void* handle (0x0)
	}, ; 689
	%struct.DSOCacheEntry {
		i64 7948127817007369596, ; hash 0x6e4d6c237a200d7c, from name: aot-System.Private.Xml.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.98_name, ; name: libaot-System.Private.Xml.dll.so
		ptr null; void* handle (0x0)
	}, ; 690
	%struct.DSOCacheEntry {
		i64 7967256607995392853, ; hash 0x6e9161ac31f2f355, from name: Xamarin.AndroidX.Interpolator.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.234_name, ; name: libaot-Xamarin.AndroidX.Interpolator.dll.so
		ptr null; void* handle (0x0)
	}, ; 691
	%struct.DSOCacheEntry {
		i64 7968925550521657015, ; hash 0x6e974f912860a6b7, from name: aot-System.Net.Sockets
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.85_name, ; name: libaot-System.Net.Sockets.dll.so
		ptr null; void* handle (0x0)
	}, ; 692
	%struct.DSOCacheEntry {
		i64 7969273780906385394, ; hash 0x6e988c47dcc25ff2, from name: aot-System.IO.FileSystem.AccessControl.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.57_name, ; name: libaot-System.IO.FileSystem.AccessControl.dll.so
		ptr null; void* handle (0x0)
	}, ; 693
	%struct.DSOCacheEntry {
		i64 7974095695751206426, ; hash 0x6ea9adc96638d61a, from name: libaot-System.Text.Json.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.147_name, ; name: libaot-System.Text.Json.dll.so
		ptr null; void* handle (0x0)
	}, ; 694
	%struct.DSOCacheEntry {
		i64 7994158341285659513, ; hash 0x6ef0f4a8128ec379, from name: aot-Xamarin.AndroidX.LocalBroadcastManager.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.247_name, ; name: libaot-Xamarin.AndroidX.LocalBroadcastManager.dll.so
		ptr null; void* handle (0x0)
	}, ; 695
	%struct.DSOCacheEntry {
		i64 8009722176982666457, ; hash 0x6f283fe1f49eccd9, from name: libaot-System.ServiceProcess
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.142_name, ; name: libaot-System.ServiceProcess.dll.so
		ptr null; void* handle (0x0)
	}, ; 696
	%struct.DSOCacheEntry {
		i64 8025517457475554965, ; hash 0x6f605d9b4786ce95, from name: WindowsBase
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.175_name, ; name: libaot-WindowsBase.dll.so
		ptr null; void* handle (0x0)
	}, ; 697
	%struct.DSOCacheEntry {
		i64 8032521455064955024, ; hash 0x6f793fb48bd9b890, from name: libaot-System.IO.Pipes.AccessControl
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.64_name, ; name: libaot-System.IO.Pipes.AccessControl.dll.so
		ptr null; void* handle (0x0)
	}, ; 698
	%struct.DSOCacheEntry {
		i64 8046460106795142811, ; hash 0x6faac4d5cce04e9b, from name: aot-Microsoft.Maui.Controls
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.194_name, ; name: libaot-Microsoft.Maui.Controls.dll.so
		ptr null; void* handle (0x0)
	}, ; 699
	%struct.DSOCacheEntry {
		i64 8051240247547515680, ; hash 0x6fbbc0590c65d320, from name: libaot-System.Diagnostics.TextWriterTraceListener
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.41_name, ; name: libaot-System.Diagnostics.TextWriterTraceListener.dll.so
		ptr null; void* handle (0x0)
	}, ; 700
	%struct.DSOCacheEntry {
		i64 8065417565229572634, ; hash 0x6fee1e8b0cb4621a, from name: aot-Mono.Android.Export
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.179_name, ; name: libaot-Mono.Android.Export.dll.so
		ptr null; void* handle (0x0)
	}, ; 701
	%struct.DSOCacheEntry {
		i64 8069027220385562465, ; hash 0x6ffaf1816209ff61, from name: aot-System.Text.Encodings.Web
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.146_name, ; name: libaot-System.Text.Encodings.Web.dll.so
		ptr null; void* handle (0x0)
	}, ; 702
	%struct.DSOCacheEntry {
		i64 8087206902342787202, ; hash 0x703b87d46f3aa082, from name: System.Diagnostics.DiagnosticSource
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.37_name, ; name: libaot-System.Diagnostics.DiagnosticSource.dll.so
		ptr null; void* handle (0x0)
	}, ; 703
	%struct.DSOCacheEntry {
		i64 8092331298404567383, ; hash 0x704dbc70de2e0957, from name: aot-_Microsoft.Android.Resource.Designer
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.10_name, ; name: libaot-_Microsoft.Android.Resource.Designer.dll.so
		ptr null; void* handle (0x0)
	}, ; 704
	%struct.DSOCacheEntry {
		i64 8113615946733131500, ; hash 0x70995ab73cf916ec, from name: System.Reflection.Extensions
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.103_name, ; name: libaot-System.Reflection.Extensions.dll.so
		ptr null; void* handle (0x0)
	}, ; 705
	%struct.DSOCacheEntry {
		i64 8127069655002304285, ; hash 0x70c926cacb44cf1d, from name: libaot-System.Security.Cryptography.Cng.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.130_name, ; name: libaot-System.Security.Cryptography.Cng.dll.so
		ptr null; void* handle (0x0)
	}, ; 706
	%struct.DSOCacheEntry {
		i64 8129154283138605531, ; hash 0x70d08ec01ad261db, from name: mono-component-marshal-ilgen
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.5_name, ; name: libmono-component-marshal-ilgen.so
		ptr null; void* handle (0x0)
	}, ; 707
	%struct.DSOCacheEntry {
		i64 8150551902651424003, ; hash 0x711c93c5a0ec1d03, from name: aot-System.Xml.ReaderWriter.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.166_name, ; name: libaot-System.Xml.ReaderWriter.dll.so
		ptr null; void* handle (0x0)
	}, ; 708
	%struct.DSOCacheEntry {
		i64 8152743950825243490, ; hash 0x71245d6d9da74362, from name: aot-System.ValueTuple.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.161_name, ; name: libaot-System.ValueTuple.dll.so
		ptr null; void* handle (0x0)
	}, ; 709
	%struct.DSOCacheEntry {
		i64 8177832365675968076, ; hash 0x717d7f3564cef64c, from name: System.Text.Encoding.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.145_name, ; name: libaot-System.Text.Encoding.dll.so
		ptr null; void* handle (0x0)
	}, ; 710
	%struct.DSOCacheEntry {
		i64 8185542183669246576, ; hash 0x7198e33f4794aa70, from name: System.Collections
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.22_name, ; name: libaot-System.Collections.dll.so
		ptr null; void* handle (0x0)
	}, ; 711
	%struct.DSOCacheEntry {
		i64 8187640529827139739, ; hash 0x71a057ae90f0109b, from name: Xamarin.KotlinX.Coroutines.Android
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.281_name, ; name: libaot-Xamarin.KotlinX.Coroutines.Android.dll.so
		ptr null; void* handle (0x0)
	}, ; 712
	%struct.DSOCacheEntry {
		i64 8189823481260868218, ; hash 0x71a819108db5027a, from name: libaot-System.Collections.Concurrent
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.18_name, ; name: libaot-System.Collections.Concurrent.dll.so
		ptr null; void* handle (0x0)
	}, ; 713
	%struct.DSOCacheEntry {
		i64 8190527267494392940, ; hash 0x71aa99278e27746c, from name: aot-Xamarin.AndroidX.Core.Core.Ktx
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.222_name, ; name: libaot-Xamarin.AndroidX.Core.Core.Ktx.dll.so
		ptr null; void* handle (0x0)
	}, ; 714
	%struct.DSOCacheEntry {
		i64 8228747456654734221, ; hash 0x72326236cc4df38d, from name: libaot-System.Security.Cryptography.Encoding.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.132_name, ; name: libaot-System.Security.Cryptography.Encoding.dll.so
		ptr null; void* handle (0x0)
	}, ; 715
	%struct.DSOCacheEntry {
		i64 8245499330237193625, ; hash 0x726de5f44e825d99, from name: aot-System.Core
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.31_name, ; name: libaot-System.Core.dll.so
		ptr null; void* handle (0x0)
	}, ; 716
	%struct.DSOCacheEntry {
		i64 8251851702815229406, ; hash 0x728477674d8105de, from name: libaot-Xamarin.AndroidX.Activity.Ktx
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.205_name, ; name: libaot-Xamarin.AndroidX.Activity.Ktx.dll.so
		ptr null; void* handle (0x0)
	}, ; 717
	%struct.DSOCacheEntry {
		i64 8254241629936925398, ; hash 0x728cf50792a1bad6, from name: aot-System.Web
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.163_name, ; name: libaot-System.Web.dll.so
		ptr null; void* handle (0x0)
	}, ; 718
	%struct.DSOCacheEntry {
		i64 8263085237863532237, ; hash 0x72ac603e7fa146cd, from name: libaot-System.Xml.XmlDocument
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.171_name, ; name: libaot-System.Xml.XmlDocument.dll.so
		ptr null; void* handle (0x0)
	}, ; 719
	%struct.DSOCacheEntry {
		i64 8290566009206869855, ; hash 0x730e01dc2db40f5f, from name: libaot-Xamarin.AndroidX.ProfileInstaller.ProfileInstaller
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.253_name, ; name: libaot-Xamarin.AndroidX.ProfileInstaller.ProfileInstaller.dll.so
		ptr null; void* handle (0x0)
	}, ; 720
	%struct.DSOCacheEntry {
		i64 8290740647658429042, ; hash 0x730ea0b15c929a72, from name: System.Runtime.Extensions
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.113_name, ; name: libaot-System.Runtime.Extensions.dll.so
		ptr null; void* handle (0x0)
	}, ; 721
	%struct.DSOCacheEntry {
		i64 8297784397360621324, ; hash 0x7327a6f22375670c, from name: aot-System.ValueTuple
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.161_name, ; name: libaot-System.ValueTuple.dll.so
		ptr null; void* handle (0x0)
	}, ; 722
	%struct.DSOCacheEntry {
		i64 8298665547085841745, ; hash 0x732ac858cbd30551, from name: aot-System.Text.Encodings.Web.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.146_name, ; name: libaot-System.Text.Encodings.Web.dll.so
		ptr null; void* handle (0x0)
	}, ; 723
	%struct.DSOCacheEntry {
		i64 8313797594473349417, ; hash 0x73608add2114c129, from name: aot-System.Data.Common
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.32_name, ; name: libaot-System.Data.Common.dll.so
		ptr null; void* handle (0x0)
	}, ; 724
	%struct.DSOCacheEntry {
		i64 8318905602908530212, ; hash 0x7372b092055ea624, from name: System.ComponentModel.DataAnnotations
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.24_name, ; name: libaot-System.ComponentModel.DataAnnotations.dll.so
		ptr null; void* handle (0x0)
	}, ; 725
	%struct.DSOCacheEntry {
		i64 8335746768722831773, ; hash 0x73ae85857f55a99d, from name: aot-System.Runtime.Numerics
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.120_name, ; name: libaot-System.Runtime.Numerics.dll.so
		ptr null; void* handle (0x0)
	}, ; 726
	%struct.DSOCacheEntry {
		i64 8336567361463961013, ; hash 0x73b16fd8a22cc5b5, from name: libaot-Microsoft.Extensions.Primitives
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.192_name, ; name: libaot-Microsoft.Extensions.Primitives.dll.so
		ptr null; void* handle (0x0)
	}, ; 727
	%struct.DSOCacheEntry {
		i64 8339419988800899470, ; hash 0x73bb924bb145098e, from name: aot-System.Resources.Reader
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.108_name, ; name: libaot-System.Resources.Reader.dll.so
		ptr null; void* handle (0x0)
	}, ; 728
	%struct.DSOCacheEntry {
		i64 8340594550852286012, ; hash 0x73bfbe8dbb1bf63c, from name: aot-System.Runtime.InteropServices.RuntimeInformation.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.116_name, ; name: libaot-System.Runtime.InteropServices.RuntimeInformation.dll.so
		ptr null; void* handle (0x0)
	}, ; 729
	%struct.DSOCacheEntry {
		i64 8362087432769215690, ; hash 0x740c1a3742f79cca, from name: System.Private.Xml.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.98_name, ; name: libaot-System.Private.Xml.dll.so
		ptr null; void* handle (0x0)
	}, ; 730
	%struct.DSOCacheEntry {
		i64 8368701292315763008, ; hash 0x7423997c6fd56140, from name: System.Security.Cryptography
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.136_name, ; name: libaot-System.Security.Cryptography.dll.so
		ptr null; void* handle (0x0)
	}, ; 731
	%struct.DSOCacheEntry {
		i64 8375722837974120975, ; hash 0x743c8b8b6e92fa0f, from name: aot-System.Runtime.Serialization.Formatters.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.121_name, ; name: libaot-System.Runtime.Serialization.Formatters.dll.so
		ptr null; void* handle (0x0)
	}, ; 732
	%struct.DSOCacheEntry {
		i64 8377219763740060964, ; hash 0x7441dcfd9f1bad24, from name: libaot-Xamarin.AndroidX.DynamicAnimation
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.228_name, ; name: libaot-Xamarin.AndroidX.DynamicAnimation.dll.so
		ptr null; void* handle (0x0)
	}, ; 733
	%struct.DSOCacheEntry {
		i64 8382924305585776176, ; hash 0x7456213dc56da630, from name: Xamarin.AndroidX.ViewPager2.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.268_name, ; name: libaot-Xamarin.AndroidX.ViewPager2.dll.so
		ptr null; void* handle (0x0)
	}, ; 734
	%struct.DSOCacheEntry {
		i64 8392333777418328833, ; hash 0x74778f1b27881b01, from name: libmonodroid.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.7_name, ; name: libmonodroid.so
		ptr null; void* handle (0x0)
	}, ; 735
	%struct.DSOCacheEntry {
		i64 8400946068439094610, ; hash 0x749627f06a86d552, from name: aot-Xamarin.AndroidX.ConstraintLayout.Core.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.219_name, ; name: libaot-Xamarin.AndroidX.ConstraintLayout.Core.dll.so
		ptr null; void* handle (0x0)
	}, ; 736
	%struct.DSOCacheEntry {
		i64 8411503554270155775, ; hash 0x74bba9eaa33553ff, from name: aot-System.IO.FileSystem
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.61_name, ; name: libaot-System.IO.FileSystem.dll.so
		ptr null; void* handle (0x0)
	}, ; 737
	%struct.DSOCacheEntry {
		i64 8426919725312979251, ; hash 0x74f26ed7aa033133, from name: Xamarin.AndroidX.Lifecycle.Process
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.240_name, ; name: libaot-Xamarin.AndroidX.Lifecycle.Process.dll.so
		ptr null; void* handle (0x0)
	}, ; 738
	%struct.DSOCacheEntry {
		i64 8449868472357382742, ; hash 0x7543f69b35a26a56, from name: libaot-Xamarin.AndroidX.Activity.Ktx.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.205_name, ; name: libaot-Xamarin.AndroidX.Activity.Ktx.dll.so
		ptr null; void* handle (0x0)
	}, ; 739
	%struct.DSOCacheEntry {
		i64 8466993038139643024, ; hash 0x7580cd4ee204d490, from name: System.Xml.ReaderWriter.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.166_name, ; name: libaot-System.Xml.ReaderWriter.dll.so
		ptr null; void* handle (0x0)
	}, ; 740
	%struct.DSOCacheEntry {
		i64 8478719509125675648, ; hash 0x75aa7678ab9c3a80, from name: aot-Microsoft.Extensions.Options
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.191_name, ; name: libaot-Microsoft.Extensions.Options.dll.so
		ptr null; void* handle (0x0)
	}, ; 741
	%struct.DSOCacheEntry {
		i64 8518412311883997971, ; hash 0x76377add7c28e313, from name: System.Collections.Immutable
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.19_name, ; name: libaot-System.Collections.Immutable.dll.so
		ptr null; void* handle (0x0)
	}, ; 742
	%struct.DSOCacheEntry {
		i64 8522025752637549819, ; hash 0x7644514538b12cfb, from name: aot-Mono.Android.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.181_name, ; name: libaot-Mono.Android.dll.so
		ptr null; void* handle (0x0)
	}, ; 743
	%struct.DSOCacheEntry {
		i64 8539930972764622299, ; hash 0x7683edf925fdcddb, from name: aot-Xamarin.AndroidX.Navigation.UI.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.251_name, ; name: libaot-Xamarin.AndroidX.Navigation.UI.dll.so
		ptr null; void* handle (0x0)
	}, ; 744
	%struct.DSOCacheEntry {
		i64 8550103612409229541, ; hash 0x76a811ef626fb0e5, from name: Mono.Android.Export.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.179_name, ; name: libaot-Mono.Android.Export.dll.so
		ptr null; void* handle (0x0)
	}, ; 745
	%struct.DSOCacheEntry {
		i64 8563666267364444763, ; hash 0x76d841191140ca5b, from name: System.Private.Uri
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.96_name, ; name: libaot-System.Private.Uri.dll.so
		ptr null; void* handle (0x0)
	}, ; 746
	%struct.DSOCacheEntry {
		i64 8572732944665407299, ; hash 0x76f877316111ef43, from name: aot-System.ComponentModel.Annotations.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.23_name, ; name: libaot-System.ComponentModel.Annotations.dll.so
		ptr null; void* handle (0x0)
	}, ; 747
	%struct.DSOCacheEntry {
		i64 8575910900732583274, ; hash 0x7703c186ef90dd6a, from name: libaot-Xamarin.Kotlin.StdLib.Common.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.278_name, ; name: libaot-Xamarin.Kotlin.StdLib.Common.dll.so
		ptr null; void* handle (0x0)
	}, ; 748
	%struct.DSOCacheEntry {
		i64 8579148903550987409, ; hash 0x770f42793756ac91, from name: aot-System.Net.Security.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.83_name, ; name: libaot-System.Net.Security.dll.so
		ptr null; void* handle (0x0)
	}, ; 749
	%struct.DSOCacheEntry {
		i64 8597627968088623236, ; hash 0x7750e915b4e2c884, from name: aot-System.Windows.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.164_name, ; name: libaot-System.Windows.dll.so
		ptr null; void* handle (0x0)
	}, ; 750
	%struct.DSOCacheEntry {
		i64 8612207396229290788, ; hash 0x7784b4ff583d1b24, from name: aot-System.Net.Http.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.74_name, ; name: libaot-System.Net.Http.dll.so
		ptr null; void* handle (0x0)
	}, ; 751
	%struct.DSOCacheEntry {
		i64 8623099412595258045, ; hash 0x77ab673a869eb2bd, from name: libaot-System.Text.Encodings.Web.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.146_name, ; name: libaot-System.Text.Encodings.Web.dll.so
		ptr null; void* handle (0x0)
	}, ; 752
	%struct.DSOCacheEntry {
		i64 8626175481042262068, ; hash 0x77b654e585b55834, from name: Java.Interop
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.178_name, ; name: libaot-Java.Interop.dll.so
		ptr null; void* handle (0x0)
	}, ; 753
	%struct.DSOCacheEntry {
		i64 8626645781824515032, ; hash 0x77b800a1f4c5abd8, from name: System.Native
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.1_name, ; name: libSystem.Native.so
		ptr null; void* handle (0x0)
	}, ; 754
	%struct.DSOCacheEntry {
		i64 8628664141348535547, ; hash 0x77bf2c51e73afcfb, from name: Xamarin.AndroidX.Fragment.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.232_name, ; name: libaot-Xamarin.AndroidX.Fragment.dll.so
		ptr null; void* handle (0x0)
	}, ; 755
	%struct.DSOCacheEntry {
		i64 8635874246808490971, ; hash 0x77d8c9df65f6d3db, from name: libaot-Xamarin.AndroidX.Window.Extensions.Core.Core
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.270_name, ; name: libaot-Xamarin.AndroidX.Window.Extensions.Core.Core.dll.so
		ptr null; void* handle (0x0)
	}, ; 756
	%struct.DSOCacheEntry {
		i64 8639588376636138208, ; hash 0x77e5fbdaa2fda2e0, from name: Xamarin.AndroidX.Navigation.Runtime
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.250_name, ; name: libaot-Xamarin.AndroidX.Navigation.Runtime.dll.so
		ptr null; void* handle (0x0)
	}, ; 757
	%struct.DSOCacheEntry {
		i64 8645244703776865449, ; hash 0x77fa1440ecf27ca9, from name: libaot-System.Diagnostics.Tools.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.42_name, ; name: libaot-System.Diagnostics.Tools.dll.so
		ptr null; void* handle (0x0)
	}, ; 758
	%struct.DSOCacheEntry {
		i64 8646040384738694143, ; hash 0x77fce7ebd60813ff, from name: aot-Xamarin.AndroidX.Lifecycle.Process.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.240_name, ; name: libaot-Xamarin.AndroidX.Lifecycle.Process.dll.so
		ptr null; void* handle (0x0)
	}, ; 759
	%struct.DSOCacheEntry {
		i64 8651559005259796579, ; hash 0x78108313cdd79063, from name: aot-System.Net.HttpListener
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.75_name, ; name: libaot-System.Net.HttpListener.dll.so
		ptr null; void* handle (0x0)
	}, ; 760
	%struct.DSOCacheEntry {
		i64 8653012873262651253, ; hash 0x7815ad5cd3b3d775, from name: System.Security.Cryptography.Cng.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.130_name, ; name: libaot-System.Security.Cryptography.Cng.dll.so
		ptr null; void* handle (0x0)
	}, ; 761
	%struct.DSOCacheEntry {
		i64 8658236679209272073, ; hash 0x78283c62ed86c309, from name: libaot-Xamarin.AndroidX.ViewPager
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.267_name, ; name: libaot-Xamarin.AndroidX.ViewPager.dll.so
		ptr null; void* handle (0x0)
	}, ; 762
	%struct.DSOCacheEntry {
		i64 8659486139845940425, ; hash 0x782cacc3a6ef94c9, from name: System.Runtime.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.126_name, ; name: libaot-System.Runtime.dll.so
		ptr null; void* handle (0x0)
	}, ; 763
	%struct.DSOCacheEntry {
		i64 8659971956412730285, ; hash 0x782e669ca2d34bad, from name: aot-Xamarin.AndroidX.VersionedParcelable.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.266_name, ; name: libaot-Xamarin.AndroidX.VersionedParcelable.dll.so
		ptr null; void* handle (0x0)
	}, ; 764
	%struct.DSOCacheEntry {
		i64 8671401243335832124, ; hash 0x7857017cdde9b23c, from name: aot-System.IO.FileSystem.DriveInfo
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.58_name, ; name: libaot-System.IO.FileSystem.DriveInfo.dll.so
		ptr null; void* handle (0x0)
	}, ; 765
	%struct.DSOCacheEntry {
		i64 8684531736582871431, ; hash 0x7885a79a0fa0d987, from name: System.IO.Compression.FileSystem
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.54_name, ; name: libaot-System.IO.Compression.FileSystem.dll.so
		ptr null; void* handle (0x0)
	}, ; 766
	%struct.DSOCacheEntry {
		i64 8696232653671526320, ; hash 0x78af39861e3e6fb0, from name: libaot-Microsoft.VisualBasic.Core.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.12_name, ; name: libaot-Microsoft.VisualBasic.Core.dll.so
		ptr null; void* handle (0x0)
	}, ; 767
	%struct.DSOCacheEntry {
		i64 8706152889918323109, ; hash 0x78d277ed1bd279a5, from name: aot-System.Runtime.Serialization.Json
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.122_name, ; name: libaot-System.Runtime.Serialization.Json.dll.so
		ptr null; void* handle (0x0)
	}, ; 768
	%struct.DSOCacheEntry {
		i64 8711908280639484504, ; hash 0x78e6ea6c6f4cf258, from name: aot-System.Xml.XPath
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.170_name, ; name: libaot-System.Xml.XPath.dll.so
		ptr null; void* handle (0x0)
	}, ; 769
	%struct.DSOCacheEntry {
		i64 8717011573162134445, ; hash 0x78f90bd7514c4bad, from name: aot-System.Resources.Writer
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.110_name, ; name: libaot-System.Resources.Writer.dll.so
		ptr null; void* handle (0x0)
	}, ; 770
	%struct.DSOCacheEntry {
		i64 8722198811053178666, ; hash 0x790b799b4128bf2a, from name: aot-Xamarin.Kotlin.StdLib.Common
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.278_name, ; name: libaot-Xamarin.Kotlin.StdLib.Common.dll.so
		ptr null; void* handle (0x0)
	}, ; 771
	%struct.DSOCacheEntry {
		i64 8730145678495508517, ; hash 0x7927b53d8422e825, from name: Xamarin.AndroidX.Core.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.221_name, ; name: libaot-Xamarin.AndroidX.Core.dll.so
		ptr null; void* handle (0x0)
	}, ; 772
	%struct.DSOCacheEntry {
		i64 8747185242276956984, ; hash 0x79643ea21e750b38, from name: libaot-Xamarin.Android.Glide.DiskLruCache
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.202_name, ; name: libaot-Xamarin.Android.Glide.DiskLruCache.dll.so
		ptr null; void* handle (0x0)
	}, ; 773
	%struct.DSOCacheEntry {
		i64 8747763348793017252, ; hash 0x79664c6b07fd43a4, from name: libaot-System.Private.CoreLib.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.283_name, ; name: libaot-System.Private.CoreLib.dll.so
		ptr null; void* handle (0x0)
	}, ; 774
	%struct.DSOCacheEntry {
		i64 8760858219412156768, ; hash 0x7994d2222f9f7160, from name: System.Linq.Expressions.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.68_name, ; name: libaot-System.Linq.Expressions.dll.so
		ptr null; void* handle (0x0)
	}, ; 775
	%struct.DSOCacheEntry {
		i64 8761982123773840073, ; hash 0x7998d0518fdccac9, from name: aot-System.Text.RegularExpressions.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.148_name, ; name: libaot-System.Text.RegularExpressions.dll.so
		ptr null; void* handle (0x0)
	}, ; 776
	%struct.DSOCacheEntry {
		i64 8769641383188884842, ; hash 0x79b4065fdc89ed6a, from name: libaot-Xamarin.AndroidX.Arch.Core.Common.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.211_name, ; name: libaot-Xamarin.AndroidX.Arch.Core.Common.dll.so
		ptr null; void* handle (0x0)
	}, ; 777
	%struct.DSOCacheEntry {
		i64 8772604801161716260, ; hash 0x79be8d9660216224, from name: aot-Mono.Android
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.181_name, ; name: libaot-Mono.Android.dll.so
		ptr null; void* handle (0x0)
	}, ; 778
	%struct.DSOCacheEntry {
		i64 8774486596666825193, ; hash 0x79c53d1208c099e9, from name: libaot-System.Resources.ResourceManager.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.109_name, ; name: libaot-System.Resources.ResourceManager.dll.so
		ptr null; void* handle (0x0)
	}, ; 779
	%struct.DSOCacheEntry {
		i64 8812786412666749070, ; hash 0x7a4d4e8cd864008e, from name: aot-System.Diagnostics.DiagnosticSource
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.37_name, ; name: libaot-System.Diagnostics.DiagnosticSource.dll.so
		ptr null; void* handle (0x0)
	}, ; 780
	%struct.DSOCacheEntry {
		i64 8824907823227734965, ; hash 0x7a785ee8ab0e0bb5, from name: aot-System.Private.Uri
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.96_name, ; name: libaot-System.Private.Uri.dll.so
		ptr null; void* handle (0x0)
	}, ; 781
	%struct.DSOCacheEntry {
		i64 8829817152319216766, ; hash 0x7a89cfeaeba35c7e, from name: System.Reflection.Extensions.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.103_name, ; name: libaot-System.Reflection.Extensions.dll.so
		ptr null; void* handle (0x0)
	}, ; 782
	%struct.DSOCacheEntry {
		i64 8852993281900922886, ; hash 0x7adc267c169fc806, from name: libaot-System.Security.SecureString.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.139_name, ; name: libaot-System.Security.SecureString.dll.so
		ptr null; void* handle (0x0)
	}, ; 783
	%struct.DSOCacheEntry {
		i64 8879040545617680294, ; hash 0x7b38b05543d517a6, from name: libaot-Xamarin.AndroidX.Core.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.221_name, ; name: libaot-Xamarin.AndroidX.Core.dll.so
		ptr null; void* handle (0x0)
	}, ; 784
	%struct.DSOCacheEntry {
		i64 8879340544350621822, ; hash 0x7b39c12e29be107e, from name: aot-Microsoft.Extensions.Configuration.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.184_name, ; name: libaot-Microsoft.Extensions.Configuration.dll.so
		ptr null; void* handle (0x0)
	}, ; 785
	%struct.DSOCacheEntry {
		i64 8885752880049328355, ; hash 0x7b50892a693e90e3, from name: libaot-System.Diagnostics.Process.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.39_name, ; name: libaot-System.Diagnostics.Process.dll.so
		ptr null; void* handle (0x0)
	}, ; 786
	%struct.DSOCacheEntry {
		i64 8906503468682351602, ; hash 0x7b9a41b7519893f2, from name: aot-System.Threading.Channels
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.149_name, ; name: libaot-System.Threading.Channels.dll.so
		ptr null; void* handle (0x0)
	}, ; 787
	%struct.DSOCacheEntry {
		i64 8919566953064948674, ; hash 0x7bc8aae2cbbfe3c2, from name: Xamarin.AndroidX.LocalBroadcastManager.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.247_name, ; name: libaot-Xamarin.AndroidX.LocalBroadcastManager.dll.so
		ptr null; void* handle (0x0)
	}, ; 788
	%struct.DSOCacheEntry {
		i64 8934906610293113664, ; hash 0x7bff2a390fcf8340, from name: aot-Xamarin.AndroidX.ViewPager2
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.268_name, ; name: libaot-Xamarin.AndroidX.ViewPager2.dll.so
		ptr null; void* handle (0x0)
	}, ; 789
	%struct.DSOCacheEntry {
		i64 8941376889969657626, ; hash 0x7c1626e87187471a, from name: System.Xml.XDocument
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.168_name, ; name: libaot-System.Xml.XDocument.dll.so
		ptr null; void* handle (0x0)
	}, ; 790
	%struct.DSOCacheEntry {
		i64 8951477988056063522, ; hash 0x7c3a09cd9ccf5e22, from name: Xamarin.AndroidX.ProfileInstaller.ProfileInstaller
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.253_name, ; name: libaot-Xamarin.AndroidX.ProfileInstaller.ProfileInstaller.dll.so
		ptr null; void* handle (0x0)
	}, ; 791
	%struct.DSOCacheEntry {
		i64 8954753533646919997, ; hash 0x7c45ace50032d93d, from name: System.Runtime.Serialization.Json
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.122_name, ; name: libaot-System.Runtime.Serialization.Json.dll.so
		ptr null; void* handle (0x0)
	}, ; 792
	%struct.DSOCacheEntry {
		i64 8959200230209785136, ; hash 0x7c55792439408d30, from name: aot-Xamarin.AndroidX.Fragment.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.232_name, ; name: libaot-Xamarin.AndroidX.Fragment.dll.so
		ptr null; void* handle (0x0)
	}, ; 793
	%struct.DSOCacheEntry {
		i64 8967164847000689438, ; hash 0x7c71c4eb13d89b1e, from name: libaot-System.Private.Uri.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.96_name, ; name: libaot-System.Private.Uri.dll.so
		ptr null; void* handle (0x0)
	}, ; 794
	%struct.DSOCacheEntry {
		i64 8970579742937463036, ; hash 0x7c7de6bf7f1a38fc, from name: System.ServiceProcess.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.142_name, ; name: libaot-System.ServiceProcess.dll.so
		ptr null; void* handle (0x0)
	}, ; 795
	%struct.DSOCacheEntry {
		i64 8989231607438237337, ; hash 0x7cc02a851d11de99, from name: aot-System.Resources.Reader.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.108_name, ; name: libaot-System.Resources.Reader.dll.so
		ptr null; void* handle (0x0)
	}, ; 796
	%struct.DSOCacheEntry {
		i64 8996708296777609784, ; hash 0x7cdaba87813d3238, from name: aot-System.Security.SecureString
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.139_name, ; name: libaot-System.Security.SecureString.dll.so
		ptr null; void* handle (0x0)
	}, ; 797
	%struct.DSOCacheEntry {
		i64 9024223692735279012, ; hash 0x7d3c7ba2db266fa4, from name: System.Net.WebSockets.Client.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.89_name, ; name: libaot-System.Net.WebSockets.Client.dll.so
		ptr null; void* handle (0x0)
	}, ; 798
	%struct.DSOCacheEntry {
		i64 9032777207089403703, ; hash 0x7d5adf031bcf1737, from name: libaot-System.ObjectModel
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.94_name, ; name: libaot-System.ObjectModel.dll.so
		ptr null; void* handle (0x0)
	}, ; 799
	%struct.DSOCacheEntry {
		i64 9041676291023952799, ; hash 0x7d7a7cae8c8ddb9f, from name: aot-System.Reflection.DispatchProxy.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.99_name, ; name: libaot-System.Reflection.DispatchProxy.dll.so
		ptr null; void* handle (0x0)
	}, ; 800
	%struct.DSOCacheEntry {
		i64 9049979032622352945, ; hash 0x7d97fbfb38304a31, from name: libaot-System.IO.Compression
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.56_name, ; name: libaot-System.IO.Compression.dll.so
		ptr null; void* handle (0x0)
	}, ; 801
	%struct.DSOCacheEntry {
		i64 9055317871244365271, ; hash 0x7daaf3a073c44dd7, from name: monodroid
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.7_name, ; name: libmonodroid.so
		ptr null; void* handle (0x0)
	}, ; 802
	%struct.DSOCacheEntry {
		i64 9071850823194088089, ; hash 0x7de5b0424bd19299, from name: libaot-System.Reflection.Emit.ILGeneration.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.100_name, ; name: libaot-System.Reflection.Emit.ILGeneration.dll.so
		ptr null; void* handle (0x0)
	}, ; 803
	%struct.DSOCacheEntry {
		i64 9088245146908530154, ; hash 0x7e1feecf3d2695ea, from name: aot-System.Security.Cryptography.Csp
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.131_name, ; name: libaot-System.Security.Cryptography.Csp.dll.so
		ptr null; void* handle (0x0)
	}, ; 804
	%struct.DSOCacheEntry {
		i64 9089904904477581872, ; hash 0x7e25d459a977a230, from name: aot-Xamarin.AndroidX.Collection.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.215_name, ; name: libaot-Xamarin.AndroidX.Collection.dll.so
		ptr null; void* handle (0x0)
	}, ; 805
	%struct.DSOCacheEntry {
		i64 9098834300896121870, ; hash 0x7e458d96c70d940e, from name: libaot-System.Threading.Tasks.Extensions.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.152_name, ; name: libaot-System.Threading.Tasks.Extensions.dll.so
		ptr null; void* handle (0x0)
	}, ; 806
	%struct.DSOCacheEntry {
		i64 9119050137727118245, ; hash 0x7e8d5fc91433aba5, from name: libaot-Xamarin.AndroidX.Print.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.252_name, ; name: libaot-Xamarin.AndroidX.Print.dll.so
		ptr null; void* handle (0x0)
	}, ; 807
	%struct.DSOCacheEntry {
		i64 9126418878914345661, ; hash 0x7ea78d9dd51bbabd, from name: aot-System.Globalization.Calendars
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.50_name, ; name: libaot-System.Globalization.Calendars.dll.so
		ptr null; void* handle (0x0)
	}, ; 808
	%struct.DSOCacheEntry {
		i64 9137369390292547645, ; hash 0x7ece750c71ea383d, from name: aot-System.Reflection.Primitives.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.105_name, ; name: libaot-System.Reflection.Primitives.dll.so
		ptr null; void* handle (0x0)
	}, ; 809
	%struct.DSOCacheEntry {
		i64 9138683372487561558, ; hash 0x7ed3201bc3e3d156, from name: System.Security.Cryptography.Csp
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.131_name, ; name: libaot-System.Security.Cryptography.Csp.dll.so
		ptr null; void* handle (0x0)
	}, ; 810
	%struct.DSOCacheEntry {
		i64 9160616992211937074, ; hash 0x7f210c9e90332732, from name: aot-Xamarin.AndroidX.Startup.StartupRuntime.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.260_name, ; name: libaot-Xamarin.AndroidX.Startup.StartupRuntime.dll.so
		ptr null; void* handle (0x0)
	}, ; 811
	%struct.DSOCacheEntry {
		i64 9176950239087484767, ; hash 0x7f5b139ef23edf5f, from name: System.Diagnostics.Process.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.39_name, ; name: libaot-System.Diagnostics.Process.dll.so
		ptr null; void* handle (0x0)
	}, ; 812
	%struct.DSOCacheEntry {
		i64 9184990959724848206, ; hash 0x7f77a49d1b92e44e, from name: aot-Xamarin.AndroidX.AppCompat.AppCompatResources
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.210_name, ; name: libaot-Xamarin.AndroidX.AppCompat.AppCompatResources.dll.so
		ptr null; void* handle (0x0)
	}, ; 813
	%struct.DSOCacheEntry {
		i64 9202553973257348394, ; hash 0x7fb60a14da5d252a, from name: libaot-System.Net.Security.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.83_name, ; name: libaot-System.Net.Security.dll.so
		ptr null; void* handle (0x0)
	}, ; 814
	%struct.DSOCacheEntry {
		i64 9203450558564540929, ; hash 0x7fb93985631c2201, from name: libaot-Microsoft.Maui.Controls.Compatibility
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.193_name, ; name: libaot-Microsoft.Maui.Controls.Compatibility.dll.so
		ptr null; void* handle (0x0)
	}, ; 815
	%struct.DSOCacheEntry {
		i64 9207742526868940023, ; hash 0x7fc8790b2147e4f7, from name: libaot-System.Runtime.Serialization
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.125_name, ; name: libaot-System.Runtime.Serialization.dll.so
		ptr null; void* handle (0x0)
	}, ; 816
	%struct.DSOCacheEntry {
		i64 9219236770475081177, ; hash 0x7ff14eff4462fdd9, from name: aot-Xamarin.AndroidX.ViewPager
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.267_name, ; name: libaot-Xamarin.AndroidX.ViewPager.dll.so
		ptr null; void* handle (0x0)
	}, ; 817
	%struct.DSOCacheEntry {
		i64 9225652551807385394, ; hash 0x80081a1dc3a7bf32, from name: libaot-Xamarin.AndroidX.CoordinatorLayout.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.220_name, ; name: libaot-Xamarin.AndroidX.CoordinatorLayout.dll.so
		ptr null; void* handle (0x0)
	}, ; 818
	%struct.DSOCacheEntry {
		i64 9236407965853005161, ; hash 0x802e501bbd41b569, from name: libaot-System.Security.Principal.Windows.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.137_name, ; name: libaot-System.Security.Principal.Windows.dll.so
		ptr null; void* handle (0x0)
	}, ; 819
	%struct.DSOCacheEntry {
		i64 9247760416524359684, ; hash 0x8056a51a22da5804, from name: libaot-System.Resources.Writer.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.110_name, ; name: libaot-System.Resources.Writer.dll.so
		ptr null; void* handle (0x0)
	}, ; 820
	%struct.DSOCacheEntry {
		i64 9292760678343160830, ; hash 0x80f6849a0f5cb3fe, from name: libaot-Xamarin.AndroidX.Print
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.252_name, ; name: libaot-Xamarin.AndroidX.Print.dll.so
		ptr null; void* handle (0x0)
	}, ; 821
	%struct.DSOCacheEntry {
		i64 9293571162334492259, ; hash 0x80f965bb91c2f663, from name: libaot-System.Formats.Asn1.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.48_name, ; name: libaot-System.Formats.Asn1.dll.so
		ptr null; void* handle (0x0)
	}, ; 822
	%struct.DSOCacheEntry {
		i64 9296399646155945655, ; hash 0x81037239473136b7, from name: aot-System.Data.DataSetExtensions
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.33_name, ; name: libaot-System.Data.DataSetExtensions.dll.so
		ptr null; void* handle (0x0)
	}, ; 823
	%struct.DSOCacheEntry {
		i64 9299560916216418051, ; hash 0x810ead61d22f8f03, from name: aot-System.Reflection.Metadata
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.104_name, ; name: libaot-System.Reflection.Metadata.dll.so
		ptr null; void* handle (0x0)
	}, ; 824
	%struct.DSOCacheEntry {
		i64 9312692141327339315, ; hash 0x813d54296a634f33, from name: Xamarin.AndroidX.ViewPager2
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.268_name, ; name: libaot-Xamarin.AndroidX.ViewPager2.dll.so
		ptr null; void* handle (0x0)
	}, ; 825
	%struct.DSOCacheEntry {
		i64 9324707631942237306, ; hash 0x8168042fd44a7c7a, from name: Xamarin.AndroidX.AppCompat
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.209_name, ; name: libaot-Xamarin.AndroidX.AppCompat.dll.so
		ptr null; void* handle (0x0)
	}, ; 826
	%struct.DSOCacheEntry {
		i64 9350214121429754699, ; hash 0x81c2a23431a9634b, from name: libaot-System.Web
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.163_name, ; name: libaot-System.Web.dll.so
		ptr null; void* handle (0x0)
	}, ; 827
	%struct.DSOCacheEntry {
		i64 9354788225964247547, ; hash 0x81d2e253e59b09fb, from name: aot-Microsoft.Maui.Graphics
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.198_name, ; name: libaot-Microsoft.Maui.Graphics.dll.so
		ptr null; void* handle (0x0)
	}, ; 828
	%struct.DSOCacheEntry {
		i64 9367092681395718278, ; hash 0x81fe992a2cc0c886, from name: libaot-System.Xml.XDocument.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.168_name, ; name: libaot-System.Xml.XDocument.dll.so
		ptr null; void* handle (0x0)
	}, ; 829
	%struct.DSOCacheEntry {
		i64 9370897661222023495, ; hash 0x820c1dc613ad7147, from name: libaot-System.Runtime.InteropServices.RuntimeInformation
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.116_name, ; name: libaot-System.Runtime.InteropServices.RuntimeInformation.dll.so
		ptr null; void* handle (0x0)
	}, ; 830
	%struct.DSOCacheEntry {
		i64 9414839596525080044, ; hash 0x82a83abb2828cdec, from name: aot-Xamarin.AndroidX.Print
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.252_name, ; name: libaot-Xamarin.AndroidX.Print.dll.so
		ptr null; void* handle (0x0)
	}, ; 831
	%struct.DSOCacheEntry {
		i64 9480837820460553798, ; hash 0x8392b3c41da3d646, from name: aot-System.Runtime.InteropServices.JavaScript.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.115_name, ; name: libaot-System.Runtime.InteropServices.JavaScript.dll.so
		ptr null; void* handle (0x0)
	}, ; 832
	%struct.DSOCacheEntry {
		i64 9486299778194654718, ; hash 0x83a61b634028c5fe, from name: aot-Xamarin.AndroidX.Navigation.Common
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.248_name, ; name: libaot-Xamarin.AndroidX.Navigation.Common.dll.so
		ptr null; void* handle (0x0)
	}, ; 833
	%struct.DSOCacheEntry {
		i64 9492014239021829256, ; hash 0x83ba68a8d7d88c88, from name: aot-Xamarin.AndroidX.Lifecycle.LiveData.Core.Ktx.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.239_name, ; name: libaot-Xamarin.AndroidX.Lifecycle.LiveData.Core.Ktx.dll.so
		ptr null; void* handle (0x0)
	}, ; 834
	%struct.DSOCacheEntry {
		i64 9519127451472829141, ; hash 0x841abbfb8cb51ad5, from name: Microsoft.Maui.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.196_name, ; name: libaot-Microsoft.Maui.dll.so
		ptr null; void* handle (0x0)
	}, ; 835
	%struct.DSOCacheEntry {
		i64 9523258311667062251, ; hash 0x842968fa633395eb, from name: libaot-System.Linq.Queryable.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.70_name, ; name: libaot-System.Linq.Queryable.dll.so
		ptr null; void* handle (0x0)
	}, ; 836
	%struct.DSOCacheEntry {
		i64 9554839972845591462, ; hash 0x84999c54e32a1ba6, from name: System.ServiceModel.Web
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.141_name, ; name: libaot-System.ServiceModel.Web.dll.so
		ptr null; void* handle (0x0)
	}, ; 837
	%struct.DSOCacheEntry {
		i64 9562068925407811730, ; hash 0x84b34b0690bbd892, from name: Xamarin.AndroidX.Tracing.Tracing.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.262_name, ; name: libaot-Xamarin.AndroidX.Tracing.Tracing.dll.so
		ptr null; void* handle (0x0)
	}, ; 838
	%struct.DSOCacheEntry {
		i64 9562699171059315569, ; hash 0x84b5883b10e9b371, from name: WindowsBase.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.175_name, ; name: libaot-WindowsBase.dll.so
		ptr null; void* handle (0x0)
	}, ; 839
	%struct.DSOCacheEntry {
		i64 9564066322021869238, ; hash 0x84ba63a5b463e6b6, from name: aot-System.Reflection.Emit.Lightweight.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.101_name, ; name: libaot-System.Reflection.Emit.Lightweight.dll.so
		ptr null; void* handle (0x0)
	}, ; 840
	%struct.DSOCacheEntry {
		i64 9572878646085775350, ; hash 0x84d9b268c9dd6ff6, from name: aot-Xamarin.AndroidX.Browser.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.213_name, ; name: libaot-Xamarin.AndroidX.Browser.dll.so
		ptr null; void* handle (0x0)
	}, ; 841
	%struct.DSOCacheEntry {
		i64 9573175437195805771, ; hash 0x84dac056da8d044b, from name: aot-System.Net
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.91_name, ; name: libaot-System.Net.dll.so
		ptr null; void* handle (0x0)
	}, ; 842
	%struct.DSOCacheEntry {
		i64 9584802165301184279, ; hash 0x85040ec9712c0717, from name: System.Private.Uri.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.96_name, ; name: libaot-System.Private.Uri.dll.so
		ptr null; void* handle (0x0)
	}, ; 843
	%struct.DSOCacheEntry {
		i64 9598996433112550597, ; hash 0x85367c65f3ea4cc5, from name: aot-Xamarin.AndroidX.ConstraintLayout
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.218_name, ; name: libaot-Xamarin.AndroidX.ConstraintLayout.dll.so
		ptr null; void* handle (0x0)
	}, ; 844
	%struct.DSOCacheEntry {
		i64 9616196441223773743, ; hash 0x857397b6e984be2f, from name: libaot-System.Runtime.Intrinsics
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.118_name, ; name: libaot-System.Runtime.Intrinsics.dll.so
		ptr null; void* handle (0x0)
	}, ; 845
	%struct.DSOCacheEntry {
		i64 9641796949223436837, ; hash 0x85ce8b3daae87225, from name: libaot-Java.Interop.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.178_name, ; name: libaot-Java.Interop.dll.so
		ptr null; void* handle (0x0)
	}, ; 846
	%struct.DSOCacheEntry {
		i64 9659729154652888475, ; hash 0x860e407c9991dd9b, from name: System.Text.RegularExpressions
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.148_name, ; name: libaot-System.Text.RegularExpressions.dll.so
		ptr null; void* handle (0x0)
	}, ; 847
	%struct.DSOCacheEntry {
		i64 9667360217193089419, ; hash 0x86295ce5cd89898b, from name: System.Diagnostics.StackTrace
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.40_name, ; name: libaot-System.Diagnostics.StackTrace.dll.so
		ptr null; void* handle (0x0)
	}, ; 848
	%struct.DSOCacheEntry {
		i64 9673129040906742596, ; hash 0x863ddb9cbdc2eb44, from name: libaot-Xamarin.AndroidX.ResourceInspection.Annotation
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.255_name, ; name: libaot-Xamarin.AndroidX.ResourceInspection.Annotation.dll.so
		ptr null; void* handle (0x0)
	}, ; 849
	%struct.DSOCacheEntry {
		i64 9692312895246255164, ; hash 0x86820339e517443c, from name: aot-System.Xml.Serialization
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.167_name, ; name: libaot-System.Xml.Serialization.dll.so
		ptr null; void* handle (0x0)
	}, ; 850
	%struct.DSOCacheEntry {
		i64 9700644217508604131, ; hash 0x869f9c85050c28e3, from name: System.Numerics.Vectors.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.92_name, ; name: libaot-System.Numerics.Vectors.dll.so
		ptr null; void* handle (0x0)
	}, ; 851
	%struct.DSOCacheEntry {
		i64 9706749945738275724, ; hash 0x86b54da5a745ab8c, from name: aot-Xamarin.Google.Crypto.Tink.Android
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.273_name, ; name: libaot-Xamarin.Google.Crypto.Tink.Android.dll.so
		ptr null; void* handle (0x0)
	}, ; 852
	%struct.DSOCacheEntry {
		i64 9711206185481363223, ; hash 0x86c52292d2315f17, from name: libaot-Xamarin.AndroidX.Startup.StartupRuntime
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.260_name, ; name: libaot-Xamarin.AndroidX.Startup.StartupRuntime.dll.so
		ptr null; void* handle (0x0)
	}, ; 853
	%struct.DSOCacheEntry {
		i64 9720994278474188111, ; hash 0x86e7e8cad00f054f, from name: aot-System.Security.Principal.Windows.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.137_name, ; name: libaot-System.Security.Principal.Windows.dll.so
		ptr null; void* handle (0x0)
	}, ; 854
	%struct.DSOCacheEntry {
		i64 9723757432752603539, ; hash 0x86f1b9ddcd488193, from name: libaot-Microsoft.Extensions.Logging.Debug
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.190_name, ; name: libaot-Microsoft.Extensions.Logging.Debug.dll.so
		ptr null; void* handle (0x0)
	}, ; 855
	%struct.DSOCacheEntry {
		i64 9730585375023143521, ; hash 0x8709fbd7fedd9a61, from name: aot-System.Collections.Immutable
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.19_name, ; name: libaot-System.Collections.Immutable.dll.so
		ptr null; void* handle (0x0)
	}, ; 856
	%struct.DSOCacheEntry {
		i64 9759402295642527326, ; hash 0x87705cae2be7965e, from name: aot-System.Security.AccessControl.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.127_name, ; name: libaot-System.Security.AccessControl.dll.so
		ptr null; void* handle (0x0)
	}, ; 857
	%struct.DSOCacheEntry {
		i64 9759667989446082388, ; hash 0x87714e53d4af3f54, from name: aot-Xamarin.AndroidX.DocumentFile
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.226_name, ; name: libaot-Xamarin.AndroidX.DocumentFile.dll.so
		ptr null; void* handle (0x0)
	}, ; 858
	%struct.DSOCacheEntry {
		i64 9783785228567974479, ; hash 0x87c6fcd42382124f, from name: libaot-System.Threading.Thread
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.155_name, ; name: libaot-System.Threading.Thread.dll.so
		ptr null; void* handle (0x0)
	}, ; 859
	%struct.DSOCacheEntry {
		i64 9785861402587091236, ; hash 0x87ce5d191268d124, from name: aot-System.Linq.Queryable.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.70_name, ; name: libaot-System.Linq.Queryable.dll.so
		ptr null; void* handle (0x0)
	}, ; 860
	%struct.DSOCacheEntry {
		i64 9803047054801588640, ; hash 0x880b6b5b89e351a0, from name: Xamarin.AndroidX.Lifecycle.ViewModel.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.243_name, ; name: libaot-Xamarin.AndroidX.Lifecycle.ViewModel.dll.so
		ptr null; void* handle (0x0)
	}, ; 861
	%struct.DSOCacheEntry {
		i64 9808040346124881443, ; hash 0x881d28bac5790e23, from name: aot-System.Runtime.Loader.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.119_name, ; name: libaot-System.Runtime.Loader.dll.so
		ptr null; void* handle (0x0)
	}, ; 862
	%struct.DSOCacheEntry {
		i64 9819766499659454791, ; hash 0x8846d19aa57b9947, from name: libaot-System.Text.Encoding.CodePages
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.143_name, ; name: libaot-System.Text.Encoding.CodePages.dll.so
		ptr null; void* handle (0x0)
	}, ; 863
	%struct.DSOCacheEntry {
		i64 9825649861376906464, ; hash 0x885bb87d8abc94e0, from name: Xamarin.AndroidX.Concurrent.Futures
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.217_name, ; name: libaot-Xamarin.AndroidX.Concurrent.Futures.dll.so
		ptr null; void* handle (0x0)
	}, ; 864
	%struct.DSOCacheEntry {
		i64 9836529246295212050, ; hash 0x88825f3bbc2ac012, from name: System.Reflection.Metadata
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.104_name, ; name: libaot-System.Reflection.Metadata.dll.so
		ptr null; void* handle (0x0)
	}, ; 865
	%struct.DSOCacheEntry {
		i64 9846352401182273129, ; hash 0x88a5455735c8ae69, from name: aot-Xamarin.Kotlin.StdLib.Jdk8.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.280_name, ; name: libaot-Xamarin.Kotlin.StdLib.Jdk8.dll.so
		ptr null; void* handle (0x0)
	}, ; 866
	%struct.DSOCacheEntry {
		i64 9872301298376226842, ; hash 0x890175b9a557b81a, from name: libaot-Microsoft.Extensions.Logging.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.188_name, ; name: libaot-Microsoft.Extensions.Logging.dll.so
		ptr null; void* handle (0x0)
	}, ; 867
	%struct.DSOCacheEntry {
		i64 9878540403917854255, ; hash 0x8917a0289ade162f, from name: Xamarin.Kotlin.StdLib.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.277_name, ; name: libaot-Xamarin.Kotlin.StdLib.dll.so
		ptr null; void* handle (0x0)
	}, ; 868
	%struct.DSOCacheEntry {
		i64 9901757312158402783, ; hash 0x896a1bd04b5408df, from name: aot-System.Diagnostics.Tools.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.42_name, ; name: libaot-System.Diagnostics.Tools.dll.so
		ptr null; void* handle (0x0)
	}, ; 869
	%struct.DSOCacheEntry {
		i64 9907349773706910547, ; hash 0x897dfa20b758db53, from name: Xamarin.AndroidX.Emoji2.ViewsHelper
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.230_name, ; name: libaot-Xamarin.AndroidX.Emoji2.ViewsHelper.dll.so
		ptr null; void* handle (0x0)
	}, ; 870
	%struct.DSOCacheEntry {
		i64 9913979743105821016, ; hash 0x8995880cc23da958, from name: libaot-System.Diagnostics.Process
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.39_name, ; name: libaot-System.Diagnostics.Process.dll.so
		ptr null; void* handle (0x0)
	}, ; 871
	%struct.DSOCacheEntry {
		i64 9921778862272270480, ; hash 0x89b13d4eb1b7d090, from name: aot-System.Reflection.Emit.ILGeneration
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.100_name, ; name: libaot-System.Reflection.Emit.ILGeneration.dll.so
		ptr null; void* handle (0x0)
	}, ; 872
	%struct.DSOCacheEntry {
		i64 9925952136629214562, ; hash 0x89c010e0d9505d62, from name: libaot-System.Globalization
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.52_name, ; name: libaot-System.Globalization.dll.so
		ptr null; void* handle (0x0)
	}, ; 873
	%struct.DSOCacheEntry {
		i64 9941896055066979463, ; hash 0x89f8b5c9a41fec87, from name: aot-Xamarin.Google.Crypto.Tink.Android.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.273_name, ; name: libaot-Xamarin.Google.Crypto.Tink.Android.dll.so
		ptr null; void* handle (0x0)
	}, ; 874
	%struct.DSOCacheEntry {
		i64 9956195530459977388, ; hash 0x8a2b8315b36616ac, from name: Microsoft.Maui
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.196_name, ; name: libaot-Microsoft.Maui.dll.so
		ptr null; void* handle (0x0)
	}, ; 875
	%struct.DSOCacheEntry {
		i64 10015320022696718808, ; hash 0x8afd907f48b1f1d8, from name: aot-Xamarin.Kotlin.StdLib.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.277_name, ; name: libaot-Xamarin.Kotlin.StdLib.dll.so
		ptr null; void* handle (0x0)
	}, ; 876
	%struct.DSOCacheEntry {
		i64 10016634319500838231, ; hash 0x8b023bd7dad58557, from name: aot-System.Transactions.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.160_name, ; name: libaot-System.Transactions.dll.so
		ptr null; void* handle (0x0)
	}, ; 877
	%struct.DSOCacheEntry {
		i64 10017511394021241210, ; hash 0x8b055989ae10717a, from name: Microsoft.Extensions.Logging.Debug
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.190_name, ; name: libaot-Microsoft.Extensions.Logging.Debug.dll.so
		ptr null; void* handle (0x0)
	}, ; 878
	%struct.DSOCacheEntry {
		i64 10031883225957241841, ; hash 0x8b3868a48f6193f1, from name: libaot-Xamarin.Kotlin.StdLib.Jdk8
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.280_name, ; name: libaot-Xamarin.Kotlin.StdLib.Jdk8.dll.so
		ptr null; void* handle (0x0)
	}, ; 879
	%struct.DSOCacheEntry {
		i64 10035256709012911358, ; hash 0x8b4464ceca91f4fe, from name: aot-Xamarin.AndroidX.Emoji2.ViewsHelper.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.230_name, ; name: libaot-Xamarin.AndroidX.Emoji2.ViewsHelper.dll.so
		ptr null; void* handle (0x0)
	}, ; 880
	%struct.DSOCacheEntry {
		i64 10036215306110403221, ; hash 0x8b47cca5920c8295, from name: System.Runtime.Serialization.Primitives.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.123_name, ; name: libaot-System.Runtime.Serialization.Primitives.dll.so
		ptr null; void* handle (0x0)
	}, ; 881
	%struct.DSOCacheEntry {
		i64 10037661696936849920, ; hash 0x8b4cf021ad773200, from name: libaot-MauiApp1.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.9_name, ; name: libaot-MauiApp1.dll.so
		ptr null; void* handle (0x0)
	}, ; 882
	%struct.DSOCacheEntry {
		i64 10038591806013433352, ; hash 0x8b503e0f9293e608, from name: libaot-Microsoft.Extensions.Logging
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.188_name, ; name: libaot-Microsoft.Extensions.Logging.dll.so
		ptr null; void* handle (0x0)
	}, ; 883
	%struct.DSOCacheEntry {
		i64 10044247333979866345, ; hash 0x8b6455bbca08c4e9, from name: libaot-System.Net.WebProxy.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.88_name, ; name: libaot-System.Net.WebProxy.dll.so
		ptr null; void* handle (0x0)
	}, ; 884
	%struct.DSOCacheEntry {
		i64 10051358222726253779, ; hash 0x8b7d990c97ccccd3, from name: System.Private.Xml
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.98_name, ; name: libaot-System.Private.Xml.dll.so
		ptr null; void* handle (0x0)
	}, ; 885
	%struct.DSOCacheEntry {
		i64 10056809455879427758, ; hash 0x8b90f6eab77b96ae, from name: libaot-Microsoft.VisualBasic
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.13_name, ; name: libaot-Microsoft.VisualBasic.dll.so
		ptr null; void* handle (0x0)
	}, ; 886
	%struct.DSOCacheEntry {
		i64 10062311874857320220, ; hash 0x8ba483567810bf1c, from name: Xamarin.AndroidX.Arch.Core.Common.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.211_name, ; name: libaot-Xamarin.AndroidX.Arch.Core.Common.dll.so
		ptr null; void* handle (0x0)
	}, ; 887
	%struct.DSOCacheEntry {
		i64 10078727084704864206, ; hash 0x8bded4e257f117ce, from name: System.Net.WebSockets.Client
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.89_name, ; name: libaot-System.Net.WebSockets.Client.dll.so
		ptr null; void* handle (0x0)
	}, ; 888
	%struct.DSOCacheEntry {
		i64 10089571585547156312, ; hash 0x8c055be67469bb58, from name: System.IO.FileSystem.AccessControl
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.57_name, ; name: libaot-System.IO.FileSystem.AccessControl.dll.so
		ptr null; void* handle (0x0)
	}, ; 889
	%struct.DSOCacheEntry {
		i64 10092835686693276772, ; hash 0x8c10f49539bd0c64, from name: Microsoft.Maui.Controls
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.194_name, ; name: libaot-Microsoft.Maui.Controls.dll.so
		ptr null; void* handle (0x0)
	}, ; 890
	%struct.DSOCacheEntry {
		i64 10100633424984079765, ; hash 0x8c2ca895a69cfd95, from name: libaot-System.Runtime
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.126_name, ; name: libaot-System.Runtime.dll.so
		ptr null; void* handle (0x0)
	}, ; 891
	%struct.DSOCacheEntry {
		i64 10105485790837105934, ; hash 0x8c3de5c91d9a650e, from name: System.Threading.Tasks.Parallel
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.153_name, ; name: libaot-System.Threading.Tasks.Parallel.dll.so
		ptr null; void* handle (0x0)
	}, ; 892
	%struct.DSOCacheEntry {
		i64 10113526407305038838, ; hash 0x8c5a76af05f30bf6, from name: libaot-System.Data.DataSetExtensions.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.33_name, ; name: libaot-System.Data.DataSetExtensions.dll.so
		ptr null; void* handle (0x0)
	}, ; 893
	%struct.DSOCacheEntry {
		i64 10117538216423255955, ; hash 0x8c68b7671f58ef93, from name: System.Collections.Specialized.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.21_name, ; name: libaot-System.Collections.Specialized.dll.so
		ptr null; void* handle (0x0)
	}, ; 894
	%struct.DSOCacheEntry {
		i64 10125640814986396946, ; hash 0x8c8580ac5c760512, from name: aot-Microsoft.Extensions.DependencyInjection.Abstractions.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.187_name, ; name: libaot-Microsoft.Extensions.DependencyInjection.Abstractions.dll.so
		ptr null; void* handle (0x0)
	}, ; 895
	%struct.DSOCacheEntry {
		i64 10130037973127842806, ; hash 0x8c951fdd8580cbf6, from name: aot-Xamarin.AndroidX.Interpolator
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.234_name, ; name: libaot-Xamarin.AndroidX.Interpolator.dll.so
		ptr null; void* handle (0x0)
	}, ; 896
	%struct.DSOCacheEntry {
		i64 10131599475156204988, ; hash 0x8c9aac0b0b383dbc, from name: libaot-System.Core
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.31_name, ; name: libaot-System.Core.dll.so
		ptr null; void* handle (0x0)
	}, ; 897
	%struct.DSOCacheEntry {
		i64 10144174818098638028, ; hash 0x8cc759403c3b6ccc, from name: libaot-Xamarin.AndroidX.Collection.Ktx
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.216_name, ; name: libaot-Xamarin.AndroidX.Collection.Ktx.dll.so
		ptr null; void* handle (0x0)
	}, ; 898
	%struct.DSOCacheEntry {
		i64 10195674054964728829, ; hash 0x8d7e4f88b3d6d3fd, from name: aot-System.Runtime.Serialization.Xml.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.124_name, ; name: libaot-System.Runtime.Serialization.Xml.dll.so
		ptr null; void* handle (0x0)
	}, ; 899
	%struct.DSOCacheEntry {
		i64 10202443004866537339, ; hash 0x8d965bdbaa3d277b, from name: aot-System.Security.Cryptography
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.136_name, ; name: libaot-System.Security.Cryptography.dll.so
		ptr null; void* handle (0x0)
	}, ; 900
	%struct.DSOCacheEntry {
		i64 10205933005510771811, ; hash 0x8da2c1fec2e78463, from name: aot-System.Diagnostics.Debug.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.36_name, ; name: libaot-System.Diagnostics.Debug.dll.so
		ptr null; void* handle (0x0)
	}, ; 901
	%struct.DSOCacheEntry {
		i64 10208416596141509425, ; hash 0x8dab94cec4378b31, from name: System.Diagnostics.Contracts.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.35_name, ; name: libaot-System.Diagnostics.Contracts.dll.so
		ptr null; void* handle (0x0)
	}, ; 902
	%struct.DSOCacheEntry {
		i64 10214437830394522368, ; hash 0x8dc0f9169cfa2b00, from name: aot-System.Reflection.Emit.Lightweight
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.101_name, ; name: libaot-System.Reflection.Emit.Lightweight.dll.so
		ptr null; void* handle (0x0)
	}, ; 903
	%struct.DSOCacheEntry {
		i64 10224492561641212282, ; hash 0x8de4b1d0293f897a, from name: aot-System.Private.Xml.Linq.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.97_name, ; name: libaot-System.Private.Xml.Linq.dll.so
		ptr null; void* handle (0x0)
	}, ; 904
	%struct.DSOCacheEntry {
		i64 10226222362177979215, ; hash 0x8dead70ebbc6434f, from name: Xamarin.Kotlin.StdLib.Jdk7
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.279_name, ; name: libaot-Xamarin.Kotlin.StdLib.Jdk7.dll.so
		ptr null; void* handle (0x0)
	}, ; 905
	%struct.DSOCacheEntry {
		i64 10228817684246477515, ; hash 0x8df40f7d3dbebacb, from name: System.IO.Pipes.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.65_name, ; name: libaot-System.IO.Pipes.dll.so
		ptr null; void* handle (0x0)
	}, ; 906
	%struct.DSOCacheEntry {
		i64 10229024438826829339, ; hash 0x8df4cb880b10061b, from name: Xamarin.AndroidX.CustomView
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.224_name, ; name: libaot-Xamarin.AndroidX.CustomView.dll.so
		ptr null; void* handle (0x0)
	}, ; 907
	%struct.DSOCacheEntry {
		i64 10239198197289022346, ; hash 0x8e18f082c63b738a, from name: aot-Xamarin.AndroidX.Emoji2
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.229_name, ; name: libaot-Xamarin.AndroidX.Emoji2.dll.so
		ptr null; void* handle (0x0)
	}, ; 908
	%struct.DSOCacheEntry {
		i64 10245369515835430794, ; hash 0x8e2edd4ad7fc978a, from name: System.Reflection.Emit.Lightweight
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.101_name, ; name: libaot-System.Reflection.Emit.Lightweight.dll.so
		ptr null; void* handle (0x0)
	}, ; 909
	%struct.DSOCacheEntry {
		i64 10250511724214772916, ; hash 0x8e41221a87cc64b4, from name: Xamarin.AndroidX.SlidingPaneLayout.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.259_name, ; name: libaot-Xamarin.AndroidX.SlidingPaneLayout.dll.so
		ptr null; void* handle (0x0)
	}, ; 910
	%struct.DSOCacheEntry {
		i64 10273345953350871244, ; hash 0x8e9241b6cc2ce8cc, from name: netstandard.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.177_name, ; name: libaot-netstandard.dll.so
		ptr null; void* handle (0x0)
	}, ; 911
	%struct.DSOCacheEntry {
		i64 10274941455595295611, ; hash 0x8e97ecd09cb1537b, from name: aot-System.Net.HttpListener.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.75_name, ; name: libaot-System.Net.HttpListener.dll.so
		ptr null; void* handle (0x0)
	}, ; 912
	%struct.DSOCacheEntry {
		i64 10284344054184125450, ; hash 0x8eb9546db18ba40a, from name: libaot-Microsoft.Win32.Primitives
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.14_name, ; name: libaot-Microsoft.Win32.Primitives.dll.so
		ptr null; void* handle (0x0)
	}, ; 913
	%struct.DSOCacheEntry {
		i64 10290279544697180275, ; hash 0x8ece6ab9c524d073, from name: aot-Xamarin.AndroidX.ExifInterface.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.231_name, ; name: libaot-Xamarin.AndroidX.ExifInterface.dll.so
		ptr null; void* handle (0x0)
	}, ; 914
	%struct.DSOCacheEntry {
		i64 10291981562957691400, ; hash 0x8ed476b3c6f67a08, from name: aot-System.ComponentModel.TypeConverter
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.27_name, ; name: libaot-System.ComponentModel.TypeConverter.dll.so
		ptr null; void* handle (0x0)
	}, ; 915
	%struct.DSOCacheEntry {
		i64 10318218263549127400, ; hash 0x8f31acd7a9cb2ae8, from name: aot-System.Formats.Asn1
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.48_name, ; name: libaot-System.Formats.Asn1.dll.so
		ptr null; void* handle (0x0)
	}, ; 916
	%struct.DSOCacheEntry {
		i64 10340237239855826389, ; hash 0x8f7fe6fc16df45d5, from name: libaot-System.Reflection.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.107_name, ; name: libaot-System.Reflection.dll.so
		ptr null; void* handle (0x0)
	}, ; 917
	%struct.DSOCacheEntry {
		i64 10342747894815587010, ; hash 0x8f88d2697fe6fac2, from name: libaot-Xamarin.AndroidX.Lifecycle.ViewModel.Ktx
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.244_name, ; name: libaot-Xamarin.AndroidX.Lifecycle.ViewModel.Ktx.dll.so
		ptr null; void* handle (0x0)
	}, ; 918
	%struct.DSOCacheEntry {
		i64 10356807666685550219, ; hash 0x8fbac5b33bd59e8b, from name: libaot-System.Net.Http
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.74_name, ; name: libaot-System.Net.Http.dll.so
		ptr null; void* handle (0x0)
	}, ; 919
	%struct.DSOCacheEntry {
		i64 10360315726388337145, ; hash 0x8fc73c43084519f9, from name: libaot-System.Drawing.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.46_name, ; name: libaot-System.Drawing.dll.so
		ptr null; void* handle (0x0)
	}, ; 920
	%struct.DSOCacheEntry {
		i64 10360651442923773544, ; hash 0x8fc86d98211c1e68, from name: System.Text.Encoding
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.145_name, ; name: libaot-System.Text.Encoding.dll.so
		ptr null; void* handle (0x0)
	}, ; 921
	%struct.DSOCacheEntry {
		i64 10362236940373752476, ; hash 0x8fce0f9885687a9c, from name: libaot-CommunityToolkit.Mvvm
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.182_name, ; name: libaot-CommunityToolkit.Mvvm.dll.so
		ptr null; void* handle (0x0)
	}, ; 922
	%struct.DSOCacheEntry {
		i64 10376576884623852283, ; hash 0x900101b2f888c2fb, from name: Xamarin.AndroidX.Tracing.Tracing
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.262_name, ; name: libaot-Xamarin.AndroidX.Tracing.Tracing.dll.so
		ptr null; void* handle (0x0)
	}, ; 923
	%struct.DSOCacheEntry {
		i64 10377640695631378435, ; hash 0x9004c93ac5bef803, from name: libaot-Xamarin.AndroidX.Lifecycle.Runtime.Ktx.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.242_name, ; name: libaot-Xamarin.AndroidX.Lifecycle.Runtime.Ktx.dll.so
		ptr null; void* handle (0x0)
	}, ; 924
	%struct.DSOCacheEntry {
		i64 10385124814576326370, ; hash 0x901f5fff00ea96e2, from name: libaot-System.Private.Xml.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.98_name, ; name: libaot-System.Private.Xml.dll.so
		ptr null; void* handle (0x0)
	}, ; 925
	%struct.DSOCacheEntry {
		i64 10387475612650146223, ; hash 0x9027ba08d50b89af, from name: libaot-System.Runtime.Serialization.Formatters
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.121_name, ; name: libaot-System.Runtime.Serialization.Formatters.dll.so
		ptr null; void* handle (0x0)
	}, ; 926
	%struct.DSOCacheEntry {
		i64 10392419804969934685, ; hash 0x90394ac04ff79f5d, from name: libaot-System.Runtime.Loader
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.119_name, ; name: libaot-System.Runtime.Loader.dll.so
		ptr null; void* handle (0x0)
	}, ; 927
	%struct.DSOCacheEntry {
		i64 10394555035159432904, ; hash 0x9040e0bb54ed0ec8, from name: System.Net.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.91_name, ; name: libaot-System.Net.dll.so
		ptr null; void* handle (0x0)
	}, ; 928
	%struct.DSOCacheEntry {
		i64 10403090626863083606, ; hash 0x905f33cea45eb056, from name: mono-component-debugger.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.3_name, ; name: libmono-component-debugger.so
		ptr null; void* handle (0x0)
	}, ; 929
	%struct.DSOCacheEntry {
		i64 10430153318873392755, ; hash 0x90bf592ea44f6673, from name: Xamarin.AndroidX.Core
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.221_name, ; name: libaot-Xamarin.AndroidX.Core.dll.so
		ptr null; void* handle (0x0)
	}, ; 930
	%struct.DSOCacheEntry {
		i64 10431089073467423858, ; hash 0x90c2ac3efc7bfc72, from name: libaot-System.Private.Xml
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.98_name, ; name: libaot-System.Private.Xml.dll.so
		ptr null; void* handle (0x0)
	}, ; 931
	%struct.DSOCacheEntry {
		i64 10435618303378603777, ; hash 0x90d2c38e80723f01, from name: aot-Xamarin.AndroidX.Collection.Ktx.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.216_name, ; name: libaot-Xamarin.AndroidX.Collection.Ktx.dll.so
		ptr null; void* handle (0x0)
	}, ; 932
	%struct.DSOCacheEntry {
		i64 10437139338610198358, ; hash 0x90d82aee1d1dc756, from name: libaot-Xamarin.AndroidX.Concurrent.Futures.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.217_name, ; name: libaot-Xamarin.AndroidX.Concurrent.Futures.dll.so
		ptr null; void* handle (0x0)
	}, ; 933
	%struct.DSOCacheEntry {
		i64 10445573484590211502, ; hash 0x90f621bdc03d21ae, from name: aot-Xamarin.AndroidX.Activity
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.204_name, ; name: libaot-Xamarin.AndroidX.Activity.dll.so
		ptr null; void* handle (0x0)
	}, ; 934
	%struct.DSOCacheEntry {
		i64 10450970453325464374, ; hash 0x91094e4174914336, from name: aot-System.Runtime.Serialization.Formatters
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.121_name, ; name: libaot-System.Runtime.Serialization.Formatters.dll.so
		ptr null; void* handle (0x0)
	}, ; 935
	%struct.DSOCacheEntry {
		i64 10451298317062789990, ; hash 0x910a78722e2a5b66, from name: aot-System.Configuration.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.29_name, ; name: libaot-System.Configuration.dll.so
		ptr null; void* handle (0x0)
	}, ; 936
	%struct.DSOCacheEntry {
		i64 10454242804635691778, ; hash 0x9114ee711dfe6b02, from name: libaot-Xamarin.AndroidX.Lifecycle.Runtime.Ktx
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.242_name, ; name: libaot-Xamarin.AndroidX.Lifecycle.Runtime.Ktx.dll.so
		ptr null; void* handle (0x0)
	}, ; 937
	%struct.DSOCacheEntry {
		i64 10462325736163448418, ; hash 0x9131a5d344731662, from name: libaot-System.Text.Json
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.147_name, ; name: libaot-System.Text.Json.dll.so
		ptr null; void* handle (0x0)
	}, ; 938
	%struct.DSOCacheEntry {
		i64 10466761509042826167, ; hash 0x914168231f3aabb7, from name: aot-CommunityToolkit.Mvvm
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.182_name, ; name: libaot-CommunityToolkit.Mvvm.dll.so
		ptr null; void* handle (0x0)
	}, ; 939
	%struct.DSOCacheEntry {
		i64 10469210094865300319, ; hash 0x914a1b1cef613b5f, from name: aot-System.IO.FileSystem.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.61_name, ; name: libaot-System.IO.FileSystem.dll.so
		ptr null; void* handle (0x0)
	}, ; 940
	%struct.DSOCacheEntry {
		i64 10484059796581909322, ; hash 0x917edcd68b38034a, from name: libaot-System.Net.Mail
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.76_name, ; name: libaot-System.Net.Mail.dll.so
		ptr null; void* handle (0x0)
	}, ; 941
	%struct.DSOCacheEntry {
		i64 10484826484908863027, ; hash 0x918196231499ae33, from name: xamarin-debug-app-helper
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.8_name, ; name: libxamarin-debug-app-helper.so
		ptr null; void* handle (0x0)
	}, ; 942
	%struct.DSOCacheEntry {
		i64 10512098364414578010, ; hash 0x91e279c456e54d5a, from name: libaot-Xamarin.AndroidX.CursorAdapter
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.223_name, ; name: libaot-Xamarin.AndroidX.CursorAdapter.dll.so
		ptr null; void* handle (0x0)
	}, ; 943
	%struct.DSOCacheEntry {
		i64 10537870660453903817, ; hash 0x923e09889d5dadc9, from name: libaot-Xamarin.AndroidX.SavedState.SavedState.Ktx
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.257_name, ; name: libaot-Xamarin.AndroidX.SavedState.SavedState.Ktx.dll.so
		ptr null; void* handle (0x0)
	}, ; 944
	%struct.DSOCacheEntry {
		i64 10561557058910284153, ; hash 0x92923030035de979, from name: libaot-Microsoft.CSharp.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.11_name, ; name: libaot-Microsoft.CSharp.dll.so
		ptr null; void* handle (0x0)
	}, ; 945
	%struct.DSOCacheEntry {
		i64 10564753587979417148, ; hash 0x929d8b69ef0bf63c, from name: libaot-Xamarin.Google.Guava.ListenableFuture
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.275_name, ; name: libaot-Xamarin.Google.Guava.ListenableFuture.dll.so
		ptr null; void* handle (0x0)
	}, ; 946
	%struct.DSOCacheEntry {
		i64 10595762989148858956, ; hash 0x930bb64cc472ea4c, from name: System.Xml.XPath.XDocument
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.169_name, ; name: libaot-System.Xml.XPath.XDocument.dll.so
		ptr null; void* handle (0x0)
	}, ; 947
	%struct.DSOCacheEntry {
		i64 10616279736318774185, ; hash 0x93549a2c37754ba9, from name: aot-System.IO
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.67_name, ; name: libaot-System.IO.dll.so
		ptr null; void* handle (0x0)
	}, ; 948
	%struct.DSOCacheEntry {
		i64 10621576417650479994, ; hash 0x93676b79f0b9137a, from name: Xamarin.AndroidX.CustomView.PoolingContainer.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.225_name, ; name: libaot-Xamarin.AndroidX.CustomView.PoolingContainer.dll.so
		ptr null; void* handle (0x0)
	}, ; 949
	%struct.DSOCacheEntry {
		i64 10629008940543525821, ; hash 0x9381d351078c43bd, from name: Xamarin.Google.ErrorProne.Annotations.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.274_name, ; name: libaot-Xamarin.Google.ErrorProne.Annotations.dll.so
		ptr null; void* handle (0x0)
	}, ; 950
	%struct.DSOCacheEntry {
		i64 10638196514328206315, ; hash 0x93a2775dbf54dbeb, from name: aot-System.IO.FileSystem.Watcher
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.60_name, ; name: libaot-System.IO.FileSystem.Watcher.dll.so
		ptr null; void* handle (0x0)
	}, ; 951
	%struct.DSOCacheEntry {
		i64 10657322552275964462, ; hash 0x93e66a65792b122e, from name: aot-System.Runtime.InteropServices
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.117_name, ; name: libaot-System.Runtime.InteropServices.dll.so
		ptr null; void* handle (0x0)
	}, ; 952
	%struct.DSOCacheEntry {
		i64 10686502423950929984, ; hash 0x944e1555c6f23040, from name: libaot-netstandard
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.177_name, ; name: libaot-netstandard.dll.so
		ptr null; void* handle (0x0)
	}, ; 953
	%struct.DSOCacheEntry {
		i64 10687141298818528870, ; hash 0x94505a636c7c3666, from name: aot-System.IO.FileSystem.DriveInfo.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.58_name, ; name: libaot-System.IO.FileSystem.DriveInfo.dll.so
		ptr null; void* handle (0x0)
	}, ; 954
	%struct.DSOCacheEntry {
		i64 10690570724709643647, ; hash 0x945c896edc82357f, from name: System.Reflection.Emit.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.102_name, ; name: libaot-System.Reflection.Emit.dll.so
		ptr null; void* handle (0x0)
	}, ; 955
	%struct.DSOCacheEntry {
		i64 10738576877450676954, ; hash 0x950716c64dabcada, from name: aot-System.Security.Cryptography.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.136_name, ; name: libaot-System.Security.Cryptography.dll.so
		ptr null; void* handle (0x0)
	}, ; 956
	%struct.DSOCacheEntry {
		i64 10769655153368559797, ; hash 0x9575804d49fcf0b5, from name: libaot-Microsoft.Maui.Graphics.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.198_name, ; name: libaot-Microsoft.Maui.Graphics.dll.so
		ptr null; void* handle (0x0)
	}, ; 957
	%struct.DSOCacheEntry {
		i64 10785150219063592792, ; hash 0x95ac8cfb68830758, from name: System.Net.Primitives
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.80_name, ; name: libaot-System.Net.Primitives.dll.so
		ptr null; void* handle (0x0)
	}, ; 958
	%struct.DSOCacheEntry {
		i64 10802119357986192625, ; hash 0x95e8d652f2233cf1, from name: libaot-System.Threading.Tasks
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.154_name, ; name: libaot-System.Threading.Tasks.dll.so
		ptr null; void* handle (0x0)
	}, ; 959
	%struct.DSOCacheEntry {
		i64 10822644899632537592, ; hash 0x9631c23204ca5ff8, from name: System.Linq.Queryable
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.70_name, ; name: libaot-System.Linq.Queryable.dll.so
		ptr null; void* handle (0x0)
	}, ; 960
	%struct.DSOCacheEntry {
		i64 10827433220396269482, ; hash 0x9642c525d2fbbfaa, from name: aot-Xamarin.AndroidX.SavedState
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.256_name, ; name: libaot-Xamarin.AndroidX.SavedState.dll.so
		ptr null; void* handle (0x0)
	}, ; 961
	%struct.DSOCacheEntry {
		i64 10828441735335428004, ; hash 0x96465a6301aebfa4, from name: aot-System.Private.DataContractSerialization
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.95_name, ; name: libaot-System.Private.DataContractSerialization.dll.so
		ptr null; void* handle (0x0)
	}, ; 962
	%struct.DSOCacheEntry {
		i64 10830817578243619689, ; hash 0x964ecb340a447b69, from name: System.Formats.Tar
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.49_name, ; name: libaot-System.Formats.Tar.dll.so
		ptr null; void* handle (0x0)
	}, ; 963
	%struct.DSOCacheEntry {
		i64 10839453947355855891, ; hash 0x966d79ef6b59fc13, from name: libaot-Xamarin.AndroidX.SlidingPaneLayout.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.259_name, ; name: libaot-Xamarin.AndroidX.SlidingPaneLayout.dll.so
		ptr null; void* handle (0x0)
	}, ; 964
	%struct.DSOCacheEntry {
		i64 10847732767863316357, ; hash 0x968ae37a86db9f85, from name: Xamarin.AndroidX.Arch.Core.Common
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.211_name, ; name: libaot-Xamarin.AndroidX.Arch.Core.Common.dll.so
		ptr null; void* handle (0x0)
	}, ; 965
	%struct.DSOCacheEntry {
		i64 10891427439346915915, ; hash 0x97261f8d03371a4b, from name: Xamarin.AndroidX.Navigation.UI.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.251_name, ; name: libaot-Xamarin.AndroidX.Navigation.UI.dll.so
		ptr null; void* handle (0x0)
	}, ; 966
	%struct.DSOCacheEntry {
		i64 10899834349646441345, ; hash 0x9743fd975946eb81, from name: System.Web
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.163_name, ; name: libaot-System.Web.dll.so
		ptr null; void* handle (0x0)
	}, ; 967
	%struct.DSOCacheEntry {
		i64 10909187495076860591, ; hash 0x9765383a383092af, from name: libaot-System.Security.AccessControl
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.127_name, ; name: libaot-System.Security.AccessControl.dll.so
		ptr null; void* handle (0x0)
	}, ; 968
	%struct.DSOCacheEntry {
		i64 10959662263064203642, ; hash 0x98188ac2f032117a, from name: aot-Xamarin.AndroidX.Fragment
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.232_name, ; name: libaot-Xamarin.AndroidX.Fragment.dll.so
		ptr null; void* handle (0x0)
	}, ; 969
	%struct.DSOCacheEntry {
		i64 10964653383833615866, ; hash 0x982a4628ccaffdfa, from name: System.Diagnostics.Tracing
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.44_name, ; name: libaot-System.Diagnostics.Tracing.dll.so
		ptr null; void* handle (0x0)
	}, ; 970
	%struct.DSOCacheEntry {
		i64 10964819186949937619, ; hash 0x982adcf4d889d9d3, from name: System.Globalization.Extensions.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.51_name, ; name: libaot-System.Globalization.Extensions.dll.so
		ptr null; void* handle (0x0)
	}, ; 971
	%struct.DSOCacheEntry {
		i64 10980007583825662638, ; hash 0x9860d2b9110612ae, from name: Microsoft.Extensions.Configuration.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.184_name, ; name: libaot-Microsoft.Extensions.Configuration.dll.so
		ptr null; void* handle (0x0)
	}, ; 972
	%struct.DSOCacheEntry {
		i64 10989561537410033589, ; hash 0x9882c3fe3a9ee7b5, from name: Xamarin.AndroidX.Window.Extensions.Core.Core.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.270_name, ; name: libaot-Xamarin.AndroidX.Window.Extensions.Core.Core.dll.so
		ptr null; void* handle (0x0)
	}, ; 973
	%struct.DSOCacheEntry {
		i64 10999199133474082697, ; hash 0x98a50155ec81cf89, from name: aot-System.Runtime.Intrinsics
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.118_name, ; name: libaot-System.Runtime.Intrinsics.dll.so
		ptr null; void* handle (0x0)
	}, ; 974
	%struct.DSOCacheEntry {
		i64 11002392021536510416, ; hash 0x98b059401b4691d0, from name: aot-Xamarin.AndroidX.SlidingPaneLayout.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.259_name, ; name: libaot-Xamarin.AndroidX.SlidingPaneLayout.dll.so
		ptr null; void* handle (0x0)
	}, ; 975
	%struct.DSOCacheEntry {
		i64 11002576679268595294, ; hash 0x98b1013215cd365e, from name: Microsoft.Extensions.Logging.Abstractions
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.189_name, ; name: libaot-Microsoft.Extensions.Logging.Abstractions.dll.so
		ptr null; void* handle (0x0)
	}, ; 976
	%struct.DSOCacheEntry {
		i64 11023048688141570732, ; hash 0x98f9bc61168392ac, from name: System.Core
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.31_name, ; name: libaot-System.Core.dll.so
		ptr null; void* handle (0x0)
	}, ; 977
	%struct.DSOCacheEntry {
		i64 11025662355949164213, ; hash 0x9903057f0bbf16b5, from name: libaot-System.IO.IsolatedStorage.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.62_name, ; name: libaot-System.IO.IsolatedStorage.dll.so
		ptr null; void* handle (0x0)
	}, ; 978
	%struct.DSOCacheEntry {
		i64 11031718967604308070, ; hash 0x991889f3d5fe6866, from name: libaot-System.Net.Http.Json.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.73_name, ; name: libaot-System.Net.Http.Json.dll.so
		ptr null; void* handle (0x0)
	}, ; 979
	%struct.DSOCacheEntry {
		i64 11037814507248023548, ; hash 0x992e31d0412bf7fc, from name: System.Xml
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.173_name, ; name: libaot-System.Xml.dll.so
		ptr null; void* handle (0x0)
	}, ; 980
	%struct.DSOCacheEntry {
		i64 11043797956829943227, ; hash 0x994373baac0895bb, from name: aot-System.Diagnostics.TraceSource
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.43_name, ; name: libaot-System.Diagnostics.TraceSource.dll.so
		ptr null; void* handle (0x0)
	}, ; 981
	%struct.DSOCacheEntry {
		i64 11058657390679514429, ; hash 0x99783e4e38335d3d, from name: aot-System.Net.NetworkInformation
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.78_name, ; name: libaot-System.Net.NetworkInformation.dll.so
		ptr null; void* handle (0x0)
	}, ; 982
	%struct.DSOCacheEntry {
		i64 11063900969707219733, ; hash 0x998adf50197fab15, from name: libaot-System.Numerics.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.93_name, ; name: libaot-System.Numerics.dll.so
		ptr null; void* handle (0x0)
	}, ; 983
	%struct.DSOCacheEntry {
		i64 11071824625609515081, ; hash 0x99a705d600e0a049, from name: Xamarin.Google.ErrorProne.Annotations
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.274_name, ; name: libaot-Xamarin.Google.ErrorProne.Annotations.dll.so
		ptr null; void* handle (0x0)
	}, ; 984
	%struct.DSOCacheEntry {
		i64 11112238375867107341, ; hash 0x9a3699ed7d05c80d, from name: libaot-System.Diagnostics.Tracing.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.44_name, ; name: libaot-System.Diagnostics.Tracing.dll.so
		ptr null; void* handle (0x0)
	}, ; 985
	%struct.DSOCacheEntry {
		i64 11116516824914593865, ; hash 0x9a45cd2788b00849, from name: libaot-System.IO.FileSystem.Watcher
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.60_name, ; name: libaot-System.IO.FileSystem.Watcher.dll.so
		ptr null; void* handle (0x0)
	}, ; 986
	%struct.DSOCacheEntry {
		i64 11117789032719138129, ; hash 0x9a4a52387ef53d51, from name: libaot-System.Reflection
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.107_name, ; name: libaot-System.Reflection.dll.so
		ptr null; void* handle (0x0)
	}, ; 987
	%struct.DSOCacheEntry {
		i64 11155155660125070409, ; hash 0x9acf12f867f16449, from name: libaot-Microsoft.Extensions.Logging.Abstractions.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.189_name, ; name: libaot-Microsoft.Extensions.Logging.Abstractions.dll.so
		ptr null; void* handle (0x0)
	}, ; 988
	%struct.DSOCacheEntry {
		i64 11157521040508052244, ; hash 0x9ad77a45716de314, from name: libaot-System.IO.Compression.FileSystem.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.54_name, ; name: libaot-System.IO.Compression.FileSystem.dll.so
		ptr null; void* handle (0x0)
	}, ; 989
	%struct.DSOCacheEntry {
		i64 11158564309551918097, ; hash 0x9adb2f1e7231ac11, from name: libaot-System.Threading.Channels.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.149_name, ; name: libaot-System.Threading.Channels.dll.so
		ptr null; void* handle (0x0)
	}, ; 990
	%struct.DSOCacheEntry {
		i64 11162124722117608902, ; hash 0x9ae7d54b986d05c6, from name: Xamarin.AndroidX.ViewPager
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.267_name, ; name: libaot-Xamarin.AndroidX.ViewPager.dll.so
		ptr null; void* handle (0x0)
	}, ; 991
	%struct.DSOCacheEntry {
		i64 11164818937994912957, ; hash 0x9af167ab9cbda4bd, from name: System.Security.Cryptography.Native.Android
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.2_name, ; name: libSystem.Security.Cryptography.Native.Android.so
		ptr null; void* handle (0x0)
	}, ; 992
	%struct.DSOCacheEntry {
		i64 11171214345979581187, ; hash 0x9b08204291dc5303, from name: libaot-System.Text.RegularExpressions
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.148_name, ; name: libaot-System.Text.RegularExpressions.dll.so
		ptr null; void* handle (0x0)
	}, ; 993
	%struct.DSOCacheEntry {
		i64 11175324742386364903, ; hash 0x9b16baa4cf92b1e7, from name: System.Threading.Tasks.Extensions.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.152_name, ; name: libaot-System.Threading.Tasks.Extensions.dll.so
		ptr null; void* handle (0x0)
	}, ; 994
	%struct.DSOCacheEntry {
		i64 11188319605227840848, ; hash 0x9b44e5671724e550, from name: System.Threading.Overlapped
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.150_name, ; name: libaot-System.Threading.Overlapped.dll.so
		ptr null; void* handle (0x0)
	}, ; 995
	%struct.DSOCacheEntry {
		i64 11192348097445619853, ; hash 0x9b53354b86c3e88d, from name: aot-Xamarin.AndroidX.ResourceInspection.Annotation
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.255_name, ; name: libaot-Xamarin.AndroidX.ResourceInspection.Annotation.dll.so
		ptr null; void* handle (0x0)
	}, ; 996
	%struct.DSOCacheEntry {
		i64 11201657772120486503, ; hash 0x9b74486512bc3267, from name: System.Xml.XPath.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.170_name, ; name: libaot-System.Xml.XPath.dll.so
		ptr null; void* handle (0x0)
	}, ; 997
	%struct.DSOCacheEntry {
		i64 11212038206026375799, ; hash 0x9b9929582e4f6277, from name: aot-System.Runtime.InteropServices.RuntimeInformation
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.116_name, ; name: libaot-System.Runtime.InteropServices.RuntimeInformation.dll.so
		ptr null; void* handle (0x0)
	}, ; 998
	%struct.DSOCacheEntry {
		i64 11226772266259724153, ; hash 0x9bcd81e4e89e3779, from name: aot-Xamarin.AndroidX.Legacy.Support.Core.Utils.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.235_name, ; name: libaot-Xamarin.AndroidX.Legacy.Support.Core.Utils.dll.so
		ptr null; void* handle (0x0)
	}, ; 999
	%struct.DSOCacheEntry {
		i64 11245267750673177240, ; hash 0x9c0f37707307da98, from name: aot-System.Numerics.Vectors.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.92_name, ; name: libaot-System.Numerics.Vectors.dll.so
		ptr null; void* handle (0x0)
	}, ; 1000
	%struct.DSOCacheEntry {
		i64 11260568997247954509, ; hash 0x9c4593d789bdae4d, from name: Xamarin.AndroidX.Transition.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.263_name, ; name: libaot-Xamarin.AndroidX.Transition.dll.so
		ptr null; void* handle (0x0)
	}, ; 1001
	%struct.DSOCacheEntry {
		i64 11263951250740447317, ; hash 0x9c5197fbcbb38855, from name: aot-Xamarin.AndroidX.Navigation.Runtime
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.250_name, ; name: libaot-Xamarin.AndroidX.Navigation.Runtime.dll.so
		ptr null; void* handle (0x0)
	}, ; 1002
	%struct.DSOCacheEntry {
		i64 11265074437475878588, ; hash 0x9c559584161546bc, from name: Xamarin.Kotlin.StdLib.Jdk7.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.279_name, ; name: libaot-Xamarin.Kotlin.StdLib.Jdk7.dll.so
		ptr null; void* handle (0x0)
	}, ; 1003
	%struct.DSOCacheEntry {
		i64 11270596618290860596, ; hash 0x9c6933e8fff21234, from name: libaot-System.Net.Http.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.74_name, ; name: libaot-System.Net.Http.dll.so
		ptr null; void* handle (0x0)
	}, ; 1004
	%struct.DSOCacheEntry {
		i64 11277712621019035171, ; hash 0x9c827be07ec77623, from name: aot-System.Web.HttpUtility
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.162_name, ; name: libaot-System.Web.HttpUtility.dll.so
		ptr null; void* handle (0x0)
	}, ; 1005
	%struct.DSOCacheEntry {
		i64 11293286754667957794, ; hash 0x9cb9d0780e9b8e22, from name: aot-Xamarin.Android.Glide.DiskLruCache.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.202_name, ; name: libaot-Xamarin.Android.Glide.DiskLruCache.dll.so
		ptr null; void* handle (0x0)
	}, ; 1006
	%struct.DSOCacheEntry {
		i64 11297620656358036086, ; hash 0x9cc936212d561276, from name: libaot-System.Linq
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.71_name, ; name: libaot-System.Linq.dll.so
		ptr null; void* handle (0x0)
	}, ; 1007
	%struct.DSOCacheEntry {
		i64 11304522493790131002, ; hash 0x9ce1bb506dc6133a, from name: Xamarin.AndroidX.ConstraintLayout.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.218_name, ; name: libaot-Xamarin.AndroidX.ConstraintLayout.dll.so
		ptr null; void* handle (0x0)
	}, ; 1008
	%struct.DSOCacheEntry {
		i64 11327873123841536301, ; hash 0x9d34b096a744f12d, from name: aot-netstandard.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.177_name, ; name: libaot-netstandard.dll.so
		ptr null; void* handle (0x0)
	}, ; 1009
	%struct.DSOCacheEntry {
		i64 11328478925221472099, ; hash 0x9d36d78fc7532763, from name: libaot-Xamarin.AndroidX.Annotation.Experimental.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.207_name, ; name: libaot-Xamarin.AndroidX.Annotation.Experimental.dll.so
		ptr null; void* handle (0x0)
	}, ; 1010
	%struct.DSOCacheEntry {
		i64 11329407233932627207, ; hash 0x9d3a23da7e4b8d07, from name: aot-System.IO.Compression.Brotli
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.53_name, ; name: libaot-System.IO.Compression.Brotli.dll.so
		ptr null; void* handle (0x0)
	}, ; 1011
	%struct.DSOCacheEntry {
		i64 11339684046580168751, ; hash 0x9d5ea68f6593382f, from name: aot-Microsoft.Maui.Controls.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.194_name, ; name: libaot-Microsoft.Maui.Controls.dll.so
		ptr null; void* handle (0x0)
	}, ; 1012
	%struct.DSOCacheEntry {
		i64 11340910727871153756, ; hash 0x9d630238642d465c, from name: Xamarin.AndroidX.CursorAdapter
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.223_name, ; name: libaot-Xamarin.AndroidX.CursorAdapter.dll.so
		ptr null; void* handle (0x0)
	}, ; 1013
	%struct.DSOCacheEntry {
		i64 11352045248519547303, ; hash 0x9d8a9102002b29a7, from name: aot-Microsoft.Maui.Controls.Compatibility.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.193_name, ; name: libaot-Microsoft.Maui.Controls.Compatibility.dll.so
		ptr null; void* handle (0x0)
	}, ; 1014
	%struct.DSOCacheEntry {
		i64 11352561739844853276, ; hash 0x9d8c66c102249e1c, from name: libaot-Xamarin.AndroidX.Core.Core.Ktx
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.222_name, ; name: libaot-Xamarin.AndroidX.Core.Core.Ktx.dll.so
		ptr null; void* handle (0x0)
	}, ; 1015
	%struct.DSOCacheEntry {
		i64 11369008813813839762, ; hash 0x9dc6d547d3a8b792, from name: aot-Xamarin.AndroidX.Core.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.221_name, ; name: libaot-Xamarin.AndroidX.Core.dll.so
		ptr null; void* handle (0x0)
	}, ; 1016
	%struct.DSOCacheEntry {
		i64 11391399506422047453, ; hash 0x9e16617f32d8a2dd, from name: System.Globalization.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.52_name, ; name: libaot-System.Globalization.dll.so
		ptr null; void* handle (0x0)
	}, ; 1017
	%struct.DSOCacheEntry {
		i64 11413153824783247973, ; hash 0x9e63aaef2518aa65, from name: aot-System.Net.NameResolution.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.77_name, ; name: libaot-System.Net.NameResolution.dll.so
		ptr null; void* handle (0x0)
	}, ; 1018
	%struct.DSOCacheEntry {
		i64 11418345596566047934, ; hash 0x9e761cd2b5f70cbe, from name: System.Runtime.CompilerServices.Unsafe.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.111_name, ; name: libaot-System.Runtime.CompilerServices.Unsafe.dll.so
		ptr null; void* handle (0x0)
	}, ; 1019
	%struct.DSOCacheEntry {
		i64 11427651043692466812, ; hash 0x9e972c13f469527c, from name: System.Reflection.Primitives.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.105_name, ; name: libaot-System.Reflection.Primitives.dll.so
		ptr null; void* handle (0x0)
	}, ; 1020
	%struct.DSOCacheEntry {
		i64 11429568658666352219, ; hash 0x9e9dfc237bbeee5b, from name: aot-Jsr305Binding.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.272_name, ; name: libaot-Jsr305Binding.dll.so
		ptr null; void* handle (0x0)
	}, ; 1021
	%struct.DSOCacheEntry {
		i64 11432101114902388181, ; hash 0x9ea6fb64e61a9dd5, from name: System.AppContext
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.16_name, ; name: libaot-System.AppContext.dll.so
		ptr null; void* handle (0x0)
	}, ; 1022
	%struct.DSOCacheEntry {
		i64 11437608939786898104, ; hash 0x9eba8cbb4fd48ab8, from name: aot-Microsoft.Extensions.Options.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.191_name, ; name: libaot-Microsoft.Extensions.Options.dll.so
		ptr null; void* handle (0x0)
	}, ; 1023
	%struct.DSOCacheEntry {
		i64 11446671985764974897, ; hash 0x9edabf8623efc131, from name: Mono.Android.Export
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.179_name, ; name: libaot-Mono.Android.Export.dll.so
		ptr null; void* handle (0x0)
	}, ; 1024
	%struct.DSOCacheEntry {
		i64 11448276831755070604, ; hash 0x9ee0731f77186c8c, from name: System.Diagnostics.TextWriterTraceListener
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.41_name, ; name: libaot-System.Diagnostics.TextWriterTraceListener.dll.so
		ptr null; void* handle (0x0)
	}, ; 1025
	%struct.DSOCacheEntry {
		i64 11459687736992758643, ; hash 0x9f08fd47e05a7b73, from name: libaot-System.Diagnostics.DiagnosticSource
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.37_name, ; name: libaot-System.Diagnostics.DiagnosticSource.dll.so
		ptr null; void* handle (0x0)
	}, ; 1026
	%struct.DSOCacheEntry {
		i64 11465353776621081442, ; hash 0x9f1d1e8387aed362, from name: aot-System.Collections.Concurrent
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.18_name, ; name: libaot-System.Collections.Concurrent.dll.so
		ptr null; void* handle (0x0)
	}, ; 1027
	%struct.DSOCacheEntry {
		i64 11465884270599163874, ; hash 0x9f1f00fec8cd4fe2, from name: libaot-System.ValueTuple.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.161_name, ; name: libaot-System.ValueTuple.dll.so
		ptr null; void* handle (0x0)
	}, ; 1028
	%struct.DSOCacheEntry {
		i64 11468049509916024921, ; hash 0x9f26b244d9232059, from name: System.Diagnostics.StackTrace.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.40_name, ; name: libaot-System.Diagnostics.StackTrace.dll.so
		ptr null; void* handle (0x0)
	}, ; 1029
	%struct.DSOCacheEntry {
		i64 11468225467767098760, ; hash 0x9f27524d3a588d88, from name: libaot-Xamarin.AndroidX.ConstraintLayout
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.218_name, ; name: libaot-Xamarin.AndroidX.ConstraintLayout.dll.so
		ptr null; void* handle (0x0)
	}, ; 1030
	%struct.DSOCacheEntry {
		i64 11485890710487134646, ; hash 0x9f6614bf0f8b71b6, from name: System.Runtime.InteropServices
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.117_name, ; name: libaot-System.Runtime.InteropServices.dll.so
		ptr null; void* handle (0x0)
	}, ; 1031
	%struct.DSOCacheEntry {
		i64 11495032816624096970, ; hash 0x9f868f71845656ca, from name: aot-System.Collections.Specialized
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.21_name, ; name: libaot-System.Collections.Specialized.dll.so
		ptr null; void* handle (0x0)
	}, ; 1032
	%struct.DSOCacheEntry {
		i64 11498776041443918706, ; hash 0x9f93dbe2f6098372, from name: libaot-System.Threading.Overlapped.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.150_name, ; name: libaot-System.Threading.Overlapped.dll.so
		ptr null; void* handle (0x0)
	}, ; 1033
	%struct.DSOCacheEntry {
		i64 11501523568478995397, ; hash 0x9f9d9ebf72f943c5, from name: libaot-System.Xml.ReaderWriter.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.166_name, ; name: libaot-System.Xml.ReaderWriter.dll.so
		ptr null; void* handle (0x0)
	}, ; 1034
	%struct.DSOCacheEntry {
		i64 11509093151757905489, ; hash 0x9fb8833e65692e51, from name: libaot-System.Xml.XPath.XDocument
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.169_name, ; name: libaot-System.Xml.XPath.XDocument.dll.so
		ptr null; void* handle (0x0)
	}, ; 1035
	%struct.DSOCacheEntry {
		i64 11521729796983092563, ; hash 0x9fe56834a335f553, from name: libmonodroid
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.7_name, ; name: libmonodroid.so
		ptr null; void* handle (0x0)
	}, ; 1036
	%struct.DSOCacheEntry {
		i64 11530571088791430846, ; hash 0xa004d1504ccd66be, from name: Microsoft.Extensions.Logging
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.188_name, ; name: libaot-Microsoft.Extensions.Logging.dll.so
		ptr null; void* handle (0x0)
	}, ; 1037
	%struct.DSOCacheEntry {
		i64 11530669335547299986, ; hash 0xa0052aab27c94892, from name: System.Diagnostics.TraceSource.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.43_name, ; name: libaot-System.Diagnostics.TraceSource.dll.so
		ptr null; void* handle (0x0)
	}, ; 1038
	%struct.DSOCacheEntry {
		i64 11531048335771130113, ; hash 0xa006835e057f5901, from name: System.Linq.Queryable.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.70_name, ; name: libaot-System.Linq.Queryable.dll.so
		ptr null; void* handle (0x0)
	}, ; 1039
	%struct.DSOCacheEntry {
		i64 11532129836507303693, ; hash 0xa00a5afc88b38f0d, from name: libaot-Xamarin.AndroidX.Window.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.269_name, ; name: libaot-Xamarin.AndroidX.Window.dll.so
		ptr null; void* handle (0x0)
	}, ; 1040
	%struct.DSOCacheEntry {
		i64 11543093801659331803, ; hash 0xa0314ea798eaf4db, from name: aot-System.Memory
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.72_name, ; name: libaot-System.Memory.dll.so
		ptr null; void* handle (0x0)
	}, ; 1041
	%struct.DSOCacheEntry {
		i64 11550970115839711424, ; hash 0xa04d4a1ee5c758c0, from name: libaot-System.Diagnostics.Contracts.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.35_name, ; name: libaot-System.Diagnostics.Contracts.dll.so
		ptr null; void* handle (0x0)
	}, ; 1042
	%struct.DSOCacheEntry {
		i64 11557754129944451209, ; hash 0xa065642544a49889, from name: System.Core.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.31_name, ; name: libaot-System.Core.dll.so
		ptr null; void* handle (0x0)
	}, ; 1043
	%struct.DSOCacheEntry {
		i64 11568220747548066482, ; hash 0xa08a937a94e802b2, from name: aot-Xamarin.AndroidX.ProfileInstaller.ProfileInstaller
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.253_name, ; name: libaot-Xamarin.AndroidX.ProfileInstaller.ProfileInstaller.dll.so
		ptr null; void* handle (0x0)
	}, ; 1044
	%struct.DSOCacheEntry {
		i64 11575835489729696913, ; hash 0xa0a5a10be7b2d491, from name: System.IO.FileSystem.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.61_name, ; name: libaot-System.IO.FileSystem.dll.so
		ptr null; void* handle (0x0)
	}, ; 1045
	%struct.DSOCacheEntry {
		i64 11580057168383206117, ; hash 0xa0b4a0a4103262e5, from name: Xamarin.AndroidX.Annotation
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.206_name, ; name: libaot-Xamarin.AndroidX.Annotation.dll.so
		ptr null; void* handle (0x0)
	}, ; 1046
	%struct.DSOCacheEntry {
		i64 11581332126085780304, ; hash 0xa0b9283549299350, from name: aot-Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.245_name, ; name: libaot-Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll.so
		ptr null; void* handle (0x0)
	}, ; 1047
	%struct.DSOCacheEntry {
		i64 11597940890313164233, ; hash 0xa0f429ca8d1805c9, from name: netstandard
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.177_name, ; name: libaot-netstandard.dll.so
		ptr null; void* handle (0x0)
	}, ; 1048
	%struct.DSOCacheEntry {
		i64 11617856353302413837, ; hash 0xa13aeacc9e1b020d, from name: aot-System.IO.Pipes.AccessControl
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.64_name, ; name: libaot-System.IO.Pipes.AccessControl.dll.so
		ptr null; void* handle (0x0)
	}, ; 1049
	%struct.DSOCacheEntry {
		i64 11622665325505776179, ; hash 0xa14c0088b6058a33, from name: libaot-System.Runtime.InteropServices
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.117_name, ; name: libaot-System.Runtime.InteropServices.dll.so
		ptr null; void* handle (0x0)
	}, ; 1050
	%struct.DSOCacheEntry {
		i64 11637972874768420528, ; hash 0xa18262ab42340eb0, from name: aot-System.Diagnostics.DiagnosticSource.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.37_name, ; name: libaot-System.Diagnostics.DiagnosticSource.dll.so
		ptr null; void* handle (0x0)
	}, ; 1051
	%struct.DSOCacheEntry {
		i64 11661187929174585741, ; hash 0xa1d4dca35186318d, from name: aot-WindowsBase
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.175_name, ; name: libaot-WindowsBase.dll.so
		ptr null; void* handle (0x0)
	}, ; 1052
	%struct.DSOCacheEntry {
		i64 11663250515068520709, ; hash 0xa1dc308c850d0905, from name: aot-Xamarin.AndroidX.Lifecycle.Runtime.Ktx
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.242_name, ; name: libaot-Xamarin.AndroidX.Lifecycle.Runtime.Ktx.dll.so
		ptr null; void* handle (0x0)
	}, ; 1053
	%struct.DSOCacheEntry {
		i64 11672361001936329215, ; hash 0xa1fc8e7d0a8999ff, from name: Xamarin.AndroidX.Interpolator
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.234_name, ; name: libaot-Xamarin.AndroidX.Interpolator.dll.so
		ptr null; void* handle (0x0)
	}, ; 1054
	%struct.DSOCacheEntry {
		i64 11736966979867372210, ; hash 0xa2e21548777beab2, from name: Xamarin.AndroidX.Lifecycle.LiveData.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.237_name, ; name: libaot-Xamarin.AndroidX.Lifecycle.LiveData.dll.so
		ptr null; void* handle (0x0)
	}, ; 1055
	%struct.DSOCacheEntry {
		i64 11743665907891708234, ; hash 0xa2f9e1ec30c0214a, from name: System.Threading.Tasks
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.154_name, ; name: libaot-System.Threading.Tasks.dll.so
		ptr null; void* handle (0x0)
	}, ; 1056
	%struct.DSOCacheEntry {
		i64 11747011251535266582, ; hash 0xa305c47eb446c316, from name: aot-System.Globalization
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.52_name, ; name: libaot-System.Globalization.dll.so
		ptr null; void* handle (0x0)
	}, ; 1057
	%struct.DSOCacheEntry {
		i64 11764213056097819061, ; hash 0xa342e171eeb919b5, from name: libaot-System.Collections.Specialized.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.21_name, ; name: libaot-System.Collections.Specialized.dll.so
		ptr null; void* handle (0x0)
	}, ; 1058
	%struct.DSOCacheEntry {
		i64 11775896168281936811, ; hash 0xa36c632c765413ab, from name: aot-System.Private.CoreLib.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.283_name, ; name: libaot-System.Private.CoreLib.dll.so
		ptr null; void* handle (0x0)
	}, ; 1059
	%struct.DSOCacheEntry {
		i64 11782443198922974530, ; hash 0xa383a5a9d2056542, from name: aot-System.Collections.NonGeneric
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.20_name, ; name: libaot-System.Collections.NonGeneric.dll.so
		ptr null; void* handle (0x0)
	}, ; 1060
	%struct.DSOCacheEntry {
		i64 11799183892646765925, ; hash 0xa3bf1f3c50b8a565, from name: aot-System.Net.Primitives.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.80_name, ; name: libaot-System.Net.Primitives.dll.so
		ptr null; void* handle (0x0)
	}, ; 1061
	%struct.DSOCacheEntry {
		i64 11822727113666714038, ; hash 0xa412c3ab9e7bd9b6, from name: libaot-Xamarin.AndroidX.ViewPager2.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.268_name, ; name: libaot-Xamarin.AndroidX.ViewPager2.dll.so
		ptr null; void* handle (0x0)
	}, ; 1062
	%struct.DSOCacheEntry {
		i64 11846332969256999943, ; hash 0xa466a1122b8fdc07, from name: aot-System.Numerics
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.93_name, ; name: libaot-System.Numerics.dll.so
		ptr null; void* handle (0x0)
	}, ; 1063
	%struct.DSOCacheEntry {
		i64 11848514669829470329, ; hash 0xa46e6150eb30b879, from name: libaot-Xamarin.AndroidX.Navigation.UI.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.251_name, ; name: libaot-Xamarin.AndroidX.Navigation.UI.dll.so
		ptr null; void* handle (0x0)
	}, ; 1064
	%struct.DSOCacheEntry {
		i64 11853780460143320299, ; hash 0xa4811686444f1ceb, from name: libaot-Xamarin.AndroidX.VectorDrawable
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.264_name, ; name: libaot-Xamarin.AndroidX.VectorDrawable.dll.so
		ptr null; void* handle (0x0)
	}, ; 1065
	%struct.DSOCacheEntry {
		i64 11860757081410384235, ; hash 0xa499dfb97caa316b, from name: Xamarin.AndroidX.DocumentFile.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.226_name, ; name: libaot-Xamarin.AndroidX.DocumentFile.dll.so
		ptr null; void* handle (0x0)
	}, ; 1066
	%struct.DSOCacheEntry {
		i64 11878431249347270648, ; hash 0xa4d8aa49623e57f8, from name: libaot-System.Text.Encoding.Extensions.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.144_name, ; name: libaot-System.Text.Encoding.Extensions.dll.so
		ptr null; void* handle (0x0)
	}, ; 1067
	%struct.DSOCacheEntry {
		i64 11883219293542498704, ; hash 0xa4e9acfccbab4190, from name: aot-System.Linq.Parallel
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.69_name, ; name: libaot-System.Linq.Parallel.dll.so
		ptr null; void* handle (0x0)
	}, ; 1068
	%struct.DSOCacheEntry {
		i64 11893775249788029689, ; hash 0xa50f2d92e1f2caf9, from name: aot-Xamarin.AndroidX.Transition
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.263_name, ; name: libaot-Xamarin.AndroidX.Transition.dll.so
		ptr null; void* handle (0x0)
	}, ; 1069
	%struct.DSOCacheEntry {
		i64 11896613629761995876, ; hash 0xa5194310b808c464, from name: System.Runtime.Loader.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.119_name, ; name: libaot-System.Runtime.Loader.dll.so
		ptr null; void* handle (0x0)
	}, ; 1070
	%struct.DSOCacheEntry {
		i64 11905546682503808667, ; hash 0xa538ffa12378469b, from name: aot-System.Xml.Linq.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.165_name, ; name: libaot-System.Xml.Linq.dll.so
		ptr null; void* handle (0x0)
	}, ; 1071
	%struct.DSOCacheEntry {
		i64 11905917182671102100, ; hash 0xa53a5098ee54a094, from name: libaot-System.Threading.Overlapped
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.150_name, ; name: libaot-System.Threading.Overlapped.dll.so
		ptr null; void* handle (0x0)
	}, ; 1072
	%struct.DSOCacheEntry {
		i64 11909085194873014816, ; hash 0xa54591e340450a20, from name: System.Data.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.34_name, ; name: libaot-System.Data.dll.so
		ptr null; void* handle (0x0)
	}, ; 1073
	%struct.DSOCacheEntry {
		i64 11925868684967371445, ; hash 0xa58132620d6f62b5, from name: aot-System.Net.Sockets.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.85_name, ; name: libaot-System.Net.Sockets.dll.so
		ptr null; void* handle (0x0)
	}, ; 1074
	%struct.DSOCacheEntry {
		i64 11946511331825732781, ; hash 0xa5ca88c2cea6ccad, from name: libaot-Xamarin.AndroidX.Navigation.Fragment
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.249_name, ; name: libaot-Xamarin.AndroidX.Navigation.Fragment.dll.so
		ptr null; void* handle (0x0)
	}, ; 1075
	%struct.DSOCacheEntry {
		i64 11949219802464515130, ; hash 0xa5d42819c4f5f43a, from name: aot-System
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.174_name, ; name: libaot-System.dll.so
		ptr null; void* handle (0x0)
	}, ; 1076
	%struct.DSOCacheEntry {
		i64 11969475809364371543, ; hash 0xa61c1ed4e4cb6857, from name: libaot-System.Resources.Reader
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.108_name, ; name: libaot-System.Resources.Reader.dll.so
		ptr null; void* handle (0x0)
	}, ; 1077
	%struct.DSOCacheEntry {
		i64 11991047634523762324, ; hash 0xa668c24ad493ae94, from name: System.Net
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.91_name, ; name: libaot-System.Net.dll.so
		ptr null; void* handle (0x0)
	}, ; 1078
	%struct.DSOCacheEntry {
		i64 12007162008743431559, ; hash 0xa6a2023af3b7cd87, from name: libaot-System.Globalization.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.52_name, ; name: libaot-System.Globalization.dll.so
		ptr null; void* handle (0x0)
	}, ; 1079
	%struct.DSOCacheEntry {
		i64 12010728811987111536, ; hash 0xa6aeae380c0a8e70, from name: libaot-Xamarin.KotlinX.Coroutines.Android.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.281_name, ; name: libaot-Xamarin.KotlinX.Coroutines.Android.dll.so
		ptr null; void* handle (0x0)
	}, ; 1080
	%struct.DSOCacheEntry {
		i64 12016490382152452913, ; hash 0xa6c3265623184b31, from name: aot-System.Diagnostics.Tracing.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.44_name, ; name: libaot-System.Diagnostics.Tracing.dll.so
		ptr null; void* handle (0x0)
	}, ; 1081
	%struct.DSOCacheEntry {
		i64 12024697411268499440, ; hash 0xa6e04e960237d7f0, from name: aot-System.Dynamic.Runtime.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.47_name, ; name: libaot-System.Dynamic.Runtime.dll.so
		ptr null; void* handle (0x0)
	}, ; 1082
	%struct.DSOCacheEntry {
		i64 12025475895945156578, ; hash 0xa6e3129d18d557e2, from name: Xamarin.AndroidX.Loader.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.246_name, ; name: libaot-Xamarin.AndroidX.Loader.dll.so
		ptr null; void* handle (0x0)
	}, ; 1083
	%struct.DSOCacheEntry {
		i64 12040886584167504988, ; hash 0xa719d28d8e121c5c, from name: System.Net.ServicePoint
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.84_name, ; name: libaot-System.Net.ServicePoint.dll.so
		ptr null; void* handle (0x0)
	}, ; 1084
	%struct.DSOCacheEntry {
		i64 12043215804322375437, ; hash 0xa72218f76201670d, from name: aot-Xamarin.AndroidX.LocalBroadcastManager
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.247_name, ; name: libaot-Xamarin.AndroidX.LocalBroadcastManager.dll.so
		ptr null; void* handle (0x0)
	}, ; 1085
	%struct.DSOCacheEntry {
		i64 12050631976567110376, ; hash 0xa73c71ef8a3efae8, from name: aot-System.Linq
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.71_name, ; name: libaot-System.Linq.dll.so
		ptr null; void* handle (0x0)
	}, ; 1086
	%struct.DSOCacheEntry {
		i64 12051765732457062039, ; hash 0xa7407914a7541e97, from name: aot-System.Linq.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.71_name, ; name: libaot-System.Linq.dll.so
		ptr null; void* handle (0x0)
	}, ; 1087
	%struct.DSOCacheEntry {
		i64 12052751833701477691, ; hash 0xa743f9ef3db6ed3b, from name: System.Net.Primitives.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.80_name, ; name: libaot-System.Net.Primitives.dll.so
		ptr null; void* handle (0x0)
	}, ; 1088
	%struct.DSOCacheEntry {
		i64 12063623837170009990, ; hash 0xa76a99f6ce740786, from name: System.Security
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.140_name, ; name: libaot-System.Security.dll.so
		ptr null; void* handle (0x0)
	}, ; 1089
	%struct.DSOCacheEntry {
		i64 12066470145659385879, ; hash 0xa774b6aaa4e23817, from name: libaot-Xamarin.AndroidX.Concurrent.Futures
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.217_name, ; name: libaot-Xamarin.AndroidX.Concurrent.Futures.dll.so
		ptr null; void* handle (0x0)
	}, ; 1090
	%struct.DSOCacheEntry {
		i64 12080279749007161749, ; hash 0xa7a5c66d7aeab995, from name: libaot-Xamarin.Kotlin.StdLib.Jdk7
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.279_name, ; name: libaot-Xamarin.Kotlin.StdLib.Jdk7.dll.so
		ptr null; void* handle (0x0)
	}, ; 1091
	%struct.DSOCacheEntry {
		i64 12096697103934194533, ; hash 0xa7e019eccb7e8365, from name: System.Diagnostics.Contracts
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.35_name, ; name: libaot-System.Diagnostics.Contracts.dll.so
		ptr null; void* handle (0x0)
	}, ; 1092
	%struct.DSOCacheEntry {
		i64 12102847907131387746, ; hash 0xa7f5f40c43256f62, from name: System.Buffers
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.17_name, ; name: libaot-System.Buffers.dll.so
		ptr null; void* handle (0x0)
	}, ; 1093
	%struct.DSOCacheEntry {
		i64 12118598155788291684, ; hash 0xa82de8d0cb770e64, from name: aot-System.IO.Pipes
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.65_name, ; name: libaot-System.IO.Pipes.dll.so
		ptr null; void* handle (0x0)
	}, ; 1094
	%struct.DSOCacheEntry {
		i64 12137774235383566651, ; hash 0xa872095bbfed113b, from name: Xamarin.AndroidX.VectorDrawable
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.264_name, ; name: libaot-Xamarin.AndroidX.VectorDrawable.dll.so
		ptr null; void* handle (0x0)
	}, ; 1095
	%struct.DSOCacheEntry {
		i64 12145679461940342714, ; hash 0xa88e1f1ebcb62fba, from name: System.Text.Json
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.147_name, ; name: libaot-System.Text.Json.dll.so
		ptr null; void* handle (0x0)
	}, ; 1096
	%struct.DSOCacheEntry {
		i64 12173441707462773849, ; hash 0xa8f0c0bc3b3e4c59, from name: aot-System.Xml.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.173_name, ; name: libaot-System.Xml.dll.so
		ptr null; void* handle (0x0)
	}, ; 1097
	%struct.DSOCacheEntry {
		i64 12180156025829344412, ; hash 0xa9089b5f4c64449c, from name: aot-Xamarin.AndroidX.Concurrent.Futures
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.217_name, ; name: libaot-Xamarin.AndroidX.Concurrent.Futures.dll.so
		ptr null; void* handle (0x0)
	}, ; 1098
	%struct.DSOCacheEntry {
		i64 12180814867789829289, ; hash 0xa90af295e568d4a9, from name: Xamarin.AndroidX.Lifecycle.Runtime.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.241_name, ; name: libaot-Xamarin.AndroidX.Lifecycle.Runtime.dll.so
		ptr null; void* handle (0x0)
	}, ; 1099
	%struct.DSOCacheEntry {
		i64 12187578714954394028, ; hash 0xa922fa44c8f7e9ac, from name: System.Xml.XmlSerializer.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.172_name, ; name: libaot-System.Xml.XmlSerializer.dll.so
		ptr null; void* handle (0x0)
	}, ; 1100
	%struct.DSOCacheEntry {
		i64 12192045520349597797, ; hash 0xa932d8cdf5d49065, from name: libaot-Xamarin.AndroidX.SavedState.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.256_name, ; name: libaot-Xamarin.AndroidX.SavedState.dll.so
		ptr null; void* handle (0x0)
	}, ; 1101
	%struct.DSOCacheEntry {
		i64 12196119803066310016, ; hash 0xa9415257d3dfdd80, from name: Microsoft.Extensions.DependencyInjection.Abstractions.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.187_name, ; name: libaot-Microsoft.Extensions.DependencyInjection.Abstractions.dll.so
		ptr null; void* handle (0x0)
	}, ; 1102
	%struct.DSOCacheEntry {
		i64 12207700497574932172, ; hash 0xa96a76ec62502ecc, from name: libaot-Xamarin.AndroidX.LocalBroadcastManager
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.247_name, ; name: libaot-Xamarin.AndroidX.LocalBroadcastManager.dll.so
		ptr null; void* handle (0x0)
	}, ; 1103
	%struct.DSOCacheEntry {
		i64 12250548103292341206, ; hash 0xaa02b09800934bd6, from name: Xamarin.AndroidX.ExifInterface.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.231_name, ; name: libaot-Xamarin.AndroidX.ExifInterface.dll.so
		ptr null; void* handle (0x0)
	}, ; 1104
	%struct.DSOCacheEntry {
		i64 12256167329605373774, ; hash 0xaa16a74014e04f4e, from name: aot-System.IO.FileSystem.Primitives.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.59_name, ; name: libaot-System.IO.FileSystem.Primitives.dll.so
		ptr null; void* handle (0x0)
	}, ; 1105
	%struct.DSOCacheEntry {
		i64 12264906651085816385, ; hash 0xaa35b39ded4bc241, from name: Xamarin.AndroidX.Core.Core.Ktx.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.222_name, ; name: libaot-Xamarin.AndroidX.Core.Core.Ktx.dll.so
		ptr null; void* handle (0x0)
	}, ; 1106
	%struct.DSOCacheEntry {
		i64 12273329533996186173, ; hash 0xaa53a02f2d273a3d, from name: libaot-System.Reflection.Extensions.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.103_name, ; name: libaot-System.Reflection.Extensions.dll.so
		ptr null; void* handle (0x0)
	}, ; 1107
	%struct.DSOCacheEntry {
		i64 12278824155482493573, ; hash 0xaa6725836f051285, from name: libaot-System.Threading.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.158_name, ; name: libaot-System.Threading.dll.so
		ptr null; void* handle (0x0)
	}, ; 1108
	%struct.DSOCacheEntry {
		i64 12278928371408744993, ; hash 0xaa67844c1848b221, from name: System.Runtime.InteropServices.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.117_name, ; name: libaot-System.Runtime.InteropServices.dll.so
		ptr null; void* handle (0x0)
	}, ; 1109
	%struct.DSOCacheEntry {
		i64 12290938384773503399, ; hash 0xaa922f573ca359a7, from name: aot-Microsoft.Maui.Graphics.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.198_name, ; name: libaot-Microsoft.Maui.Graphics.dll.so
		ptr null; void* handle (0x0)
	}, ; 1110
	%struct.DSOCacheEntry {
		i64 12299321273609848463, ; hash 0xaaaff788a3eb868f, from name: libaot-System.Xml.Linq
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.165_name, ; name: libaot-System.Xml.Linq.dll.so
		ptr null; void* handle (0x0)
	}, ; 1111
	%struct.DSOCacheEntry {
		i64 12305572001815437791, ; hash 0xaac62c89b633a1df, from name: libaot-Xamarin.Android.Glide
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.200_name, ; name: libaot-Xamarin.Android.Glide.dll.so
		ptr null; void* handle (0x0)
	}, ; 1112
	%struct.DSOCacheEntry {
		i64 12315876021774320129, ; hash 0xaaeac7fd4f9c0201, from name: Microsoft.Extensions.Configuration.Abstractions.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.185_name, ; name: libaot-Microsoft.Extensions.Configuration.Abstractions.dll.so
		ptr null; void* handle (0x0)
	}, ; 1113
	%struct.DSOCacheEntry {
		i64 12319133490348723861, ; hash 0xaaf65aa3d0da8e95, from name: libaot-System.Drawing.Primitives
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.45_name, ; name: libaot-System.Drawing.Primitives.dll.so
		ptr null; void* handle (0x0)
	}, ; 1114
	%struct.DSOCacheEntry {
		i64 12332222936682028543, ; hash 0xab24db6c07db5dff, from name: System.Runtime.Handles
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.114_name, ; name: libaot-System.Runtime.Handles.dll.so
		ptr null; void* handle (0x0)
	}, ; 1115
	%struct.DSOCacheEntry {
		i64 12338163837237862793, ; hash 0xab39f6a3bb222189, from name: libaot-Mono.Android.Runtime.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.180_name, ; name: libaot-Mono.Android.Runtime.dll.so
		ptr null; void* handle (0x0)
	}, ; 1116
	%struct.DSOCacheEntry {
		i64 12343428525365727799, ; hash 0xab4caad874d91237, from name: aot-System.Xml.Serialization.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.167_name, ; name: libaot-System.Xml.Serialization.dll.so
		ptr null; void* handle (0x0)
	}, ; 1117
	%struct.DSOCacheEntry {
		i64 12350535155274665240, ; hash 0xab65ea49ac1ecd18, from name: Xamarin.AndroidX.Lifecycle.LiveData.Core.Ktx.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.239_name, ; name: libaot-Xamarin.AndroidX.Lifecycle.LiveData.Core.Ktx.dll.so
		ptr null; void* handle (0x0)
	}, ; 1118
	%struct.DSOCacheEntry {
		i64 12361725300599080333, ; hash 0xab8dabaa692ac58d, from name: aot-System.Threading.Tasks.Parallel.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.153_name, ; name: libaot-System.Threading.Tasks.Parallel.dll.so
		ptr null; void* handle (0x0)
	}, ; 1119
	%struct.DSOCacheEntry {
		i64 12362194327210625228, ; hash 0xab8f563e2dbd08cc, from name: aot-System.Formats.Tar
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.49_name, ; name: libaot-System.Formats.Tar.dll.so
		ptr null; void* handle (0x0)
	}, ; 1120
	%struct.DSOCacheEntry {
		i64 12362395135250488461, ; hash 0xab900ce0719f5c8d, from name: aot-System.Drawing
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.46_name, ; name: libaot-System.Drawing.dll.so
		ptr null; void* handle (0x0)
	}, ; 1121
	%struct.DSOCacheEntry {
		i64 12363533800711166636, ; hash 0xab94187ca7ec9aac, from name: libaot-System.Transactions.Local.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.159_name, ; name: libaot-System.Transactions.Local.dll.so
		ptr null; void* handle (0x0)
	}, ; 1122
	%struct.DSOCacheEntry {
		i64 12378770766169852216, ; hash 0xabca3a6d218b4938, from name: aot-Xamarin.KotlinX.Coroutines.Android.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.281_name, ; name: libaot-Xamarin.KotlinX.Coroutines.Android.dll.so
		ptr null; void* handle (0x0)
	}, ; 1123
	%struct.DSOCacheEntry {
		i64 12405317157449198374, ; hash 0xac288a3a7fd16b26, from name: libaot-Xamarin.KotlinX.Coroutines.Core.Jvm.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.282_name, ; name: libaot-Xamarin.KotlinX.Coroutines.Core.Jvm.dll.so
		ptr null; void* handle (0x0)
	}, ; 1124
	%struct.DSOCacheEntry {
		i64 12435251182579033392, ; hash 0xac92e310d6612530, from name: libaot-System.Text.Encoding.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.145_name, ; name: libaot-System.Text.Encoding.dll.so
		ptr null; void* handle (0x0)
	}, ; 1125
	%struct.DSOCacheEntry {
		i64 12439793764729580087, ; hash 0xaca3068529d36a37, from name: libaot-System.ComponentModel.Primitives.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.26_name, ; name: libaot-System.ComponentModel.Primitives.dll.so
		ptr null; void* handle (0x0)
	}, ; 1126
	%struct.DSOCacheEntry {
		i64 12450626906808540265, ; hash 0xacc983349b3e5c69, from name: libaot-System.Net.ServicePoint.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.84_name, ; name: libaot-System.Net.ServicePoint.dll.so
		ptr null; void* handle (0x0)
	}, ; 1127
	%struct.DSOCacheEntry {
		i64 12453234617382276517, ; hash 0xacd2c6e789ab0da5, from name: libaot-System.Reflection.Primitives
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.105_name, ; name: libaot-System.Reflection.Primitives.dll.so
		ptr null; void* handle (0x0)
	}, ; 1128
	%struct.DSOCacheEntry {
		i64 12456599198595667770, ; hash 0xacdebaf925b5d73a, from name: System.Resources.ResourceManager.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.109_name, ; name: libaot-System.Resources.ResourceManager.dll.so
		ptr null; void* handle (0x0)
	}, ; 1129
	%struct.DSOCacheEntry {
		i64 12464464677852995538, ; hash 0xacfaac95bed4dfd2, from name: libaot-Xamarin.Kotlin.StdLib.Jdk8.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.280_name, ; name: libaot-Xamarin.Kotlin.StdLib.Jdk8.dll.so
		ptr null; void* handle (0x0)
	}, ; 1130
	%struct.DSOCacheEntry {
		i64 12466529513160295733, ; hash 0xad02028aadd7c535, from name: libaot-System.IO.Pipes.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.65_name, ; name: libaot-System.IO.Pipes.dll.so
		ptr null; void* handle (0x0)
	}, ; 1131
	%struct.DSOCacheEntry {
		i64 12479103209920401597, ; hash 0xad2eae4096be10bd, from name: libaot-System.Net.NameResolution.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.77_name, ; name: libaot-System.Net.NameResolution.dll.so
		ptr null; void* handle (0x0)
	}, ; 1132
	%struct.DSOCacheEntry {
		i64 12531980697337323275, ; hash 0xadea8a0c04d7df0b, from name: libaot-Xamarin.AndroidX.AppCompat.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.209_name, ; name: libaot-Xamarin.AndroidX.AppCompat.dll.so
		ptr null; void* handle (0x0)
	}, ; 1133
	%struct.DSOCacheEntry {
		i64 12543648076616421447, ; hash 0xae13fd77723bd047, from name: aot-System.IO.IsolatedStorage.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.62_name, ; name: libaot-System.IO.IsolatedStorage.dll.so
		ptr null; void* handle (0x0)
	}, ; 1134
	%struct.DSOCacheEntry {
		i64 12550732019250633519, ; hash 0xae2d28465e8e1b2f, from name: System.IO.Compression
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.56_name, ; name: libaot-System.IO.Compression.dll.so
		ptr null; void* handle (0x0)
	}, ; 1135
	%struct.DSOCacheEntry {
		i64 12590519508742077906, ; hash 0xaeba82c928327dd2, from name: libaot-Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.245_name, ; name: libaot-Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll.so
		ptr null; void* handle (0x0)
	}, ; 1136
	%struct.DSOCacheEntry {
		i64 12607454609792316882, ; hash 0xaef6ad2ba28835d2, from name: libaot-Xamarin.AndroidX.Lifecycle.LiveData.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.237_name, ; name: libaot-Xamarin.AndroidX.Lifecycle.LiveData.dll.so
		ptr null; void* handle (0x0)
	}, ; 1137
	%struct.DSOCacheEntry {
		i64 12645019786013722111, ; hash 0xaf7c227fcb2245ff, from name: libaot-Xamarin.AndroidX.ExifInterface.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.231_name, ; name: libaot-Xamarin.AndroidX.ExifInterface.dll.so
		ptr null; void* handle (0x0)
	}, ; 1138
	%struct.DSOCacheEntry {
		i64 12648537676456605650, ; hash 0xaf88a2007d5737d2, from name: aot-Xamarin.AndroidX.Lifecycle.ViewModelSavedState
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.245_name, ; name: libaot-Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll.so
		ptr null; void* handle (0x0)
	}, ; 1139
	%struct.DSOCacheEntry {
		i64 12664561597175764147, ; hash 0xafc18fac43b714b3, from name: System.Security.AccessControl.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.127_name, ; name: libaot-System.Security.AccessControl.dll.so
		ptr null; void* handle (0x0)
	}, ; 1140
	%struct.DSOCacheEntry {
		i64 12674035147592014371, ; hash 0xafe337d11b099a23, from name: aot-Microsoft.Extensions.Logging.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.188_name, ; name: libaot-Microsoft.Extensions.Logging.dll.so
		ptr null; void* handle (0x0)
	}, ; 1141
	%struct.DSOCacheEntry {
		i64 12674984561979589840, ; hash 0xafe6974dde5a84d0, from name: Xamarin.AndroidX.Activity.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.204_name, ; name: libaot-Xamarin.AndroidX.Activity.dll.so
		ptr null; void* handle (0x0)
	}, ; 1142
	%struct.DSOCacheEntry {
		i64 12685934069698623289, ; hash 0xb00d7dd2cc697739, from name: aot-Microsoft.Win32.Primitives.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.14_name, ; name: libaot-Microsoft.Win32.Primitives.dll.so
		ptr null; void* handle (0x0)
	}, ; 1143
	%struct.DSOCacheEntry {
		i64 12697791992431014197, ; hash 0xb0379e8a94a67135, from name: Xamarin.Google.Guava.ListenableFuture.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.275_name, ; name: libaot-Xamarin.Google.Guava.ListenableFuture.dll.so
		ptr null; void* handle (0x0)
	}, ; 1144
	%struct.DSOCacheEntry {
		i64 12699438905320632645, ; hash 0xb03d78665e697145, from name: libaot-Xamarin.Kotlin.StdLib.Common
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.278_name, ; name: libaot-Xamarin.Kotlin.StdLib.Common.dll.so
		ptr null; void* handle (0x0)
	}, ; 1145
	%struct.DSOCacheEntry {
		i64 12700543734426720211, ; hash 0xb041653c70d157d3, from name: Xamarin.AndroidX.Collection
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.215_name, ; name: libaot-Xamarin.AndroidX.Collection.dll.so
		ptr null; void* handle (0x0)
	}, ; 1146
	%struct.DSOCacheEntry {
		i64 12708238894395270091, ; hash 0xb05cbbf17d3ba3cb, from name: System.IO
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.67_name, ; name: libaot-System.IO.dll.so
		ptr null; void* handle (0x0)
	}, ; 1147
	%struct.DSOCacheEntry {
		i64 12708922737231849740, ; hash 0xb05f29e50e96e90c, from name: System.Text.Encoding.Extensions
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.144_name, ; name: libaot-System.Text.Encoding.Extensions.dll.so
		ptr null; void* handle (0x0)
	}, ; 1148
	%struct.DSOCacheEntry {
		i64 12727750515385895548, ; hash 0xb0a20da8c35f0a7c, from name: libaot-Microsoft.Extensions.DependencyInjection
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.186_name, ; name: libaot-Microsoft.Extensions.DependencyInjection.dll.so
		ptr null; void* handle (0x0)
	}, ; 1149
	%struct.DSOCacheEntry {
		i64 12728648947223343692, ; hash 0xb0a53ec739e5b24c, from name: libaot-Microsoft.Win32.Registry
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.15_name, ; name: libaot-Microsoft.Win32.Registry.dll.so
		ptr null; void* handle (0x0)
	}, ; 1150
	%struct.DSOCacheEntry {
		i64 12729020963417599777, ; hash 0xb0a6911fff01af21, from name: aot-System.Net.Quic.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.81_name, ; name: libaot-System.Net.Quic.dll.so
		ptr null; void* handle (0x0)
	}, ; 1151
	%struct.DSOCacheEntry {
		i64 12733205053097217818, ; hash 0xb0b56e884a118f1a, from name: Xamarin.AndroidX.Fragment.Ktx.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.233_name, ; name: libaot-Xamarin.AndroidX.Fragment.Ktx.dll.so
		ptr null; void* handle (0x0)
	}, ; 1152
	%struct.DSOCacheEntry {
		i64 12739747815404616738, ; hash 0xb0ccad23d9403c22, from name: libaot-Xamarin.AndroidX.Security.SecurityCrypto
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.258_name, ; name: libaot-Xamarin.AndroidX.Security.SecurityCrypto.dll.so
		ptr null; void* handle (0x0)
	}, ; 1153
	%struct.DSOCacheEntry {
		i64 12748027147418257300, ; hash 0xb0ea17260ce6c794, from name: libaot-Xamarin.AndroidX.ResourceInspection.Annotation.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.255_name, ; name: libaot-Xamarin.AndroidX.ResourceInspection.Annotation.dll.so
		ptr null; void* handle (0x0)
	}, ; 1154
	%struct.DSOCacheEntry {
		i64 12753841065332862057, ; hash 0xb0febee04cf46c69, from name: Xamarin.AndroidX.Window
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.269_name, ; name: libaot-Xamarin.AndroidX.Window.dll.so
		ptr null; void* handle (0x0)
	}, ; 1155
	%struct.DSOCacheEntry {
		i64 12777305264992360515, ; hash 0xb1521b7102991843, from name: aot-Xamarin.KotlinX.Coroutines.Android
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.281_name, ; name: libaot-Xamarin.KotlinX.Coroutines.Android.dll.so
		ptr null; void* handle (0x0)
	}, ; 1156
	%struct.DSOCacheEntry {
		i64 12813717246272072325, ; hash 0xb1d377f20c57ea85, from name: libaot-Xamarin.AndroidX.Emoji2.ViewsHelper
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.230_name, ; name: libaot-Xamarin.AndroidX.Emoji2.ViewsHelper.dll.so
		ptr null; void* handle (0x0)
	}, ; 1157
	%struct.DSOCacheEntry {
		i64 12823155812822698683, ; hash 0xb1f5004592c84abb, from name: System.Reflection.DispatchProxy.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.99_name, ; name: libaot-System.Reflection.DispatchProxy.dll.so
		ptr null; void* handle (0x0)
	}, ; 1158
	%struct.DSOCacheEntry {
		i64 12835242264250840079, ; hash 0xb21ff0d5d6c0740f, from name: System.IO.Pipes
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.65_name, ; name: libaot-System.IO.Pipes.dll.so
		ptr null; void* handle (0x0)
	}, ; 1159
	%struct.DSOCacheEntry {
		i64 12842431879475601171, ; hash 0xb2397bc0944b9f13, from name: System.Security.Claims.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.128_name, ; name: libaot-System.Security.Claims.dll.so
		ptr null; void* handle (0x0)
	}, ; 1160
	%struct.DSOCacheEntry {
		i64 12843321153144804894, ; hash 0xb23ca48abd74d61e, from name: Microsoft.Extensions.Primitives
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.192_name, ; name: libaot-Microsoft.Extensions.Primitives.dll.so
		ptr null; void* handle (0x0)
	}, ; 1161
	%struct.DSOCacheEntry {
		i64 12857960540543662497, ; hash 0xb270a6fcbb1839a1, from name: aot-System.Transactions.Local
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.159_name, ; name: libaot-System.Transactions.Local.dll.so
		ptr null; void* handle (0x0)
	}, ; 1162
	%struct.DSOCacheEntry {
		i64 12868190565700119421, ; hash 0xb294ff241296ab7d, from name: libaot-System.Runtime.InteropServices.JavaScript.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.115_name, ; name: libaot-System.Runtime.InteropServices.JavaScript.dll.so
		ptr null; void* handle (0x0)
	}, ; 1163
	%struct.DSOCacheEntry {
		i64 12872620911514443596, ; hash 0xb2a4bc8457155f4c, from name: aot-Xamarin.AndroidX.CoordinatorLayout.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.220_name, ; name: libaot-Xamarin.AndroidX.CoordinatorLayout.dll.so
		ptr null; void* handle (0x0)
	}, ; 1164
	%struct.DSOCacheEntry {
		i64 12875951528938057945, ; hash 0xb2b091b2238030d9, from name: Xamarin.AndroidX.DrawerLayout.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.227_name, ; name: libaot-Xamarin.AndroidX.DrawerLayout.dll.so
		ptr null; void* handle (0x0)
	}, ; 1165
	%struct.DSOCacheEntry {
		i64 12895691319166646681, ; hash 0xb2f6b2ee34043999, from name: aot-System.Runtime.Serialization.Primitives
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.123_name, ; name: libaot-System.Runtime.Serialization.Primitives.dll.so
		ptr null; void* handle (0x0)
	}, ; 1166
	%struct.DSOCacheEntry {
		i64 12909532736614132430, ; hash 0xb327dfa056296ace, from name: libaot-System.Net.Ping
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.79_name, ; name: libaot-System.Net.Ping.dll.so
		ptr null; void* handle (0x0)
	}, ; 1167
	%struct.DSOCacheEntry {
		i64 12937319369933575792, ; hash 0xb38a976c0eabd670, from name: aot-Xamarin.Google.Android.Material.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.271_name, ; name: libaot-Xamarin.Google.Android.Material.dll.so
		ptr null; void* handle (0x0)
	}, ; 1168
	%struct.DSOCacheEntry {
		i64 12941098956319990056, ; hash 0xb39804ef96a1a128, from name: Xamarin.AndroidX.AppCompat.AppCompatResources.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.210_name, ; name: libaot-Xamarin.AndroidX.AppCompat.AppCompatResources.dll.so
		ptr null; void* handle (0x0)
	}, ; 1169
	%struct.DSOCacheEntry {
		i64 12964673882120879242, ; hash 0xb3ebc634bc997c8a, from name: libaot-System.Runtime.Serialization.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.125_name, ; name: libaot-System.Runtime.Serialization.dll.so
		ptr null; void* handle (0x0)
	}, ; 1170
	%struct.DSOCacheEntry {
		i64 12968840717732977849, ; hash 0xb3fa93ebc1189cb9, from name: aot-Xamarin.Google.ErrorProne.Annotations
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.274_name, ; name: libaot-Xamarin.Google.ErrorProne.Annotations.dll.so
		ptr null; void* handle (0x0)
	}, ; 1171
	%struct.DSOCacheEntry {
		i64 12975930668465563552, ; hash 0xb413c4318bfca7a0, from name: libaot-System.Diagnostics.Tools
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.42_name, ; name: libaot-System.Diagnostics.Tools.dll.so
		ptr null; void* handle (0x0)
	}, ; 1172
	%struct.DSOCacheEntry {
		i64 12977294688744349038, ; hash 0xb4189cc3442b9d6e, from name: aot-Xamarin.Google.ErrorProne.Annotations.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.274_name, ; name: libaot-Xamarin.Google.ErrorProne.Annotations.dll.so
		ptr null; void* handle (0x0)
	}, ; 1173
	%struct.DSOCacheEntry {
		i64 12982280885948128408, ; hash 0xb42a53aec5481c98, from name: Xamarin.AndroidX.CustomView.PoolingContainer
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.225_name, ; name: libaot-Xamarin.AndroidX.CustomView.PoolingContainer.dll.so
		ptr null; void* handle (0x0)
	}, ; 1174
	%struct.DSOCacheEntry {
		i64 12996638905122625135, ; hash 0xb45d56399ddb166f, from name: System.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.174_name, ; name: libaot-System.dll.so
		ptr null; void* handle (0x0)
	}, ; 1175
	%struct.DSOCacheEntry {
		i64 13006425725023322809, ; hash 0xb4801b49318482b9, from name: libaot-Xamarin.AndroidX.DrawerLayout
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.227_name, ; name: libaot-Xamarin.AndroidX.DrawerLayout.dll.so
		ptr null; void* handle (0x0)
	}, ; 1176
	%struct.DSOCacheEntry {
		i64 13006447531111757675, ; hash 0xb4802f1e51ac376b, from name: aot-System.Security.Cryptography.Cng.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.130_name, ; name: libaot-System.Security.Cryptography.Cng.dll.so
		ptr null; void* handle (0x0)
	}, ; 1177
	%struct.DSOCacheEntry {
		i64 13017125083246937125, ; hash 0xb4a61e4ba7c2c425, from name: libaot-System.Diagnostics.FileVersionInfo
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.38_name, ; name: libaot-System.Diagnostics.FileVersionInfo.dll.so
		ptr null; void* handle (0x0)
	}, ; 1178
	%struct.DSOCacheEntry {
		i64 13039722614324072723, ; hash 0xb4f666a15c6a1113, from name: aot-System.Diagnostics.Tracing
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.44_name, ; name: libaot-System.Diagnostics.Tracing.dll.so
		ptr null; void* handle (0x0)
	}, ; 1179
	%struct.DSOCacheEntry {
		i64 13057408680142590095, ; hash 0xb5353c037300508f, from name: libaot-System.Reflection.Extensions
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.103_name, ; name: libaot-System.Reflection.Extensions.dll.so
		ptr null; void* handle (0x0)
	}, ; 1180
	%struct.DSOCacheEntry {
		i64 13067966148190955579, ; hash 0xb55abdf987c0683b, from name: Xamarin.AndroidX.Browser.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.213_name, ; name: libaot-Xamarin.AndroidX.Browser.dll.so
		ptr null; void* handle (0x0)
	}, ; 1181
	%struct.DSOCacheEntry {
		i64 13068061340980117689, ; hash 0xb55b148d542280b9, from name: libaot-System.Security.Cryptography.Encoding
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.132_name, ; name: libaot-System.Security.Cryptography.Encoding.dll.so
		ptr null; void* handle (0x0)
	}, ; 1182
	%struct.DSOCacheEntry {
		i64 13073566528136159500, ; hash 0xb56ea37d98fe210c, from name: aot-Xamarin.AndroidX.AppCompat.AppCompatResources.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.210_name, ; name: libaot-Xamarin.AndroidX.AppCompat.AppCompatResources.dll.so
		ptr null; void* handle (0x0)
	}, ; 1183
	%struct.DSOCacheEntry {
		i64 13087390844131920673, ; hash 0xb59fc0a1fd2ecb21, from name: aot-Microsoft.Extensions.Logging.Abstractions
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.189_name, ; name: libaot-Microsoft.Extensions.Logging.Abstractions.dll.so
		ptr null; void* handle (0x0)
	}, ; 1184
	%struct.DSOCacheEntry {
		i64 13089692111129741609, ; hash 0xb5a7ed9f771f0929, from name: aot-System.Reflection.TypeExtensions.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.106_name, ; name: libaot-System.Reflection.TypeExtensions.dll.so
		ptr null; void* handle (0x0)
	}, ; 1185
	%struct.DSOCacheEntry {
		i64 13101809809254258831, ; hash 0xb5d2fa9aeb54188f, from name: aot-Xamarin.AndroidX.DrawerLayout.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.227_name, ; name: libaot-Xamarin.AndroidX.DrawerLayout.dll.so
		ptr null; void* handle (0x0)
	}, ; 1186
	%struct.DSOCacheEntry {
		i64 13112580004984807512, ; hash 0xb5f93e0a86026058, from name: aot-Xamarin.AndroidX.Emoji2.ViewsHelper
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.230_name, ; name: libaot-Xamarin.AndroidX.Emoji2.ViewsHelper.dll.so
		ptr null; void* handle (0x0)
	}, ; 1187
	%struct.DSOCacheEntry {
		i64 13114936752209646297, ; hash 0xb6019d7d7f2bd2d9, from name: Xamarin.Google.Android.Material.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.271_name, ; name: libaot-Xamarin.Google.Android.Material.dll.so
		ptr null; void* handle (0x0)
	}, ; 1188
	%struct.DSOCacheEntry {
		i64 13116315589229894972, ; hash 0xb606838901f75d3c, from name: aot-System.Net.Primitives
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.80_name, ; name: libaot-System.Net.Primitives.dll.so
		ptr null; void* handle (0x0)
	}, ; 1189
	%struct.DSOCacheEntry {
		i64 13122712522937545033, ; hash 0xb61d3d8333433149, from name: aot-System.Xml.XPath.XDocument
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.169_name, ; name: libaot-System.Xml.XPath.XDocument.dll.so
		ptr null; void* handle (0x0)
	}, ; 1190
	%struct.DSOCacheEntry {
		i64 13132987453041329016, ; hash 0xb641be81ca30c378, from name: libaot-Xamarin.Android.Glide.DiskLruCache.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.202_name, ; name: libaot-Xamarin.Android.Glide.DiskLruCache.dll.so
		ptr null; void* handle (0x0)
	}, ; 1191
	%struct.DSOCacheEntry {
		i64 13161955518152598171, ; hash 0xb6a8a8cf08fa629b, from name: libaot-Xamarin.AndroidX.Lifecycle.ViewModelSavedState
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.245_name, ; name: libaot-Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll.so
		ptr null; void* handle (0x0)
	}, ; 1192
	%struct.DSOCacheEntry {
		i64 13166780507886895166, ; hash 0xb6b9cd1c8022c03e, from name: libaot-System.Text.Encoding
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.145_name, ; name: libaot-System.Text.Encoding.dll.so
		ptr null; void* handle (0x0)
	}, ; 1193
	%struct.DSOCacheEntry {
		i64 13195302935526416900, ; hash 0xb71f221bafb8a204, from name: System.Threading.Overlapped.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.150_name, ; name: libaot-System.Threading.Overlapped.dll.so
		ptr null; void* handle (0x0)
	}, ; 1194
	%struct.DSOCacheEntry {
		i64 13195302980748307708, ; hash 0xb71f22263727ecfc, from name: Xamarin.AndroidX.Navigation.Common.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.248_name, ; name: libaot-Xamarin.AndroidX.Navigation.Common.dll.so
		ptr null; void* handle (0x0)
	}, ; 1195
	%struct.DSOCacheEntry {
		i64 13205680769184534978, ; hash 0xb74400b1607391c2, from name: libaot-System.Runtime.Serialization.Json
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.122_name, ; name: libaot-System.Runtime.Serialization.Json.dll.so
		ptr null; void* handle (0x0)
	}, ; 1196
	%struct.DSOCacheEntry {
		i64 13218213817707774047, ; hash 0xb770876f21a1c05f, from name: libaot-Xamarin.AndroidX.Tracing.Tracing
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.262_name, ; name: libaot-Xamarin.AndroidX.Tracing.Tracing.dll.so
		ptr null; void* handle (0x0)
	}, ; 1197
	%struct.DSOCacheEntry {
		i64 13218945160029580850, ; hash 0xb773209608eeae32, from name: aot-System.Globalization.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.52_name, ; name: libaot-System.Globalization.dll.so
		ptr null; void* handle (0x0)
	}, ; 1198
	%struct.DSOCacheEntry {
		i64 13222957746497227746, ; hash 0xb78162031ff78be2, from name: libaot-Xamarin.AndroidX.Fragment.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.232_name, ; name: libaot-Xamarin.AndroidX.Fragment.dll.so
		ptr null; void* handle (0x0)
	}, ; 1199
	%struct.DSOCacheEntry {
		i64 13242020313873645299, ; hash 0xb7c51b50f4f1fef3, from name: libaot-Xamarin.AndroidX.Annotation.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.206_name, ; name: libaot-Xamarin.AndroidX.Annotation.dll.so
		ptr null; void* handle (0x0)
	}, ; 1200
	%struct.DSOCacheEntry {
		i64 13259403323775206793, ; hash 0xb802dd1257414589, from name: aot-Xamarin.AndroidX.SavedState.SavedState.Ktx.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.257_name, ; name: libaot-Xamarin.AndroidX.SavedState.SavedState.Ktx.dll.so
		ptr null; void* handle (0x0)
	}, ; 1201
	%struct.DSOCacheEntry {
		i64 13285640494417243250, ; hash 0xb86013a3ab48ec72, from name: libaot-Microsoft.Maui.Controls.Xaml
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.195_name, ; name: libaot-Microsoft.Maui.Controls.Xaml.dll.so
		ptr null; void* handle (0x0)
	}, ; 1202
	%struct.DSOCacheEntry {
		i64 13314286428381311703, ; hash 0xb8c5d8f6e978f2d7, from name: libaot-System.Console
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.30_name, ; name: libaot-System.Console.dll.so
		ptr null; void* handle (0x0)
	}, ; 1203
	%struct.DSOCacheEntry {
		i64 13323148484643576660, ; hash 0xb8e554f52cf6db54, from name: libaot-Xamarin.AndroidX.Navigation.Common.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.248_name, ; name: libaot-Xamarin.AndroidX.Navigation.Common.dll.so
		ptr null; void* handle (0x0)
	}, ; 1204
	%struct.DSOCacheEntry {
		i64 13352871532007464144, ; hash 0xb94eede96cbb1cd0, from name: libaot-Xamarin.AndroidX.Activity
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.204_name, ; name: libaot-Xamarin.AndroidX.Activity.dll.so
		ptr null; void* handle (0x0)
	}, ; 1205
	%struct.DSOCacheEntry {
		i64 13370592475155966277, ; hash 0xb98de304062ea945, from name: System.Runtime.Serialization
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.125_name, ; name: libaot-System.Runtime.Serialization.dll.so
		ptr null; void* handle (0x0)
	}, ; 1206
	%struct.DSOCacheEntry {
		i64 13384594276806126840, ; hash 0xb9bfa19483c16cf8, from name: aot-Xamarin.AndroidX.ViewPager.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.267_name, ; name: libaot-Xamarin.AndroidX.ViewPager.dll.so
		ptr null; void* handle (0x0)
	}, ; 1207
	%struct.DSOCacheEntry {
		i64 13397226317997147350, ; hash 0xb9ec825acbbc04d6, from name: libaot-Xamarin.AndroidX.Legacy.Support.Core.Utils
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.235_name, ; name: libaot-Xamarin.AndroidX.Legacy.Support.Core.Utils.dll.so
		ptr null; void* handle (0x0)
	}, ; 1208
	%struct.DSOCacheEntry {
		i64 13404347523447273790, ; hash 0xba05cf0da4f6393e, from name: Xamarin.AndroidX.ConstraintLayout.Core
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.219_name, ; name: libaot-Xamarin.AndroidX.ConstraintLayout.Core.dll.so
		ptr null; void* handle (0x0)
	}, ; 1209
	%struct.DSOCacheEntry {
		i64 13431476299110033919, ; hash 0xba663087f18829ff, from name: System.Net.WebClient
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.86_name, ; name: libaot-System.Net.WebClient.dll.so
		ptr null; void* handle (0x0)
	}, ; 1210
	%struct.DSOCacheEntry {
		i64 13454009404024712428, ; hash 0xbab63e4543a86cec, from name: Xamarin.Google.Guava.ListenableFuture
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.275_name, ; name: libaot-Xamarin.Google.Guava.ListenableFuture.dll.so
		ptr null; void* handle (0x0)
	}, ; 1211
	%struct.DSOCacheEntry {
		i64 13457441275277163652, ; hash 0xbac26f8a0e933c84, from name: Xamarin.Android.Glide.DiskLruCache.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.202_name, ; name: libaot-Xamarin.Android.Glide.DiskLruCache.dll.so
		ptr null; void* handle (0x0)
	}, ; 1212
	%struct.DSOCacheEntry {
		i64 13465488254036897740, ; hash 0xbadf06394d106fcc, from name: Xamarin.Kotlin.StdLib
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.277_name, ; name: libaot-Xamarin.Kotlin.StdLib.dll.so
		ptr null; void* handle (0x0)
	}, ; 1213
	%struct.DSOCacheEntry {
		i64 13483581387200759472, ; hash 0xbb1f4dd5242b86b0, from name: aot-Microsoft.Maui.Controls.Xaml
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.195_name, ; name: libaot-Microsoft.Maui.Controls.Xaml.dll.so
		ptr null; void* handle (0x0)
	}, ; 1214
	%struct.DSOCacheEntry {
		i64 13488491921086969402, ; hash 0xbb30bfefe81d763a, from name: aot-System.ComponentModel
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.28_name, ; name: libaot-System.ComponentModel.dll.so
		ptr null; void* handle (0x0)
	}, ; 1215
	%struct.DSOCacheEntry {
		i64 13500868654470900104, ; hash 0xbb5cb882b4f1a988, from name: aot-Jsr305Binding
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.272_name, ; name: libaot-Jsr305Binding.dll.so
		ptr null; void* handle (0x0)
	}, ; 1216
	%struct.DSOCacheEntry {
		i64 13531998715682173727, ; hash 0xbbcb5122e547331f, from name: libaot-Xamarin.Google.ErrorProne.Annotations.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.274_name, ; name: libaot-Xamarin.Google.ErrorProne.Annotations.dll.so
		ptr null; void* handle (0x0)
	}, ; 1217
	%struct.DSOCacheEntry {
		i64 13542878105395129208, ; hash 0xbbf1f7e2347deb78, from name: libaot-System.Security.Cryptography.OpenSsl.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.133_name, ; name: libaot-System.Security.Cryptography.OpenSsl.dll.so
		ptr null; void* handle (0x0)
	}, ; 1218
	%struct.DSOCacheEntry {
		i64 13543484874654180244, ; hash 0xbbf41fbcaea36394, from name: aot-System.Xml.XPath.XDocument.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.169_name, ; name: libaot-System.Xml.XPath.XDocument.dll.so
		ptr null; void* handle (0x0)
	}, ; 1219
	%struct.DSOCacheEntry {
		i64 13546874730744599821, ; hash 0xbc002acb0ebf550d, from name: System.Threading.Thread.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.155_name, ; name: libaot-System.Threading.Thread.dll.so
		ptr null; void* handle (0x0)
	}, ; 1220
	%struct.DSOCacheEntry {
		i64 13578472628727169633, ; hash 0xbc706ce9fba5c261, from name: System.Xml.XPath
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.170_name, ; name: libaot-System.Xml.XPath.dll.so
		ptr null; void* handle (0x0)
	}, ; 1221
	%struct.DSOCacheEntry {
		i64 13578724849647908067, ; hash 0xbc71524ebe0874e3, from name: System.Dynamic.Runtime.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.47_name, ; name: libaot-System.Dynamic.Runtime.dll.so
		ptr null; void* handle (0x0)
	}, ; 1222
	%struct.DSOCacheEntry {
		i64 13589927487757454067, ; hash 0xbc991f0c2f198af3, from name: libaot-Xamarin.AndroidX.DrawerLayout.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.227_name, ; name: libaot-Xamarin.AndroidX.DrawerLayout.dll.so
		ptr null; void* handle (0x0)
	}, ; 1223
	%struct.DSOCacheEntry {
		i64 13590097962178175816, ; hash 0xbc99ba17da63e348, from name: Xamarin.AndroidX.Activity.Ktx.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.205_name, ; name: libaot-Xamarin.AndroidX.Activity.Ktx.dll.so
		ptr null; void* handle (0x0)
	}, ; 1224
	%struct.DSOCacheEntry {
		i64 13595227417690135694, ; hash 0xbcabf34e48125c8e, from name: System.IO.IsolatedStorage.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.62_name, ; name: libaot-System.IO.IsolatedStorage.dll.so
		ptr null; void* handle (0x0)
	}, ; 1225
	%struct.DSOCacheEntry {
		i64 13603500654432575449, ; hash 0xbcc957c5513f5fd9, from name: System.Collections.Immutable.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.19_name, ; name: libaot-System.Collections.Immutable.dll.so
		ptr null; void* handle (0x0)
	}, ; 1226
	%struct.DSOCacheEntry {
		i64 13620440420819333808, ; hash 0xbd058666074ef2b0, from name: aot-System.AppContext.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.16_name, ; name: libaot-System.AppContext.dll.so
		ptr null; void* handle (0x0)
	}, ; 1227
	%struct.DSOCacheEntry {
		i64 13632781750176942277, ; hash 0xbd315ec5afb988c5, from name: aot-System.Diagnostics.TextWriterTraceListener.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.41_name, ; name: libaot-System.Diagnostics.TextWriterTraceListener.dll.so
		ptr null; void* handle (0x0)
	}, ; 1228
	%struct.DSOCacheEntry {
		i64 13675589307506966157, ; hash 0xbdc97404d0153e8d, from name: Xamarin.AndroidX.Activity.Ktx
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.205_name, ; name: libaot-Xamarin.AndroidX.Activity.Ktx.dll.so
		ptr null; void* handle (0x0)
	}, ; 1229
	%struct.DSOCacheEntry {
		i64 13699603031714047885, ; hash 0xbe1ec45fad2e278d, from name: libaot-Xamarin.AndroidX.Loader
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.246_name, ; name: libaot-Xamarin.AndroidX.Loader.dll.so
		ptr null; void* handle (0x0)
	}, ; 1230
	%struct.DSOCacheEntry {
		i64 13699925495805398313, ; hash 0xbe1fe9a732cc4d29, from name: aot-Xamarin.Kotlin.StdLib.Common.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.278_name, ; name: libaot-Xamarin.Kotlin.StdLib.Common.dll.so
		ptr null; void* handle (0x0)
	}, ; 1231
	%struct.DSOCacheEntry {
		i64 13713329104121190199, ; hash 0xbe4f8829f32b5737, from name: System.Dynamic.Runtime
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.47_name, ; name: libaot-System.Dynamic.Runtime.dll.so
		ptr null; void* handle (0x0)
	}, ; 1232
	%struct.DSOCacheEntry {
		i64 13717233136797750441, ; hash 0xbe5d66dc640c14a9, from name: aot-System.Text.Json
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.147_name, ; name: libaot-System.Text.Json.dll.so
		ptr null; void* handle (0x0)
	}, ; 1233
	%struct.DSOCacheEntry {
		i64 13739044888507636575, ; hash 0xbeaae48894a4db5f, from name: libaot-Newtonsoft.Json.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.199_name, ; name: libaot-Newtonsoft.Json.dll.so
		ptr null; void* handle (0x0)
	}, ; 1234
	%struct.DSOCacheEntry {
		i64 13757055220050775219, ; hash 0xbeeae0d5aa8f4cb3, from name: libaot-Microsoft.Maui.Controls
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.194_name, ; name: libaot-Microsoft.Maui.Controls.dll.so
		ptr null; void* handle (0x0)
	}, ; 1235
	%struct.DSOCacheEntry {
		i64 13761955127882175294, ; hash 0xbefc49465c48533e, from name: System.Reflection.Emit.ILGeneration.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.100_name, ; name: libaot-System.Reflection.Emit.ILGeneration.dll.so
		ptr null; void* handle (0x0)
	}, ; 1236
	%struct.DSOCacheEntry {
		i64 13768113933372556022, ; hash 0xbf122aad01c702f6, from name: libaot-System.Security.Cryptography
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.136_name, ; name: libaot-System.Security.Cryptography.dll.so
		ptr null; void* handle (0x0)
	}, ; 1237
	%struct.DSOCacheEntry {
		i64 13768883594457632599, ; hash 0xbf14e6adb159cf57, from name: System.IO.IsolatedStorage
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.62_name, ; name: libaot-System.IO.IsolatedStorage.dll.so
		ptr null; void* handle (0x0)
	}, ; 1238
	%struct.DSOCacheEntry {
		i64 13771377631253161580, ; hash 0xbf1dc2fde29ae66c, from name: aot-System.Security.Principal.Windows
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.137_name, ; name: libaot-System.Security.Principal.Windows.dll.so
		ptr null; void* handle (0x0)
	}, ; 1239
	%struct.DSOCacheEntry {
		i64 13775816612427878951, ; hash 0xbf2d8838bab05227, from name: aot-System.Security.Cryptography.OpenSsl
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.133_name, ; name: libaot-System.Security.Cryptography.OpenSsl.dll.so
		ptr null; void* handle (0x0)
	}, ; 1240
	%struct.DSOCacheEntry {
		i64 13780240838949801592, ; hash 0xbf3d40083cef0e78, from name: System.Text.Encoding.Extensions.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.144_name, ; name: libaot-System.Text.Encoding.Extensions.dll.so
		ptr null; void* handle (0x0)
	}, ; 1241
	%struct.DSOCacheEntry {
		i64 13784476538474629663, ; hash 0xbf4c4c60e27c8a1f, from name: aot-mscorlib.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.176_name, ; name: libaot-mscorlib.dll.so
		ptr null; void* handle (0x0)
	}, ; 1242
	%struct.DSOCacheEntry {
		i64 13786269793005612187, ; hash 0xbf52ab557dcc2c9b, from name: libaot-Xamarin.AndroidX.AppCompat.AppCompatResources.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.210_name, ; name: libaot-Xamarin.AndroidX.AppCompat.AppCompatResources.dll.so
		ptr null; void* handle (0x0)
	}, ; 1243
	%struct.DSOCacheEntry {
		i64 13807487031629930123, ; hash 0xbf9e0c4cd11d5e8b, from name: libaot-Xamarin.AndroidX.Fragment
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.232_name, ; name: libaot-Xamarin.AndroidX.Fragment.dll.so
		ptr null; void* handle (0x0)
	}, ; 1244
	%struct.DSOCacheEntry {
		i64 13811307204318024253, ; hash 0xbfab9eba152b523d, from name: System.Data.DataSetExtensions.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.33_name, ; name: libaot-System.Data.DataSetExtensions.dll.so
		ptr null; void* handle (0x0)
	}, ; 1245
	%struct.DSOCacheEntry {
		i64 13828521679616088467, ; hash 0xbfe8c733724e1993, from name: Xamarin.Kotlin.StdLib.Common
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.278_name, ; name: libaot-Xamarin.Kotlin.StdLib.Common.dll.so
		ptr null; void* handle (0x0)
	}, ; 1246
	%struct.DSOCacheEntry {
		i64 13842731643823728203, ; hash 0xc01b43168f2c264b, from name: libaot-System.Xml.Linq.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.165_name, ; name: libaot-System.Xml.Linq.dll.so
		ptr null; void* handle (0x0)
	}, ; 1247
	%struct.DSOCacheEntry {
		i64 13858048614769238501, ; hash 0xc051adcac36a21e5, from name: System.Security.Cryptography.OpenSsl.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.133_name, ; name: libaot-System.Security.Cryptography.OpenSsl.dll.so
		ptr null; void* handle (0x0)
	}, ; 1248
	%struct.DSOCacheEntry {
		i64 13876721762243165199, ; hash 0xc09404ebb56fbc0f, from name: System.Diagnostics.Tools.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.42_name, ; name: libaot-System.Diagnostics.Tools.dll.so
		ptr null; void* handle (0x0)
	}, ; 1249
	%struct.DSOCacheEntry {
		i64 13885975078585796489, ; hash 0xc0b4e4c34f088789, from name: libaot-System.Threading.ThreadPool.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.156_name, ; name: libaot-System.Threading.ThreadPool.dll.so
		ptr null; void* handle (0x0)
	}, ; 1250
	%struct.DSOCacheEntry {
		i64 13888993854737701709, ; hash 0xc0bf9e52e7395b4d, from name: System.Formats.Asn1.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.48_name, ; name: libaot-System.Formats.Asn1.dll.so
		ptr null; void* handle (0x0)
	}, ; 1251
	%struct.DSOCacheEntry {
		i64 13889534505300156347, ; hash 0xc0c18a0aebf25fbb, from name: Microsoft.VisualBasic.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.13_name, ; name: libaot-Microsoft.VisualBasic.dll.so
		ptr null; void* handle (0x0)
	}, ; 1252
	%struct.DSOCacheEntry {
		i64 13900452450741477987, ; hash 0xc0e853db2fa76263, from name: Xamarin.AndroidX.ViewPager.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.267_name, ; name: libaot-Xamarin.AndroidX.ViewPager.dll.so
		ptr null; void* handle (0x0)
	}, ; 1253
	%struct.DSOCacheEntry {
		i64 13904753614831582715, ; hash 0xc0f79bbdfd5d7dfb, from name: libaot-Xamarin.AndroidX.Lifecycle.ViewModel
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.243_name, ; name: libaot-Xamarin.AndroidX.Lifecycle.ViewModel.dll.so
		ptr null; void* handle (0x0)
	}, ; 1254
	%struct.DSOCacheEntry {
		i64 13917396180688427187, ; hash 0xc1248616bc4fd8b3, from name: Microsoft.Extensions.Logging.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.188_name, ; name: libaot-Microsoft.Extensions.Logging.dll.so
		ptr null; void* handle (0x0)
	}, ; 1255
	%struct.DSOCacheEntry {
		i64 13918643515869505000, ; hash 0xc128f48896b225e8, from name: aot-Xamarin.AndroidX.CustomView.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.224_name, ; name: libaot-Xamarin.AndroidX.CustomView.dll.so
		ptr null; void* handle (0x0)
	}, ; 1256
	%struct.DSOCacheEntry {
		i64 13921153932123395153, ; hash 0xc131dfbe6bbf5451, from name: libaot-Xamarin.AndroidX.Annotation
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.206_name, ; name: libaot-Xamarin.AndroidX.Annotation.dll.so
		ptr null; void* handle (0x0)
	}, ; 1257
	%struct.DSOCacheEntry {
		i64 13924670109541730754, ; hash 0xc13e5db045bc09c2, from name: aot-System.Formats.Tar.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.49_name, ; name: libaot-System.Formats.Tar.dll.so
		ptr null; void* handle (0x0)
	}, ; 1258
	%struct.DSOCacheEntry {
		i64 13927427627500361954, ; hash 0xc14829a2f41ed8e2, from name: aot-System.Private.Uri.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.96_name, ; name: libaot-System.Private.Uri.dll.so
		ptr null; void* handle (0x0)
	}, ; 1259
	%struct.DSOCacheEntry {
		i64 13934622921725558032, ; hash 0xc161b9b7f077bd10, from name: aot-Xamarin.AndroidX.RecyclerView
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.254_name, ; name: libaot-Xamarin.AndroidX.RecyclerView.dll.so
		ptr null; void* handle (0x0)
	}, ; 1260
	%struct.DSOCacheEntry {
		i64 13959074834287824816, ; hash 0xc1b8989a7ad20fb0, from name: Xamarin.AndroidX.Fragment
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.232_name, ; name: libaot-Xamarin.AndroidX.Fragment.dll.so
		ptr null; void* handle (0x0)
	}, ; 1261
	%struct.DSOCacheEntry {
		i64 13963056008128377571, ; hash 0xc1c6bd75bf6032e3, from name: aot-Xamarin.Google.Guava.ListenableFuture
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.275_name, ; name: libaot-Xamarin.Google.Guava.ListenableFuture.dll.so
		ptr null; void* handle (0x0)
	}, ; 1262
	%struct.DSOCacheEntry {
		i64 13963744846780922848, ; hash 0xc1c92ff47e917be0, from name: libaot-System.Buffers.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.17_name, ; name: libaot-System.Buffers.dll.so
		ptr null; void* handle (0x0)
	}, ; 1263
	%struct.DSOCacheEntry {
		i64 13972136905349029688, ; hash 0xc1e7007ce4745f38, from name: libaot-System.Net.Sockets.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.85_name, ; name: libaot-System.Net.Sockets.dll.so
		ptr null; void* handle (0x0)
	}, ; 1264
	%struct.DSOCacheEntry {
		i64 13982871072136865432, ; hash 0xc20d2327dacda698, from name: System.IO.UnmanagedMemoryStream.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.66_name, ; name: libaot-System.IO.UnmanagedMemoryStream.dll.so
		ptr null; void* handle (0x0)
	}, ; 1265
	%struct.DSOCacheEntry {
		i64 13988737722900018756, ; hash 0xc221fad7ed8ff644, from name: aot-System.ComponentModel.EventBasedAsync
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.25_name, ; name: libaot-System.ComponentModel.EventBasedAsync.dll.so
		ptr null; void* handle (0x0)
	}, ; 1266
	%struct.DSOCacheEntry {
		i64 14024723203617446143, ; hash 0xc2a1d37290cbd8ff, from name: libaot-System.ComponentModel.TypeConverter
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.27_name, ; name: libaot-System.ComponentModel.TypeConverter.dll.so
		ptr null; void* handle (0x0)
	}, ; 1267
	%struct.DSOCacheEntry {
		i64 14037761671920318323, ; hash 0xc2d025dd88677773, from name: aot-System.Threading
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.158_name, ; name: libaot-System.Threading.dll.so
		ptr null; void* handle (0x0)
	}, ; 1268
	%struct.DSOCacheEntry {
		i64 14044858527140495619, ; hash 0xc2e95c6ae6d34103, from name: aot-System.Runtime.Loader
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.119_name, ; name: libaot-System.Runtime.Loader.dll.so
		ptr null; void* handle (0x0)
	}, ; 1269
	%struct.DSOCacheEntry {
		i64 14045780012010563026, ; hash 0xc2eca280d12be5d2, from name: Xamarin.AndroidX.Emoji2.ViewsHelper.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.230_name, ; name: libaot-Xamarin.AndroidX.Emoji2.ViewsHelper.dll.so
		ptr null; void* handle (0x0)
	}, ; 1270
	%struct.DSOCacheEntry {
		i64 14058709349301150578, ; hash 0xc31a91aabd8ee372, from name: System.IO.Compression.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.56_name, ; name: libaot-System.IO.Compression.dll.so
		ptr null; void* handle (0x0)
	}, ; 1271
	%struct.DSOCacheEntry {
		i64 14059049780117520506, ; hash 0xc31bc7497770407a, from name: aot-System.Security.Cryptography.X509Certificates.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.135_name, ; name: libaot-System.Security.Cryptography.X509Certificates.dll.so
		ptr null; void* handle (0x0)
	}, ; 1272
	%struct.DSOCacheEntry {
		i64 14064151877224080280, ; hash 0xc32de79e0515a398, from name: aot-System.Formats.Asn1.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.48_name, ; name: libaot-System.Formats.Asn1.dll.so
		ptr null; void* handle (0x0)
	}, ; 1273
	%struct.DSOCacheEntry {
		i64 14070677912659721959, ; hash 0xc34517030d047ee7, from name: libaot-System.Diagnostics.Tracing
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.44_name, ; name: libaot-System.Diagnostics.Tracing.dll.so
		ptr null; void* handle (0x0)
	}, ; 1274
	%struct.DSOCacheEntry {
		i64 14081432890394991643, ; hash 0xc36b4c9b707edc1b, from name: libaot-Xamarin.Android.Glide.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.200_name, ; name: libaot-Xamarin.Android.Glide.dll.so
		ptr null; void* handle (0x0)
	}, ; 1275
	%struct.DSOCacheEntry {
		i64 14085224268007237774, ; hash 0xc378c4d85448688e, from name: aot-System.ComponentModel.Annotations
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.23_name, ; name: libaot-System.ComponentModel.Annotations.dll.so
		ptr null; void* handle (0x0)
	}, ; 1276
	%struct.DSOCacheEntry {
		i64 14124974489674258913, ; hash 0xc405fd76067d19e1, from name: Xamarin.AndroidX.CardView
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.214_name, ; name: libaot-Xamarin.AndroidX.CardView.dll.so
		ptr null; void* handle (0x0)
	}, ; 1277
	%struct.DSOCacheEntry {
		i64 14126261443848111969, ; hash 0xc40a8ff064dd0761, from name: System.Text.Encoding.CodePages.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.143_name, ; name: libaot-System.Text.Encoding.CodePages.dll.so
		ptr null; void* handle (0x0)
	}, ; 1278
	%struct.DSOCacheEntry {
		i64 14135789968212363092, ; hash 0xc42c6a14dad40754, from name: aot-Microsoft.VisualBasic
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.13_name, ; name: libaot-Microsoft.VisualBasic.dll.so
		ptr null; void* handle (0x0)
	}, ; 1279
	%struct.DSOCacheEntry {
		i64 14137679297576702812, ; hash 0xc433206aa074135c, from name: aot-System.Core.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.31_name, ; name: libaot-System.Core.dll.so
		ptr null; void* handle (0x0)
	}, ; 1280
	%struct.DSOCacheEntry {
		i64 14143988164198918098, ; hash 0xc4498a4c1a67e7d2, from name: System.Threading.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.158_name, ; name: libaot-System.Threading.dll.so
		ptr null; void* handle (0x0)
	}, ; 1281
	%struct.DSOCacheEntry {
		i64 14146209618615491199, ; hash 0xc4516eb2c3ca5a7f, from name: aot-Xamarin.Android.Glide.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.200_name, ; name: libaot-Xamarin.Android.Glide.dll.so
		ptr null; void* handle (0x0)
	}, ; 1282
	%struct.DSOCacheEntry {
		i64 14152660198772281192, ; hash 0xc46859777ea18f68, from name: libaot-System.Collections.Concurrent.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.18_name, ; name: libaot-System.Collections.Concurrent.dll.so
		ptr null; void* handle (0x0)
	}, ; 1283
	%struct.DSOCacheEntry {
		i64 14153042623189675447, ; hash 0xc469b5479e2eedb7, from name: libaot-Xamarin.AndroidX.DocumentFile
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.226_name, ; name: libaot-Xamarin.AndroidX.DocumentFile.dll.so
		ptr null; void* handle (0x0)
	}, ; 1284
	%struct.DSOCacheEntry {
		i64 14159110086036678642, ; hash 0xc47f439ae5dde7f2, from name: aot-System.Text.Encoding.Extensions.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.144_name, ; name: libaot-System.Text.Encoding.Extensions.dll.so
		ptr null; void* handle (0x0)
	}, ; 1285
	%struct.DSOCacheEntry {
		i64 14168095981489225142, ; hash 0xc49f303ab84dfdb6, from name: libaot-System.Net.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.91_name, ; name: libaot-System.Net.dll.so
		ptr null; void* handle (0x0)
	}, ; 1286
	%struct.DSOCacheEntry {
		i64 14172950589542241164, ; hash 0xc4b06f783cd4138c, from name: System.ComponentModel.DataAnnotations.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.24_name, ; name: libaot-System.ComponentModel.DataAnnotations.dll.so
		ptr null; void* handle (0x0)
	}, ; 1287
	%struct.DSOCacheEntry {
		i64 14174671189317472550, ; hash 0xc4b68c58973b5126, from name: libaot-System.Text.RegularExpressions.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.148_name, ; name: libaot-System.Text.RegularExpressions.dll.so
		ptr null; void* handle (0x0)
	}, ; 1288
	%struct.DSOCacheEntry {
		i64 14182888721008485466, ; hash 0xc4d3be25c89ae45a, from name: aot-System.Console
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.30_name, ; name: libaot-System.Console.dll.so
		ptr null; void* handle (0x0)
	}, ; 1289
	%struct.DSOCacheEntry {
		i64 14208955863919878019, ; hash 0xc5305a137225df83, from name: aot-System.Runtime.Serialization.Xml
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.124_name, ; name: libaot-System.Runtime.Serialization.Xml.dll.so
		ptr null; void* handle (0x0)
	}, ; 1290
	%struct.DSOCacheEntry {
		i64 14226382999226559092, ; hash 0xc56e43f6938e2a74, from name: System.ServiceProcess
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.142_name, ; name: libaot-System.ServiceProcess.dll.so
		ptr null; void* handle (0x0)
	}, ; 1291
	%struct.DSOCacheEntry {
		i64 14230396410514008665, ; hash 0xc57c8623b5ae6a59, from name: aot-System.Collections
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.22_name, ; name: libaot-System.Collections.dll.so
		ptr null; void* handle (0x0)
	}, ; 1292
	%struct.DSOCacheEntry {
		i64 14244268896140588737, ; hash 0xc5adcf17779af6c1, from name: aot-System.Net.WebClient.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.86_name, ; name: libaot-System.Net.WebClient.dll.so
		ptr null; void* handle (0x0)
	}, ; 1293
	%struct.DSOCacheEntry {
		i64 14261073672896646636, ; hash 0xc5e982f274ae0dec, from name: Xamarin.AndroidX.Print
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.252_name, ; name: libaot-Xamarin.AndroidX.Print.dll.so
		ptr null; void* handle (0x0)
	}, ; 1294
	%struct.DSOCacheEntry {
		i64 14286901546587342478, ; hash 0xc6454542e951468e, from name: aot-Xamarin.AndroidX.Lifecycle.Process
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.240_name, ; name: libaot-Xamarin.AndroidX.Lifecycle.Process.dll.so
		ptr null; void* handle (0x0)
	}, ; 1295
	%struct.DSOCacheEntry {
		i64 14317997431913345095, ; hash 0xc6b3becde8267047, from name: aot-System.Collections.Specialized.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.21_name, ; name: libaot-System.Collections.Specialized.dll.so
		ptr null; void* handle (0x0)
	}, ; 1296
	%struct.DSOCacheEntry {
		i64 14319327830875434373, ; hash 0xc6b878cb8db1ed85, from name: System.Text.Json.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.147_name, ; name: libaot-System.Text.Json.dll.so
		ptr null; void* handle (0x0)
	}, ; 1297
	%struct.DSOCacheEntry {
		i64 14327709162229390963, ; hash 0xc6d63f9253cade73, from name: System.Security.Cryptography.X509Certificates
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.135_name, ; name: libaot-System.Security.Cryptography.X509Certificates.dll.so
		ptr null; void* handle (0x0)
	}, ; 1298
	%struct.DSOCacheEntry {
		i64 14327730595565898139, ; hash 0xc6d65310aa33899b, from name: aot-System.Net.WebProxy.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.88_name, ; name: libaot-System.Net.WebProxy.dll.so
		ptr null; void* handle (0x0)
	}, ; 1299
	%struct.DSOCacheEntry {
		i64 14339080265730885305, ; hash 0xc6fea587acb406b9, from name: libaot-System.Diagnostics.Debug
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.36_name, ; name: libaot-System.Diagnostics.Debug.dll.so
		ptr null; void* handle (0x0)
	}, ; 1300
	%struct.DSOCacheEntry {
		i64 14340868866807757429, ; hash 0xc7050040d088fa75, from name: aot-Xamarin.AndroidX.Annotation.Experimental
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.207_name, ; name: libaot-Xamarin.AndroidX.Annotation.Experimental.dll.so
		ptr null; void* handle (0x0)
	}, ; 1301
	%struct.DSOCacheEntry {
		i64 14343351667264400691, ; hash 0xc70dd258d7cd2d33, from name: libaot-Xamarin.AndroidX.Lifecycle.Common.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.236_name, ; name: libaot-Xamarin.AndroidX.Lifecycle.Common.dll.so
		ptr null; void* handle (0x0)
	}, ; 1302
	%struct.DSOCacheEntry {
		i64 14343849879592858025, ; hash 0xc70f9777f0a971a9, from name: System.Xml.Linq.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.165_name, ; name: libaot-System.Xml.Linq.dll.so
		ptr null; void* handle (0x0)
	}, ; 1303
	%struct.DSOCacheEntry {
		i64 14351510784141839845, ; hash 0xc72acf0546f64de5, from name: aot-Java.Interop
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.178_name, ; name: libaot-Java.Interop.dll.so
		ptr null; void* handle (0x0)
	}, ; 1304
	%struct.DSOCacheEntry {
		i64 14357435489182144315, ; hash 0xc73fdb822a49d73b, from name: aot-System.IO.Compression.ZipFile
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.55_name, ; name: libaot-System.IO.Compression.ZipFile.dll.so
		ptr null; void* handle (0x0)
	}, ; 1305
	%struct.DSOCacheEntry {
		i64 14360875924539294536, ; hash 0xc74c1490f19fc348, from name: Xamarin.AndroidX.Lifecycle.Common.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.236_name, ; name: libaot-Xamarin.AndroidX.Lifecycle.Common.dll.so
		ptr null; void* handle (0x0)
	}, ; 1306
	%struct.DSOCacheEntry {
		i64 14414435752324237589, ; hash 0xc80a5cf21efa0915, from name: Xamarin.Android.Glide.GifDecoder.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.203_name, ; name: libaot-Xamarin.Android.Glide.GifDecoder.dll.so
		ptr null; void* handle (0x0)
	}, ; 1307
	%struct.DSOCacheEntry {
		i64 14422493441156788021, ; hash 0xc826fd5eff8d2f35, from name: Xamarin.AndroidX.SavedState.SavedState.Ktx.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.257_name, ; name: libaot-Xamarin.AndroidX.SavedState.SavedState.Ktx.dll.so
		ptr null; void* handle (0x0)
	}, ; 1308
	%struct.DSOCacheEntry {
		i64 14424844866220670826, ; hash 0xc82f57facf333f6a, from name: monosgen-2.0.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.6_name, ; name: libmonosgen-2.0.so
		ptr null; void* handle (0x0)
	}, ; 1309
	%struct.DSOCacheEntry {
		i64 14429843176364016121, ; hash 0xc84119ea93c581f9, from name: libaot-System.Runtime.CompilerServices.Unsafe
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.111_name, ; name: libaot-System.Runtime.CompilerServices.Unsafe.dll.so
		ptr null; void* handle (0x0)
	}, ; 1310
	%struct.DSOCacheEntry {
		i64 14462803528705013993, ; hash 0xc8b6332ea0ba78e9, from name: aot-System.Threading.Tasks.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.154_name, ; name: libaot-System.Threading.Tasks.dll.so
		ptr null; void* handle (0x0)
	}, ; 1311
	%struct.DSOCacheEntry {
		i64 14486659737292545672, ; hash 0xc90af44707469e88, from name: Xamarin.AndroidX.Lifecycle.LiveData
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.237_name, ; name: libaot-Xamarin.AndroidX.Lifecycle.LiveData.dll.so
		ptr null; void* handle (0x0)
	}, ; 1312
	%struct.DSOCacheEntry {
		i64 14495724990987328804, ; hash 0xc92b2913e18d5d24, from name: Xamarin.AndroidX.ResourceInspection.Annotation
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.255_name, ; name: libaot-Xamarin.AndroidX.ResourceInspection.Annotation.dll.so
		ptr null; void* handle (0x0)
	}, ; 1313
	%struct.DSOCacheEntry {
		i64 14506413742245427842, ; hash 0xc9512270b7623a82, from name: Xamarin.AndroidX.Concurrent.Futures.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.217_name, ; name: libaot-Xamarin.AndroidX.Concurrent.Futures.dll.so
		ptr null; void* handle (0x0)
	}, ; 1314
	%struct.DSOCacheEntry {
		i64 14519854289845512951, ; hash 0xc980e28c10ac6af7, from name: Xamarin.AndroidX.Emoji2.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.229_name, ; name: libaot-Xamarin.AndroidX.Emoji2.dll.so
		ptr null; void* handle (0x0)
	}, ; 1315
	%struct.DSOCacheEntry {
		i64 14531858928011108053, ; hash 0xc9ab88b3b230ded5, from name: aot-System.Dynamic.Runtime
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.47_name, ; name: libaot-System.Dynamic.Runtime.dll.so
		ptr null; void* handle (0x0)
	}, ; 1316
	%struct.DSOCacheEntry {
		i64 14547304744410597547, ; hash 0xc9e2689711f2c8ab, from name: libaot-Xamarin.AndroidX.Lifecycle.ViewModel.Ktx.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.244_name, ; name: libaot-Xamarin.AndroidX.Lifecycle.ViewModel.Ktx.dll.so
		ptr null; void* handle (0x0)
	}, ; 1317
	%struct.DSOCacheEntry {
		i64 14562678984415238708, ; hash 0xca190761441dda34, from name: aot-Xamarin.AndroidX.SwipeRefreshLayout
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.261_name, ; name: libaot-Xamarin.AndroidX.SwipeRefreshLayout.dll.so
		ptr null; void* handle (0x0)
	}, ; 1318
	%struct.DSOCacheEntry {
		i64 14567291835347755386, ; hash 0xca296abe5159e17a, from name: aot-System.IO.Compression.ZipFile.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.55_name, ; name: libaot-System.IO.Compression.ZipFile.dll.so
		ptr null; void* handle (0x0)
	}, ; 1319
	%struct.DSOCacheEntry {
		i64 14574160591280636898, ; hash 0xca41d1d72ec783e2, from name: System.Net.Quic
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.81_name, ; name: libaot-System.Net.Quic.dll.so
		ptr null; void* handle (0x0)
	}, ; 1320
	%struct.DSOCacheEntry {
		i64 14588929277170587884, ; hash 0xca7649e1d30c98ec, from name: aot-System.Net.WebSockets.Client
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.89_name, ; name: libaot-System.Net.WebSockets.Client.dll.so
		ptr null; void* handle (0x0)
	}, ; 1321
	%struct.DSOCacheEntry {
		i64 14604015534980822382, ; hash 0xcaabe2c0f0d1756e, from name: aot-System.Net.Http
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.74_name, ; name: libaot-System.Net.Http.dll.so
		ptr null; void* handle (0x0)
	}, ; 1322
	%struct.DSOCacheEntry {
		i64 14606933860027739344, ; hash 0xcab640f470942cd0, from name: libaot-Xamarin.AndroidX.Transition.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.263_name, ; name: libaot-Xamarin.AndroidX.Transition.dll.so
		ptr null; void* handle (0x0)
	}, ; 1323
	%struct.DSOCacheEntry {
		i64 14611435504614518872, ; hash 0xcac63f2d3f143058, from name: System.Net.NetworkInformation.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.78_name, ; name: libaot-System.Net.NetworkInformation.dll.so
		ptr null; void* handle (0x0)
	}, ; 1324
	%struct.DSOCacheEntry {
		i64 14622043554576106986, ; hash 0xcaebef2458cc85ea, from name: System.Runtime.Serialization.Formatters
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.121_name, ; name: libaot-System.Runtime.Serialization.Formatters.dll.so
		ptr null; void* handle (0x0)
	}, ; 1325
	%struct.DSOCacheEntry {
		i64 14638676721339700578, ; hash 0xcb2706eb453b9562, from name: System.IO.MemoryMappedFiles.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.63_name, ; name: libaot-System.IO.MemoryMappedFiles.dll.so
		ptr null; void* handle (0x0)
	}, ; 1326
	%struct.DSOCacheEntry {
		i64 14639600873480520919, ; hash 0xcb2a4f6e354e04d7, from name: aot-System.Threading.Timer.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.157_name, ; name: libaot-System.Threading.Timer.dll.so
		ptr null; void* handle (0x0)
	}, ; 1327
	%struct.DSOCacheEntry {
		i64 14675193927833541988, ; hash 0xcba8c31ff67cdd64, from name: libaot-Xamarin.AndroidX.ConstraintLayout.Core
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.219_name, ; name: libaot-Xamarin.AndroidX.ConstraintLayout.Core.dll.so
		ptr null; void* handle (0x0)
	}, ; 1328
	%struct.DSOCacheEntry {
		i64 14690985099581930927, ; hash 0xcbe0dd1ca5233daf, from name: System.Web.HttpUtility
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.162_name, ; name: libaot-System.Web.HttpUtility.dll.so
		ptr null; void* handle (0x0)
	}, ; 1329
	%struct.DSOCacheEntry {
		i64 14708724850922793423, ; hash 0xcc1fe3525e36a9cf, from name: aot-System.Xml.XmlDocument.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.171_name, ; name: libaot-System.Xml.XmlDocument.dll.so
		ptr null; void* handle (0x0)
	}, ; 1330
	%struct.DSOCacheEntry {
		i64 14713405421650509891, ; hash 0xcc308446a9c90043, from name: libaot-System.Collections.NonGeneric.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.20_name, ; name: libaot-System.Collections.NonGeneric.dll.so
		ptr null; void* handle (0x0)
	}, ; 1331
	%struct.DSOCacheEntry {
		i64 14724569239063348517, ; hash 0xcc582db57503c525, from name: aot-Xamarin.AndroidX.VectorDrawable.Animated
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.265_name, ; name: libaot-Xamarin.AndroidX.VectorDrawable.Animated.dll.so
		ptr null; void* handle (0x0)
	}, ; 1332
	%struct.DSOCacheEntry {
		i64 14726144688497773647, ; hash 0xcc5dc6925cea4c4f, from name: libaot-Xamarin.AndroidX.Loader.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.246_name, ; name: libaot-Xamarin.AndroidX.Loader.dll.so
		ptr null; void* handle (0x0)
	}, ; 1333
	%struct.DSOCacheEntry {
		i64 14748453274413063167, ; hash 0xccad081cc7d65bff, from name: aot-Xamarin.AndroidX.VectorDrawable.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.264_name, ; name: libaot-Xamarin.AndroidX.VectorDrawable.dll.so
		ptr null; void* handle (0x0)
	}, ; 1334
	%struct.DSOCacheEntry {
		i64 14749613074536373161, ; hash 0xccb126f1ca329ba9, from name: aot-Xamarin.AndroidX.Lifecycle.ViewModel.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.243_name, ; name: libaot-Xamarin.AndroidX.Lifecycle.ViewModel.dll.so
		ptr null; void* handle (0x0)
	}, ; 1335
	%struct.DSOCacheEntry {
		i64 14755978183439467193, ; hash 0xccc7c3fa3152c2b9, from name: aot-System.IO.IsolatedStorage
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.62_name, ; name: libaot-System.IO.IsolatedStorage.dll.so
		ptr null; void* handle (0x0)
	}, ; 1336
	%struct.DSOCacheEntry {
		i64 14761658010069183920, ; hash 0xccdbf1bfe1f92db0, from name: libaot-Xamarin.AndroidX.Lifecycle.ViewModel.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.243_name, ; name: libaot-Xamarin.AndroidX.Lifecycle.ViewModel.dll.so
		ptr null; void* handle (0x0)
	}, ; 1337
	%struct.DSOCacheEntry {
		i64 14783105725698854274, ; hash 0xcd2824555152cd82, from name: libaot-Microsoft.Maui.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.196_name, ; name: libaot-Microsoft.Maui.dll.so
		ptr null; void* handle (0x0)
	}, ; 1338
	%struct.DSOCacheEntry {
		i64 14784039497208491432, ; hash 0xcd2b7597f074eda8, from name: libaot-System.Runtime.CompilerServices.VisualC
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.112_name, ; name: libaot-System.Runtime.CompilerServices.VisualC.dll.so
		ptr null; void* handle (0x0)
	}, ; 1339
	%struct.DSOCacheEntry {
		i64 14791819750225326047, ; hash 0xcd4719b141c9afdf, from name: aot-Microsoft.Win32.Registry.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.15_name, ; name: libaot-Microsoft.Win32.Registry.dll.so
		ptr null; void* handle (0x0)
	}, ; 1340
	%struct.DSOCacheEntry {
		i64 14793308678264731746, ; hash 0xcd4c63dd54ac3862, from name: libaot-System.Collections.Immutable
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.19_name, ; name: libaot-System.Collections.Immutable.dll.so
		ptr null; void* handle (0x0)
	}, ; 1341
	%struct.DSOCacheEntry {
		i64 14797884060996115029, ; hash 0xcd5ca526a3169a55, from name: aot-System.Net.Requests
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.82_name, ; name: libaot-System.Net.Requests.dll.so
		ptr null; void* handle (0x0)
	}, ; 1342
	%struct.DSOCacheEntry {
		i64 14829156361939828963, ; hash 0xcdcbbf249825c0e3, from name: Jsr305Binding.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.272_name, ; name: libaot-Jsr305Binding.dll.so
		ptr null; void* handle (0x0)
	}, ; 1343
	%struct.DSOCacheEntry {
		i64 14832630590065248058, ; hash 0xcdd816ef5d6e873a, from name: System.Security.Claims
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.128_name, ; name: libaot-System.Security.Claims.dll.so
		ptr null; void* handle (0x0)
	}, ; 1344
	%struct.DSOCacheEntry {
		i64 14833034687618711860, ; hash 0xcdd98675a88f8134, from name: libaot-Mono.Android.Export.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.179_name, ; name: libaot-Mono.Android.Export.dll.so
		ptr null; void* handle (0x0)
	}, ; 1345
	%struct.DSOCacheEntry {
		i64 14848298015145851925, ; hash 0xce0fc06007e7fc15, from name: aot-Xamarin.AndroidX.Lifecycle.LiveData.Core.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.238_name, ; name: libaot-Xamarin.AndroidX.Lifecycle.LiveData.Core.dll.so
		ptr null; void* handle (0x0)
	}, ; 1346
	%struct.DSOCacheEntry {
		i64 14852025521463078876, ; hash 0xce1cfe85b9d7afdc, from name: aot-Xamarin.AndroidX.Loader.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.246_name, ; name: libaot-Xamarin.AndroidX.Loader.dll.so
		ptr null; void* handle (0x0)
	}, ; 1347
	%struct.DSOCacheEntry {
		i64 14861939854077530687, ; hash 0xce40378e2b83123f, from name: libaot-System.Xml.XmlSerializer
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.172_name, ; name: libaot-System.Xml.XmlSerializer.dll.so
		ptr null; void* handle (0x0)
	}, ; 1348
	%struct.DSOCacheEntry {
		i64 14868030760753516242, ; hash 0xce55db33e44b4ed2, from name: Xamarin.AndroidX.Security.SecurityCrypto.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.258_name, ; name: libaot-Xamarin.AndroidX.Security.SecurityCrypto.dll.so
		ptr null; void* handle (0x0)
	}, ; 1349
	%struct.DSOCacheEntry {
		i64 14869852093854666502, ; hash 0xce5c53b20cce4f06, from name: aot-Xamarin.AndroidX.Startup.StartupRuntime
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.260_name, ; name: libaot-Xamarin.AndroidX.Startup.StartupRuntime.dll.so
		ptr null; void* handle (0x0)
	}, ; 1350
	%struct.DSOCacheEntry {
		i64 14896568121329360884, ; hash 0xcebb3dc7ec3e9ff4, from name: libaot-Microsoft.Extensions.Logging.Debug.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.190_name, ; name: libaot-Microsoft.Extensions.Logging.Debug.dll.so
		ptr null; void* handle (0x0)
	}, ; 1351
	%struct.DSOCacheEntry {
		i64 14912225920358050525, ; hash 0xcef2de7759506add, from name: System.Security.Principal.Windows
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.137_name, ; name: libaot-System.Security.Principal.Windows.dll.so
		ptr null; void* handle (0x0)
	}, ; 1352
	%struct.DSOCacheEntry {
		i64 14929951904236909252, ; hash 0xcf31d82795b532c4, from name: aot-System.Numerics.Vectors
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.92_name, ; name: libaot-System.Numerics.Vectors.dll.so
		ptr null; void* handle (0x0)
	}, ; 1353
	%struct.DSOCacheEntry {
		i64 14937857240486681905, ; hash 0xcf4dee041cb49d31, from name: aot-Microsoft.Extensions.Configuration
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.184_name, ; name: libaot-Microsoft.Extensions.Configuration.dll.so
		ptr null; void* handle (0x0)
	}, ; 1354
	%struct.DSOCacheEntry {
		i64 14939551082710594120, ; hash 0xcf53f28e7cc47248, from name: mono-component-hot_reload
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.4_name, ; name: libmono-component-hot_reload.so
		ptr null; void* handle (0x0)
	}, ; 1355
	%struct.DSOCacheEntry {
		i64 14941060615656587977, ; hash 0xcf594f7803ca42c9, from name: libaot-System.Net.WebSockets
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.90_name, ; name: libaot-System.Net.WebSockets.dll.so
		ptr null; void* handle (0x0)
	}, ; 1356
	%struct.DSOCacheEntry {
		i64 14944457164796803836, ; hash 0xcf65609cbcc13afc, from name: libaot-System.IO.FileSystem.Primitives
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.59_name, ; name: libaot-System.IO.FileSystem.Primitives.dll.so
		ptr null; void* handle (0x0)
	}, ; 1357
	%struct.DSOCacheEntry {
		i64 14956178634283043352, ; hash 0xcf8f053a05ba4a18, from name: libaot-Microsoft.Extensions.Configuration.Abstractions.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.185_name, ; name: libaot-Microsoft.Extensions.Configuration.Abstractions.dll.so
		ptr null; void* handle (0x0)
	}, ; 1358
	%struct.DSOCacheEntry {
		i64 14984936317414011727, ; hash 0xcff5302fe54ff34f, from name: System.Net.WebHeaderCollection
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.87_name, ; name: libaot-System.Net.WebHeaderCollection.dll.so
		ptr null; void* handle (0x0)
	}, ; 1359
	%struct.DSOCacheEntry {
		i64 14986218813611173632, ; hash 0xcff9be9c4f91e700, from name: libaot-Xamarin.Google.Crypto.Tink.Android.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.273_name, ; name: libaot-Xamarin.Google.Crypto.Tink.Android.dll.so
		ptr null; void* handle (0x0)
	}, ; 1360
	%struct.DSOCacheEntry {
		i64 14988210264188246988, ; hash 0xd000d1d307cddbcc, from name: Xamarin.AndroidX.DocumentFile
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.226_name, ; name: libaot-Xamarin.AndroidX.DocumentFile.dll.so
		ptr null; void* handle (0x0)
	}, ; 1361
	%struct.DSOCacheEntry {
		i64 14991793843564863672, ; hash 0xd00d8d121f9260b8, from name: libaot-System.Security.Cryptography.Primitives
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.134_name, ; name: libaot-System.Security.Cryptography.Primitives.dll.so
		ptr null; void* handle (0x0)
	}, ; 1362
	%struct.DSOCacheEntry {
		i64 15024878362326791334, ; hash 0xd0831743ebf0f4a6, from name: System.Net.Http.Json
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.73_name, ; name: libaot-System.Net.Http.Json.dll.so
		ptr null; void* handle (0x0)
	}, ; 1363
	%struct.DSOCacheEntry {
		i64 15036185568982365226, ; hash 0xd0ab431c200c742a, from name: libaot-Xamarin.Google.Guava.ListenableFuture.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.275_name, ; name: libaot-Xamarin.Google.Guava.ListenableFuture.dll.so
		ptr null; void* handle (0x0)
	}, ; 1364
	%struct.DSOCacheEntry {
		i64 15036676938210766038, ; hash 0xd0ad0201f05c6cd6, from name: Xamarin.AndroidX.Navigation.Fragment.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.249_name, ; name: libaot-Xamarin.AndroidX.Navigation.Fragment.dll.so
		ptr null; void* handle (0x0)
	}, ; 1365
	%struct.DSOCacheEntry {
		i64 15050645847315261456, ; hash 0xd0dea2a8096f2810, from name: aot-System.Runtime.Handles
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.114_name, ; name: libaot-System.Runtime.Handles.dll.so
		ptr null; void* handle (0x0)
	}, ; 1366
	%struct.DSOCacheEntry {
		i64 15053928356398764554, ; hash 0xd0ea4c14bd54120a, from name: aot-Microsoft.CSharp
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.11_name, ; name: libaot-Microsoft.CSharp.dll.so
		ptr null; void* handle (0x0)
	}, ; 1367
	%struct.DSOCacheEntry {
		i64 15072845069191995765, ; hash 0xd12d80bb27afe175, from name: libaot-System.Configuration
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.29_name, ; name: libaot-System.Configuration.dll.so
		ptr null; void* handle (0x0)
	}, ; 1368
	%struct.DSOCacheEntry {
		i64 15074836884257005195, ; hash 0xd1349446bd185e8b, from name: libaot-System.Runtime.InteropServices.JavaScript
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.115_name, ; name: libaot-System.Runtime.InteropServices.JavaScript.dll.so
		ptr null; void* handle (0x0)
	}, ; 1369
	%struct.DSOCacheEntry {
		i64 15090838584360273560, ; hash 0xd16d6dbcdf8d8698, from name: aot-System.IO.Compression.FileSystem.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.54_name, ; name: libaot-System.IO.Compression.FileSystem.dll.so
		ptr null; void* handle (0x0)
	}, ; 1370
	%struct.DSOCacheEntry {
		i64 15104180077898997103, ; hash 0xd19cd3c166b39d6f, from name: libaot-System.Net.WebSockets.Client
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.89_name, ; name: libaot-System.Net.WebSockets.Client.dll.so
		ptr null; void* handle (0x0)
	}, ; 1371
	%struct.DSOCacheEntry {
		i64 15112147962820809439, ; hash 0xd1b922812d13d2df, from name: aot-System.Security.AccessControl
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.127_name, ; name: libaot-System.Security.AccessControl.dll.so
		ptr null; void* handle (0x0)
	}, ; 1372
	%struct.DSOCacheEntry {
		i64 15117797221388578338, ; hash 0xd1cd3479af40ee22, from name: libaot-Xamarin.AndroidX.VectorDrawable.Animated.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.265_name, ; name: libaot-Xamarin.AndroidX.VectorDrawable.Animated.dll.so
		ptr null; void* handle (0x0)
	}, ; 1373
	%struct.DSOCacheEntry {
		i64 15140106800612261962, ; hash 0xd21c76eb5ff8404a, from name: libaot-System.IO.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.67_name, ; name: libaot-System.IO.dll.so
		ptr null; void* handle (0x0)
	}, ; 1374
	%struct.DSOCacheEntry {
		i64 15142340276538647158, ; hash 0xd2246641032d2276, from name: System.Reflection.Metadata.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.104_name, ; name: libaot-System.Reflection.Metadata.dll.so
		ptr null; void* handle (0x0)
	}, ; 1375
	%struct.DSOCacheEntry {
		i64 15142421214196732689, ; hash 0xd224afddc7891311, from name: aot-System.AppContext
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.16_name, ; name: libaot-System.AppContext.dll.so
		ptr null; void* handle (0x0)
	}, ; 1376
	%struct.DSOCacheEntry {
		i64 15169277521300507936, ; hash 0xd28419890c6f4d20, from name: aot-System.Threading.Thread.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.155_name, ; name: libaot-System.Threading.Thread.dll.so
		ptr null; void* handle (0x0)
	}, ; 1377
	%struct.DSOCacheEntry {
		i64 15178188182332606664, ; hash 0xd2a3c1bbfdf788c8, from name: aot-System.Threading.Tasks.Parallel
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.153_name, ; name: libaot-System.Threading.Tasks.Parallel.dll.so
		ptr null; void* handle (0x0)
	}, ; 1378
	%struct.DSOCacheEntry {
		i64 15184495840846700114, ; hash 0xd2ba2a842f105e52, from name: Xamarin.AndroidX.Annotation.Jvm.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.208_name, ; name: libaot-Xamarin.AndroidX.Annotation.Jvm.dll.so
		ptr null; void* handle (0x0)
	}, ; 1379
	%struct.DSOCacheEntry {
		i64 15186020907486796291, ; hash 0xd2bf958e6e67da03, from name: libaot-System.Xml.XPath.XDocument.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.169_name, ; name: libaot-System.Xml.XPath.XDocument.dll.so
		ptr null; void* handle (0x0)
	}, ; 1380
	%struct.DSOCacheEntry {
		i64 15209665098310826992, ; hash 0xd31395d299793bf0, from name: libaot-System.Security.Cryptography.Csp
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.131_name, ; name: libaot-System.Security.Cryptography.Csp.dll.so
		ptr null; void* handle (0x0)
	}, ; 1381
	%struct.DSOCacheEntry {
		i64 15212030046956336817, ; hash 0xd31bfcbb1d66b6b1, from name: libaot-System.Runtime.Loader.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.119_name, ; name: libaot-System.Runtime.Loader.dll.so
		ptr null; void* handle (0x0)
	}, ; 1382
	%struct.DSOCacheEntry {
		i64 15216590919956829692, ; hash 0xd32c30d21c7615fc, from name: mscorlib.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.176_name, ; name: libaot-mscorlib.dll.so
		ptr null; void* handle (0x0)
	}, ; 1383
	%struct.DSOCacheEntry {
		i64 15225082071389566405, ; hash 0xd34a5b7a5d57f5c5, from name: aot-System.Resources.ResourceManager
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.109_name, ; name: libaot-System.Resources.ResourceManager.dll.so
		ptr null; void* handle (0x0)
	}, ; 1384
	%struct.DSOCacheEntry {
		i64 15241652306130060418, ; hash 0xd3853a04c8e54482, from name: aot-System.Runtime.Extensions.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.113_name, ; name: libaot-System.Runtime.Extensions.dll.so
		ptr null; void* handle (0x0)
	}, ; 1385
	%struct.DSOCacheEntry {
		i64 15249981825801789156, ; hash 0xd3a2d1ac36141ee4, from name: libaot-System.Configuration.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.29_name, ; name: libaot-System.Configuration.dll.so
		ptr null; void* handle (0x0)
	}, ; 1386
	%struct.DSOCacheEntry {
		i64 15272359115529052076, ; hash 0xd3f251b2fb4edfac, from name: Xamarin.AndroidX.Collection.Ktx
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.216_name, ; name: libaot-Xamarin.AndroidX.Collection.Ktx.dll.so
		ptr null; void* handle (0x0)
	}, ; 1387
	%struct.DSOCacheEntry {
		i64 15275473185398115273, ; hash 0xd3fd61eddfa8cbc9, from name: libaot-System.IO.FileSystem.Watcher.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.60_name, ; name: libaot-System.IO.FileSystem.Watcher.dll.so
		ptr null; void* handle (0x0)
	}, ; 1388
	%struct.DSOCacheEntry {
		i64 15276352876648998502, ; hash 0xd4008200f42e2666, from name: libaot-Xamarin.AndroidX.Lifecycle.Runtime
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.241_name, ; name: libaot-Xamarin.AndroidX.Lifecycle.Runtime.dll.so
		ptr null; void* handle (0x0)
	}, ; 1389
	%struct.DSOCacheEntry {
		i64 15287759098695794728, ; hash 0xd42907e6f9824028, from name: System.IO.Compression.Brotli.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.53_name, ; name: libaot-System.IO.Compression.Brotli.dll.so
		ptr null; void* handle (0x0)
	}, ; 1390
	%struct.DSOCacheEntry {
		i64 15318589402181230426, ; hash 0xd4968fe661135f5a, from name: aot-Xamarin.AndroidX.CustomView.PoolingContainer.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.225_name, ; name: libaot-Xamarin.AndroidX.CustomView.PoolingContainer.dll.so
		ptr null; void* handle (0x0)
	}, ; 1391
	%struct.DSOCacheEntry {
		i64 15320475599429667423, ; hash 0xd49d4362e60b8a5f, from name: aot-Xamarin.AndroidX.Annotation.Jvm
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.208_name, ; name: libaot-Xamarin.AndroidX.Annotation.Jvm.dll.so
		ptr null; void* handle (0x0)
	}, ; 1392
	%struct.DSOCacheEntry {
		i64 15336335058859734039, ; hash 0xd4d59b7b0bb43417, from name: libaot-Microsoft.Win32.Primitives.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.14_name, ; name: libaot-Microsoft.Win32.Primitives.dll.so
		ptr null; void* handle (0x0)
	}, ; 1393
	%struct.DSOCacheEntry {
		i64 15338463749992804988, ; hash 0xd4dd2b839286f27c, from name: System.Resources.Reader
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.108_name, ; name: libaot-System.Resources.Reader.dll.so
		ptr null; void* handle (0x0)
	}, ; 1394
	%struct.DSOCacheEntry {
		i64 15348282727708163003, ; hash 0xd5000dd2794efbbb, from name: aot-System.Runtime.InteropServices.JavaScript
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.115_name, ; name: libaot-System.Runtime.InteropServices.JavaScript.dll.so
		ptr null; void* handle (0x0)
	}, ; 1395
	%struct.DSOCacheEntry {
		i64 15361183609531804313, ; hash 0xd52de31b17b22a99, from name: System.Collections.Concurrent.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.18_name, ; name: libaot-System.Collections.Concurrent.dll.so
		ptr null; void* handle (0x0)
	}, ; 1396
	%struct.DSOCacheEntry {
		i64 15363175152636011871, ; hash 0xd534f6675afa255f, from name: aot-System.Globalization.Calendars.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.50_name, ; name: libaot-System.Globalization.Calendars.dll.so
		ptr null; void* handle (0x0)
	}, ; 1397
	%struct.DSOCacheEntry {
		i64 15371816955219117674, ; hash 0xd553aa13d029866a, from name: libaot-System.ComponentModel
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.28_name, ; name: libaot-System.ComponentModel.dll.so
		ptr null; void* handle (0x0)
	}, ; 1398
	%struct.DSOCacheEntry {
		i64 15380376821548623012, ; hash 0xd572133b000ea4a4, from name: libaot-Jsr305Binding
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.272_name, ; name: libaot-Jsr305Binding.dll.so
		ptr null; void* handle (0x0)
	}, ; 1399
	%struct.DSOCacheEntry {
		i64 15380401783038358320, ; hash 0xd57229eeccc93330, from name: aot-Xamarin.AndroidX.Security.SecurityCrypto.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.258_name, ; name: libaot-Xamarin.AndroidX.Security.SecurityCrypto.dll.so
		ptr null; void* handle (0x0)
	}, ; 1400
	%struct.DSOCacheEntry {
		i64 15385617065962309506, ; hash 0xd584b1347adf0782, from name: libaot-Xamarin.AndroidX.Navigation.UI
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.251_name, ; name: libaot-Xamarin.AndroidX.Navigation.UI.dll.so
		ptr null; void* handle (0x0)
	}, ; 1401
	%struct.DSOCacheEntry {
		i64 15391712275433856905, ; hash 0xd59a58c406411f89, from name: Microsoft.Extensions.DependencyInjection.Abstractions
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.187_name, ; name: libaot-Microsoft.Extensions.DependencyInjection.Abstractions.dll.so
		ptr null; void* handle (0x0)
	}, ; 1402
	%struct.DSOCacheEntry {
		i64 15394198501530322172, ; hash 0xd5a32df9a590c4fc, from name: libaot-Mono.Android
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.181_name, ; name: libaot-Mono.Android.dll.so
		ptr null; void* handle (0x0)
	}, ; 1403
	%struct.DSOCacheEntry {
		i64 15420320794302889280, ; hash 0xd5fffc0fe2fe3d40, from name: aot-System.Numerics.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.93_name, ; name: libaot-System.Numerics.dll.so
		ptr null; void* handle (0x0)
	}, ; 1404
	%struct.DSOCacheEntry {
		i64 15422501938551467493, ; hash 0xd607bbcd1b222de5, from name: System.ComponentModel.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.28_name, ; name: libaot-System.ComponentModel.dll.so
		ptr null; void* handle (0x0)
	}, ; 1405
	%struct.DSOCacheEntry {
		i64 15441728228412085485, ; hash 0xd64c0a028c9fd4ed, from name: libaot-System.Runtime.Numerics
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.120_name, ; name: libaot-System.Runtime.Numerics.dll.so
		ptr null; void* handle (0x0)
	}, ; 1406
	%struct.DSOCacheEntry {
		i64 15465553130743477305, ; hash 0xd6a0aea1e4e53439, from name: System.Net.NameResolution.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.77_name, ; name: libaot-System.Net.NameResolution.dll.so
		ptr null; void* handle (0x0)
	}, ; 1407
	%struct.DSOCacheEntry {
		i64 15475714952301452914, ; hash 0xd6c4c8c159211e72, from name: libaot-Xamarin.AndroidX.Legacy.Support.Core.Utils.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.235_name, ; name: libaot-Xamarin.AndroidX.Legacy.Support.Core.Utils.dll.so
		ptr null; void* handle (0x0)
	}, ; 1408
	%struct.DSOCacheEntry {
		i64 15476609812571688208, ; hash 0xd6c7f6a03da90d10, from name: libaot-Microsoft.Extensions.Configuration
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.184_name, ; name: libaot-Microsoft.Extensions.Configuration.dll.so
		ptr null; void* handle (0x0)
	}, ; 1409
	%struct.DSOCacheEntry {
		i64 15489493229072521270, ; hash 0xd6f5bc0665af9836, from name: aot-Xamarin.AndroidX.CursorAdapter
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.223_name, ; name: libaot-Xamarin.AndroidX.CursorAdapter.dll.so
		ptr null; void* handle (0x0)
	}, ; 1410
	%struct.DSOCacheEntry {
		i64 15497850842773803608, ; hash 0xd7136d3af9855258, from name: libaot-System.Net.Quic
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.81_name, ; name: libaot-System.Net.Quic.dll.so
		ptr null; void* handle (0x0)
	}, ; 1411
	%struct.DSOCacheEntry {
		i64 15503723175688157554, ; hash 0xd7284a1606e23972, from name: aot-System.Private.CoreLib
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.283_name, ; name: libaot-System.Private.CoreLib.dll.so
		ptr null; void* handle (0x0)
	}, ; 1412
	%struct.DSOCacheEntry {
		i64 15508200808610002858, ; hash 0xd73832782e9ff7aa, from name: libaot-System.Net.Http.Json
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.73_name, ; name: libaot-System.Net.Http.Json.dll.so
		ptr null; void* handle (0x0)
	}, ; 1413
	%struct.DSOCacheEntry {
		i64 15527772828719725935, ; hash 0xd77dbb1e38cd3d6f, from name: System.Console
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.30_name, ; name: libaot-System.Console.dll.so
		ptr null; void* handle (0x0)
	}, ; 1414
	%struct.DSOCacheEntry {
		i64 15545187331490926511, ; hash 0xd7bb99841c6b4faf, from name: aot-System.Globalization.Extensions
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.51_name, ; name: libaot-System.Globalization.Extensions.dll.so
		ptr null; void* handle (0x0)
	}, ; 1415
	%struct.DSOCacheEntry {
		i64 15550679837847413401, ; hash 0xd7cf1cebe6b96299, from name: libaot-Xamarin.AndroidX.VersionedParcelable
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.266_name, ; name: libaot-Xamarin.AndroidX.VersionedParcelable.dll.so
		ptr null; void* handle (0x0)
	}, ; 1416
	%struct.DSOCacheEntry {
		i64 15557562860424774966, ; hash 0xd7e790fe7a6dc536, from name: System.Net.Sockets
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.85_name, ; name: libaot-System.Net.Sockets.dll.so
		ptr null; void* handle (0x0)
	}, ; 1417
	%struct.DSOCacheEntry {
		i64 15580617819598355615, ; hash 0xd839795b7647fc9f, from name: libaot-System.Globalization.Calendars.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.50_name, ; name: libaot-System.Globalization.Calendars.dll.so
		ptr null; void* handle (0x0)
	}, ; 1418
	%struct.DSOCacheEntry {
		i64 15582737692548360875, ; hash 0xd841015ed86f6aab, from name: Xamarin.AndroidX.Lifecycle.ViewModelSavedState
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.245_name, ; name: libaot-Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll.so
		ptr null; void* handle (0x0)
	}, ; 1419
	%struct.DSOCacheEntry {
		i64 15602862011767004647, ; hash 0xd88880550acf1de7, from name: aot-Xamarin.AndroidX.Lifecycle.LiveData.Core
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.238_name, ; name: libaot-Xamarin.AndroidX.Lifecycle.LiveData.Core.dll.so
		ptr null; void* handle (0x0)
	}, ; 1420
	%struct.DSOCacheEntry {
		i64 15617887668700861200, ; hash 0xd8bde2166ade5310, from name: aot-System.Net.Requests.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.82_name, ; name: libaot-System.Net.Requests.dll.so
		ptr null; void* handle (0x0)
	}, ; 1421
	%struct.DSOCacheEntry {
		i64 15618115602383773515, ; hash 0xd8beb1645d121f4b, from name: libaot-System.ServiceProcess.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.142_name, ; name: libaot-System.ServiceProcess.dll.so
		ptr null; void* handle (0x0)
	}, ; 1422
	%struct.DSOCacheEntry {
		i64 15619289540722620146, ; hash 0xd8c2dd152ebef6f2, from name: aot-System.Security.Principal
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.138_name, ; name: libaot-System.Security.Principal.dll.so
		ptr null; void* handle (0x0)
	}, ; 1423
	%struct.DSOCacheEntry {
		i64 15619787930512100580, ; hash 0xd8c4a25d991b8ce4, from name: libaot-System.Diagnostics.TraceSource.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.43_name, ; name: libaot-System.Diagnostics.TraceSource.dll.so
		ptr null; void* handle (0x0)
	}, ; 1424
	%struct.DSOCacheEntry {
		i64 15623703258564015407, ; hash 0xd8d28b55f2d2352f, from name: aot-System.Net.Ping
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.79_name, ; name: libaot-System.Net.Ping.dll.so
		ptr null; void* handle (0x0)
	}, ; 1425
	%struct.DSOCacheEntry {
		i64 15637181376593849944, ; hash 0xd9026d9cd83aee58, from name: aot-System.Security.Claims
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.128_name, ; name: libaot-System.Security.Claims.dll.so
		ptr null; void* handle (0x0)
	}, ; 1426
	%struct.DSOCacheEntry {
		i64 15659595283356337508, ; hash 0xd9520ef12ed64564, from name: aot-System.Net.Security
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.83_name, ; name: libaot-System.Net.Security.dll.so
		ptr null; void* handle (0x0)
	}, ; 1427
	%struct.DSOCacheEntry {
		i64 15664512801553002624, ; hash 0xd96387661c203080, from name: libaot-Xamarin.Android.Glide.Annotations.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.201_name, ; name: libaot-Xamarin.Android.Glide.Annotations.dll.so
		ptr null; void* handle (0x0)
	}, ; 1428
	%struct.DSOCacheEntry {
		i64 15667477422179167780, ; hash 0xd96e0fb4a3712e24, from name: System.Xml.Serialization.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.167_name, ; name: libaot-System.Xml.Serialization.dll.so
		ptr null; void* handle (0x0)
	}, ; 1429
	%struct.DSOCacheEntry {
		i64 15690178400164156221, ; hash 0xd9beb61ff44a933d, from name: libaot-Xamarin.AndroidX.Annotation.Jvm.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.208_name, ; name: libaot-Xamarin.AndroidX.Annotation.Jvm.dll.so
		ptr null; void* handle (0x0)
	}, ; 1430
	%struct.DSOCacheEntry {
		i64 15701694690689555544, ; hash 0xd9e7a0214a301c58, from name: aot-System.ServiceModel.Web
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.141_name, ; name: libaot-System.ServiceModel.Web.dll.so
		ptr null; void* handle (0x0)
	}, ; 1431
	%struct.DSOCacheEntry {
		i64 15710114879900314733, ; hash 0xda058a3f5d096c6d, from name: Microsoft.Win32.Registry
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.15_name, ; name: libaot-Microsoft.Win32.Registry.dll.so
		ptr null; void* handle (0x0)
	}, ; 1432
	%struct.DSOCacheEntry {
		i64 15712039776084801819, ; hash 0xda0c60ee2e57b91b, from name: aot-Microsoft.Maui.Essentials.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.197_name, ; name: libaot-Microsoft.Maui.Essentials.dll.so
		ptr null; void* handle (0x0)
	}, ; 1433
	%struct.DSOCacheEntry {
		i64 15715135426312951253, ; hash 0xda1760686a8a55d5, from name: libaot-System.Threading.Tasks.Parallel.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.153_name, ; name: libaot-System.Threading.Tasks.Parallel.dll.so
		ptr null; void* handle (0x0)
	}, ; 1434
	%struct.DSOCacheEntry {
		i64 15734978453794313066, ; hash 0xda5ddf8946d5d36a, from name: aot-System.Security.Cryptography.X509Certificates
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.135_name, ; name: libaot-System.Security.Cryptography.X509Certificates.dll.so
		ptr null; void* handle (0x0)
	}, ; 1435
	%struct.DSOCacheEntry {
		i64 15735568087783371236, ; hash 0xda5ff7ce234cf1e4, from name: Xamarin.AndroidX.Lifecycle.ViewModel.Ktx.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.244_name, ; name: libaot-Xamarin.AndroidX.Lifecycle.ViewModel.Ktx.dll.so
		ptr null; void* handle (0x0)
	}, ; 1436
	%struct.DSOCacheEntry {
		i64 15738216224564018185, ; hash 0xda696045876d7c09, from name: aot-Xamarin.AndroidX.ExifInterface
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.231_name, ; name: libaot-Xamarin.AndroidX.ExifInterface.dll.so
		ptr null; void* handle (0x0)
	}, ; 1437
	%struct.DSOCacheEntry {
		i64 15742342285542832975, ; hash 0xda7808e6f6643b4f, from name: libaot-System.ComponentModel.TypeConverter.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.27_name, ; name: libaot-System.ComponentModel.TypeConverter.dll.so
		ptr null; void* handle (0x0)
	}, ; 1438
	%struct.DSOCacheEntry {
		i64 15743850336609555076, ; hash 0xda7d64777686d284, from name: aot-System.Security.Cryptography.Csp.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.131_name, ; name: libaot-System.Security.Cryptography.Csp.dll.so
		ptr null; void* handle (0x0)
	}, ; 1439
	%struct.DSOCacheEntry {
		i64 15755368083429170162, ; hash 0xdaa64fcbde529bf2, from name: System.IO.FileSystem.Primitives
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.59_name, ; name: libaot-System.IO.FileSystem.Primitives.dll.so
		ptr null; void* handle (0x0)
	}, ; 1440
	%struct.DSOCacheEntry {
		i64 15778138015801058191, ; hash 0xdaf734ede0e8a38f, from name: System.Resources.Writer.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.110_name, ; name: libaot-System.Resources.Writer.dll.so
		ptr null; void* handle (0x0)
	}, ; 1441
	%struct.DSOCacheEntry {
		i64 15801103922446586191, ; hash 0xdb48cc4cb475d14f, from name: libaot-System.Runtime.Serialization.Xml
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.124_name, ; name: libaot-System.Runtime.Serialization.Xml.dll.so
		ptr null; void* handle (0x0)
	}, ; 1442
	%struct.DSOCacheEntry {
		i64 15804685206979087323, ; hash 0xdb5585757cdc0bdb, from name: libaot-System.Globalization.Calendars
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.50_name, ; name: libaot-System.Globalization.Calendars.dll.so
		ptr null; void* handle (0x0)
	}, ; 1443
	%struct.DSOCacheEntry {
		i64 15835139485973775801, ; hash 0xdbc1b776de3a85b9, from name: aot-System.IO.Compression.FileSystem
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.54_name, ; name: libaot-System.IO.Compression.FileSystem.dll.so
		ptr null; void* handle (0x0)
	}, ; 1444
	%struct.DSOCacheEntry {
		i64 15847727014260307913, ; hash 0xdbee6fc12e58f7c9, from name: aot-Xamarin.AndroidX.SavedState.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.256_name, ; name: libaot-Xamarin.AndroidX.SavedState.dll.so
		ptr null; void* handle (0x0)
	}, ; 1445
	%struct.DSOCacheEntry {
		i64 15862942918925224802, ; hash 0xdc247e8a0ed60b62, from name: libaot-System.Dynamic.Runtime.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.47_name, ; name: libaot-System.Dynamic.Runtime.dll.so
		ptr null; void* handle (0x0)
	}, ; 1446
	%struct.DSOCacheEntry {
		i64 15868406323278249511, ; hash 0xdc37e77a028ffe27, from name: aot-Xamarin.AndroidX.Lifecycle.Runtime.Ktx.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.242_name, ; name: libaot-Xamarin.AndroidX.Lifecycle.Runtime.Ktx.dll.so
		ptr null; void* handle (0x0)
	}, ; 1447
	%struct.DSOCacheEntry {
		i64 15869986477656553338, ; hash 0xdc3d849e5ef8b77a, from name: libaot-System.Collections.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.22_name, ; name: libaot-System.Collections.dll.so
		ptr null; void* handle (0x0)
	}, ; 1448
	%struct.DSOCacheEntry {
		i64 15871886212343324518, ; hash 0xdc44446ad224df66, from name: libaot-Xamarin.AndroidX.Arch.Core.Common
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.211_name, ; name: libaot-Xamarin.AndroidX.Arch.Core.Common.dll.so
		ptr null; void* handle (0x0)
	}, ; 1449
	%struct.DSOCacheEntry {
		i64 15885744048853936810, ; hash 0xdc75800bd0b6eaaa, from name: System.Resources.Writer
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.110_name, ; name: libaot-System.Resources.Writer.dll.so
		ptr null; void* handle (0x0)
	}, ; 1450
	%struct.DSOCacheEntry {
		i64 15904398121613806925, ; hash 0xdcb7c5d3952e4d4d, from name: libaot-System.Transactions.Local
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.159_name, ; name: libaot-System.Transactions.Local.dll.so
		ptr null; void* handle (0x0)
	}, ; 1451
	%struct.DSOCacheEntry {
		i64 15908591910761673656, ; hash 0xdcc6ac0e359a33b8, from name: aot-Xamarin.KotlinX.Coroutines.Core.Jvm
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.282_name, ; name: libaot-Xamarin.KotlinX.Coroutines.Core.Jvm.dll.so
		ptr null; void* handle (0x0)
	}, ; 1452
	%struct.DSOCacheEntry {
		i64 15920910109220503623, ; hash 0xdcf26f6449038047, from name: System.Private.CoreLib.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.283_name, ; name: libaot-System.Private.CoreLib.dll.so
		ptr null; void* handle (0x0)
	}, ; 1453
	%struct.DSOCacheEntry {
		i64 15928521404965645318, ; hash 0xdd0d79d32c2eec06, from name: Microsoft.Maui.Controls.Compatibility
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.193_name, ; name: libaot-Microsoft.Maui.Controls.Compatibility.dll.so
		ptr null; void* handle (0x0)
	}, ; 1454
	%struct.DSOCacheEntry {
		i64 15934062614519587357, ; hash 0xdd2129868f45a21d, from name: System.Security.Cryptography.OpenSsl
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.133_name, ; name: libaot-System.Security.Cryptography.OpenSsl.dll.so
		ptr null; void* handle (0x0)
	}, ; 1455
	%struct.DSOCacheEntry {
		i64 15937190497610202713, ; hash 0xdd2c465197c97e59, from name: System.Security.Cryptography.Cng
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.130_name, ; name: libaot-System.Security.Cryptography.Cng.dll.so
		ptr null; void* handle (0x0)
	}, ; 1456
	%struct.DSOCacheEntry {
		i64 15953629603678197891, ; hash 0xdd66ad993d651883, from name: libaot-System.Diagnostics.StackTrace
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.40_name, ; name: libaot-System.Diagnostics.StackTrace.dll.so
		ptr null; void* handle (0x0)
	}, ; 1457
	%struct.DSOCacheEntry {
		i64 15958977808799221818, ; hash 0xdd79adc347d1c83a, from name: System.Net.Security.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.83_name, ; name: libaot-System.Net.Security.dll.so
		ptr null; void* handle (0x0)
	}, ; 1458
	%struct.DSOCacheEntry {
		i64 15963349826457351533, ; hash 0xdd893616f748b56d, from name: System.Threading.Tasks.Extensions
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.152_name, ; name: libaot-System.Threading.Tasks.Extensions.dll.so
		ptr null; void* handle (0x0)
	}, ; 1459
	%struct.DSOCacheEntry {
		i64 15964641699753034279, ; hash 0xdd8dcd0aa82b0227, from name: libaot-Xamarin.AndroidX.SwipeRefreshLayout
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.261_name, ; name: libaot-Xamarin.AndroidX.SwipeRefreshLayout.dll.so
		ptr null; void* handle (0x0)
	}, ; 1460
	%struct.DSOCacheEntry {
		i64 15966880053891205882, ; hash 0xdd95c0d017748afa, from name: libaot-System.Threading.Tasks.Extensions
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.152_name, ; name: libaot-System.Threading.Tasks.Extensions.dll.so
		ptr null; void* handle (0x0)
	}, ; 1461
	%struct.DSOCacheEntry {
		i64 16004199028078918232, ; hash 0xde1a5638df4bba58, from name: System.Net.WebHeaderCollection.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.87_name, ; name: libaot-System.Net.WebHeaderCollection.dll.so
		ptr null; void* handle (0x0)
	}, ; 1462
	%struct.DSOCacheEntry {
		i64 16011614235295386646, ; hash 0xde34ae50575e8c16, from name: System.Net.ServicePoint.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.84_name, ; name: libaot-System.Net.ServicePoint.dll.so
		ptr null; void* handle (0x0)
	}, ; 1463
	%struct.DSOCacheEntry {
		i64 16019147812295987827, ; hash 0xde4f720fec60d273, from name: Xamarin.AndroidX.Annotation.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.206_name, ; name: libaot-Xamarin.AndroidX.Annotation.dll.so
		ptr null; void* handle (0x0)
	}, ; 1464
	%struct.DSOCacheEntry {
		i64 16028674295501350649, ; hash 0xde714a5923cae6f9, from name: libaot-System.Runtime.Extensions.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.113_name, ; name: libaot-System.Runtime.Extensions.dll.so
		ptr null; void* handle (0x0)
	}, ; 1465
	%struct.DSOCacheEntry {
		i64 16034513218355378781, ; hash 0xde8608d14e60ba5d, from name: libaot-Xamarin.AndroidX.Navigation.Fragment.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.249_name, ; name: libaot-Xamarin.AndroidX.Navigation.Fragment.dll.so
		ptr null; void* handle (0x0)
	}, ; 1466
	%struct.DSOCacheEntry {
		i64 16054465462676478687, ; hash 0xdecceb47319bdadf, from name: System.Globalization.Extensions
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.51_name, ; name: libaot-System.Globalization.Extensions.dll.so
		ptr null; void* handle (0x0)
	}, ; 1467
	%struct.DSOCacheEntry {
		i64 16082055429166766795, ; hash 0xdf2ef034d9a09acb, from name: aot-System.Xml.XmlDocument
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.171_name, ; name: libaot-System.Xml.XmlDocument.dll.so
		ptr null; void* handle (0x0)
	}, ; 1468
	%struct.DSOCacheEntry {
		i64 16092207569901868800, ; hash 0xdf5301864fda5700, from name: libaot-Xamarin.AndroidX.Tracing.Tracing.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.262_name, ; name: libaot-Xamarin.AndroidX.Tracing.Tracing.dll.so
		ptr null; void* handle (0x0)
	}, ; 1469
	%struct.DSOCacheEntry {
		i64 16121628427822810037, ; hash 0xdfbb87a39937c3b5, from name: aot-Xamarin.AndroidX.Lifecycle.ViewModel.Ktx.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.244_name, ; name: libaot-Xamarin.AndroidX.Lifecycle.ViewModel.Ktx.dll.so
		ptr null; void* handle (0x0)
	}, ; 1470
	%struct.DSOCacheEntry {
		i64 16140149539819930312, ; hash 0xdffd547e06a6c2c8, from name: libaot-Xamarin.AndroidX.CoordinatorLayout
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.220_name, ; name: libaot-Xamarin.AndroidX.CoordinatorLayout.dll.so
		ptr null; void* handle (0x0)
	}, ; 1471
	%struct.DSOCacheEntry {
		i64 16150697952833328807, ; hash 0xe022ce37d14256a7, from name: System.IO.Pipes.AccessControl.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.64_name, ; name: libaot-System.IO.Pipes.AccessControl.dll.so
		ptr null; void* handle (0x0)
	}, ; 1472
	%struct.DSOCacheEntry {
		i64 16151644148648336944, ; hash 0xe0262ac732b35e30, from name: aot-Xamarin.AndroidX.Browser
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.213_name, ; name: libaot-Xamarin.AndroidX.Browser.dll.so
		ptr null; void* handle (0x0)
	}, ; 1473
	%struct.DSOCacheEntry {
		i64 16154507427712707110, ; hash 0xe03056ea4e39aa26, from name: System
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.174_name, ; name: libaot-System.dll.so
		ptr null; void* handle (0x0)
	}, ; 1474
	%struct.DSOCacheEntry {
		i64 16182933535663939892, ; hash 0xe095544f51016134, from name: aot-Xamarin.Android.Glide
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.200_name, ; name: libaot-Xamarin.Android.Glide.dll.so
		ptr null; void* handle (0x0)
	}, ; 1475
	%struct.DSOCacheEntry {
		i64 16186580156264869966, ; hash 0xe0a248e4568df04e, from name: libaot-Microsoft.Extensions.Options
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.191_name, ; name: libaot-Microsoft.Extensions.Options.dll.so
		ptr null; void* handle (0x0)
	}, ; 1476
	%struct.DSOCacheEntry {
		i64 16206008551326349247, ; hash 0xe0e74eea10bff7bf, from name: libaot-System.Formats.Tar
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.49_name, ; name: libaot-System.Formats.Tar.dll.so
		ptr null; void* handle (0x0)
	}, ; 1477
	%struct.DSOCacheEntry {
		i64 16207190415945444318, ; hash 0xe0eb81d05d8b2bde, from name: aot-Xamarin.AndroidX.Window.Extensions.Core.Core.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.270_name, ; name: libaot-Xamarin.AndroidX.Window.Extensions.Core.Core.dll.so
		ptr null; void* handle (0x0)
	}, ; 1478
	%struct.DSOCacheEntry {
		i64 16210911171323730879, ; hash 0xe0f8b9d23c299bbf, from name: libaot-System.Private.DataContractSerialization.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.95_name, ; name: libaot-System.Private.DataContractSerialization.dll.so
		ptr null; void* handle (0x0)
	}, ; 1479
	%struct.DSOCacheEntry {
		i64 16212429077909136987, ; hash 0xe0fe1e5966fce65b, from name: libaot-System.ServiceModel.Web.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.141_name, ; name: libaot-System.ServiceModel.Web.dll.so
		ptr null; void* handle (0x0)
	}, ; 1480
	%struct.DSOCacheEntry {
		i64 16215129991522364183, ; hash 0xe107b6d0db792b17, from name: libaot-Xamarin.AndroidX.Activity.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.204_name, ; name: libaot-Xamarin.AndroidX.Activity.dll.so
		ptr null; void* handle (0x0)
	}, ; 1481
	%struct.DSOCacheEntry {
		i64 16217712076265891113, ; hash 0xe110e3354f642529, from name: libmono-component-marshal-ilgen.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.5_name, ; name: libmono-component-marshal-ilgen.so
		ptr null; void* handle (0x0)
	}, ; 1482
	%struct.DSOCacheEntry {
		i64 16219561732052121626, ; hash 0xe1177575db7c781a, from name: System.Net.Security
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.83_name, ; name: libaot-System.Net.Security.dll.so
		ptr null; void* handle (0x0)
	}, ; 1483
	%struct.DSOCacheEntry {
		i64 16225652972018057753, ; hash 0xe12d19692de5c219, from name: libaot-System.Xml.XmlSerializer.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.172_name, ; name: libaot-System.Xml.XmlSerializer.dll.so
		ptr null; void* handle (0x0)
	}, ; 1484
	%struct.DSOCacheEntry {
		i64 16244479869324760570, ; hash 0xe16ffc5fcc1615fa, from name: aot-System.Security.Cryptography.Primitives.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.134_name, ; name: libaot-System.Security.Cryptography.Primitives.dll.so
		ptr null; void* handle (0x0)
	}, ; 1485
	%struct.DSOCacheEntry {
		i64 16252628236323224727, ; hash 0xe18cef4554877c97, from name: libaot-System.Transactions
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.160_name, ; name: libaot-System.Transactions.dll.so
		ptr null; void* handle (0x0)
	}, ; 1486
	%struct.DSOCacheEntry {
		i64 16253390427661688581, ; hash 0xe18fa47ad4825f05, from name: libaot-System.Linq.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.71_name, ; name: libaot-System.Linq.dll.so
		ptr null; void* handle (0x0)
	}, ; 1487
	%struct.DSOCacheEntry {
		i64 16254491453283163162, ; hash 0xe1938ddb5590dc1a, from name: Microsoft.Extensions.Logging.Abstractions.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.189_name, ; name: libaot-Microsoft.Extensions.Logging.Abstractions.dll.so
		ptr null; void* handle (0x0)
	}, ; 1488
	%struct.DSOCacheEntry {
		i64 16268781616454265773, ; hash 0xe1c652af39296bad, from name: aot-Xamarin.AndroidX.Tracing.Tracing
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.262_name, ; name: libaot-Xamarin.AndroidX.Tracing.Tracing.dll.so
		ptr null; void* handle (0x0)
	}, ; 1489
	%struct.DSOCacheEntry {
		i64 16273606707797624453, ; hash 0xe1d7771458b10685, from name: System.Native.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.1_name, ; name: libSystem.Native.so
		ptr null; void* handle (0x0)
	}, ; 1490
	%struct.DSOCacheEntry {
		i64 16329114974302298891, ; hash 0xe29cab8dc3cce30b, from name: aot-Microsoft.Extensions.Primitives
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.192_name, ; name: libaot-Microsoft.Extensions.Primitives.dll.so
		ptr null; void* handle (0x0)
	}, ; 1491
	%struct.DSOCacheEntry {
		i64 16343990919570639460, ; hash 0xe2d18525ad37ca64, from name: libaot-Xamarin.AndroidX.Lifecycle.LiveData
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.237_name, ; name: libaot-Xamarin.AndroidX.Lifecycle.LiveData.dll.so
		ptr null; void* handle (0x0)
	}, ; 1492
	%struct.DSOCacheEntry {
		i64 16354813168604688526, ; hash 0xe2f7f7ece290308e, from name: aot-System.Drawing.Primitives
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.45_name, ; name: libaot-System.Drawing.Primitives.dll.so
		ptr null; void* handle (0x0)
	}, ; 1493
	%struct.DSOCacheEntry {
		i64 16359895623217386732, ; hash 0xe30a0664105714ec, from name: libaot-System.Xml.XDocument
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.168_name, ; name: libaot-System.Xml.XDocument.dll.so
		ptr null; void* handle (0x0)
	}, ; 1494
	%struct.DSOCacheEntry {
		i64 16370340268830916137, ; hash 0xe32f21bd9ff07e29, from name: System.Linq.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.71_name, ; name: libaot-System.Linq.dll.so
		ptr null; void* handle (0x0)
	}, ; 1495
	%struct.DSOCacheEntry {
		i64 16381697928620763692, ; hash 0xe3577b78dd316a2c, from name: aot-System.Xml.XDocument
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.168_name, ; name: libaot-System.Xml.XDocument.dll.so
		ptr null; void* handle (0x0)
	}, ; 1496
	%struct.DSOCacheEntry {
		i64 16411908373586787849, ; hash 0xe3c2cfb635e63e09, from name: libaot-System.Drawing.Primitives.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.45_name, ; name: libaot-System.Drawing.Primitives.dll.so
		ptr null; void* handle (0x0)
	}, ; 1497
	%struct.DSOCacheEntry {
		i64 16413721059704043258, ; hash 0xe3c940571601f6fa, from name: aot-System.Console.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.30_name, ; name: libaot-System.Console.dll.so
		ptr null; void* handle (0x0)
	}, ; 1498
	%struct.DSOCacheEntry {
		i64 16423015068819898779, ; hash 0xe3ea453135e5c19b, from name: Xamarin.Kotlin.StdLib.Jdk8
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.280_name, ; name: libaot-Xamarin.Kotlin.StdLib.Jdk8.dll.so
		ptr null; void* handle (0x0)
	}, ; 1499
	%struct.DSOCacheEntry {
		i64 16437079515119973484, ; hash 0xe41c3cbb4b93746c, from name: libaot-Xamarin.AndroidX.VectorDrawable.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.264_name, ; name: libaot-Xamarin.AndroidX.VectorDrawable.dll.so
		ptr null; void* handle (0x0)
	}, ; 1500
	%struct.DSOCacheEntry {
		i64 16454459195343277943, ; hash 0xe459fb756d988f77, from name: System.Net.NetworkInformation
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.78_name, ; name: libaot-System.Net.NetworkInformation.dll.so
		ptr null; void* handle (0x0)
	}, ; 1501
	%struct.DSOCacheEntry {
		i64 16468495274607917357, ; hash 0xe48bd932cc34392d, from name: libaot-Xamarin.AndroidX.CustomView.PoolingContainer
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.225_name, ; name: libaot-Xamarin.AndroidX.CustomView.PoolingContainer.dll.so
		ptr null; void* handle (0x0)
	}, ; 1502
	%struct.DSOCacheEntry {
		i64 16477862173331498088, ; hash 0xe4ad2057db452468, from name: Xamarin.AndroidX.SavedState.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.256_name, ; name: libaot-Xamarin.AndroidX.SavedState.dll.so
		ptr null; void* handle (0x0)
	}, ; 1503
	%struct.DSOCacheEntry {
		i64 16481900306254799575, ; hash 0xe4bb7900f1b822d7, from name: aot-Microsoft.Extensions.Logging.Abstractions.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.189_name, ; name: libaot-Microsoft.Extensions.Logging.Abstractions.dll.so
		ptr null; void* handle (0x0)
	}, ; 1504
	%struct.DSOCacheEntry {
		i64 16489622925355043035, ; hash 0xe4d6e8af51ecc8db, from name: aot-System.Net.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.91_name, ; name: libaot-System.Net.dll.so
		ptr null; void* handle (0x0)
	}, ; 1505
	%struct.DSOCacheEntry {
		i64 16504549732499142624, ; hash 0xe50bf0896f6137e0, from name: libaot-System.IO.IsolatedStorage
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.62_name, ; name: libaot-System.IO.IsolatedStorage.dll.so
		ptr null; void* handle (0x0)
	}, ; 1506
	%struct.DSOCacheEntry {
		i64 16533587393220204778, ; hash 0xe5731a22abc458ea, from name: aot-Xamarin.AndroidX.Arch.Core.Runtime.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.212_name, ; name: libaot-Xamarin.AndroidX.Arch.Core.Runtime.dll.so
		ptr null; void* handle (0x0)
	}, ; 1507
	%struct.DSOCacheEntry {
		i64 16546075788856499521, ; hash 0xe59f7843dd7b9d41, from name: System.Runtime.Handles.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.114_name, ; name: libaot-System.Runtime.Handles.dll.so
		ptr null; void* handle (0x0)
	}, ; 1508
	%struct.DSOCacheEntry {
		i64 16580016911934225942, ; hash 0xe6180d8965cefe16, from name: libaot-Xamarin.AndroidX.CustomView.PoolingContainer.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.225_name, ; name: libaot-Xamarin.AndroidX.CustomView.PoolingContainer.dll.so
		ptr null; void* handle (0x0)
	}, ; 1509
	%struct.DSOCacheEntry {
		i64 16616675818235817923, ; hash 0xe69a4a9e25c4efc3, from name: aot-System.Runtime.Intrinsics.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.118_name, ; name: libaot-System.Runtime.Intrinsics.dll.so
		ptr null; void* handle (0x0)
	}, ; 1510
	%struct.DSOCacheEntry {
		i64 16621146507174665210, ; hash 0xe6aa2caf87dedbfa, from name: Xamarin.AndroidX.ConstraintLayout
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.218_name, ; name: libaot-Xamarin.AndroidX.ConstraintLayout.dll.so
		ptr null; void* handle (0x0)
	}, ; 1511
	%struct.DSOCacheEntry {
		i64 16640193087310295438, ; hash 0xe6edd7730b0a718e, from name: libaot-Microsoft.VisualBasic.Core
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.12_name, ; name: libaot-Microsoft.VisualBasic.Core.dll.so
		ptr null; void* handle (0x0)
	}, ; 1512
	%struct.DSOCacheEntry {
		i64 16648892297579399389, ; hash 0xe70cbf55c4f508dd, from name: CommunityToolkit.Mvvm
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.182_name, ; name: libaot-CommunityToolkit.Mvvm.dll.so
		ptr null; void* handle (0x0)
	}, ; 1513
	%struct.DSOCacheEntry {
		i64 16649148416072044166, ; hash 0xe70da84600bb4e86, from name: Microsoft.Maui.Graphics
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.198_name, ; name: libaot-Microsoft.Maui.Graphics.dll.so
		ptr null; void* handle (0x0)
	}, ; 1514
	%struct.DSOCacheEntry {
		i64 16653338070420513259, ; hash 0xe71c8abdebe761eb, from name: aot-Xamarin.AndroidX.SavedState.SavedState.Ktx
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.257_name, ; name: libaot-Xamarin.AndroidX.SavedState.SavedState.Ktx.dll.so
		ptr null; void* handle (0x0)
	}, ; 1515
	%struct.DSOCacheEntry {
		i64 16658275551025667623, ; hash 0xe72e155ab5759e27, from name: libaot-System.Security.SecureString
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.139_name, ; name: libaot-System.Security.SecureString.dll.so
		ptr null; void* handle (0x0)
	}, ; 1516
	%struct.DSOCacheEntry {
		i64 16666876093969079408, ; hash 0xe74ca380a87a1c70, from name: aot-System.ComponentModel.EventBasedAsync.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.25_name, ; name: libaot-System.ComponentModel.EventBasedAsync.dll.so
		ptr null; void* handle (0x0)
	}, ; 1517
	%struct.DSOCacheEntry {
		i64 16672920045762198372, ; hash 0xe7621c71d8253b64, from name: aot-Xamarin.AndroidX.Lifecycle.Runtime
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.241_name, ; name: libaot-Xamarin.AndroidX.Lifecycle.Runtime.dll.so
		ptr null; void* handle (0x0)
	}, ; 1518
	%struct.DSOCacheEntry {
		i64 16677317093839702854, ; hash 0xe771bb8960dd8b46, from name: Xamarin.AndroidX.Navigation.UI
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.251_name, ; name: libaot-Xamarin.AndroidX.Navigation.UI.dll.so
		ptr null; void* handle (0x0)
	}, ; 1519
	%struct.DSOCacheEntry {
		i64 16680980346670206276, ; hash 0xe77ebf3ee48ccd44, from name: aot-System.IO.FileSystem.Primitives
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.59_name, ; name: libaot-System.IO.FileSystem.Primitives.dll.so
		ptr null; void* handle (0x0)
	}, ; 1520
	%struct.DSOCacheEntry {
		i64 16685592730301393375, ; hash 0xe78f222f247469df, from name: libaot-System.IO.Compression.FileSystem
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.54_name, ; name: libaot-System.IO.Compression.FileSystem.dll.so
		ptr null; void* handle (0x0)
	}, ; 1521
	%struct.DSOCacheEntry {
		i64 16687522843226958423, ; hash 0xe795fd9c93c26a57, from name: aot-System.Data
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.34_name, ; name: libaot-System.Data.dll.so
		ptr null; void* handle (0x0)
	}, ; 1522
	%struct.DSOCacheEntry {
		i64 16702652415771857902, ; hash 0xe7cbbde0b0e6d3ee, from name: System.ValueTuple
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.161_name, ; name: libaot-System.ValueTuple.dll.so
		ptr null; void* handle (0x0)
	}, ; 1523
	%struct.DSOCacheEntry {
		i64 16709499819875633724, ; hash 0xe7e4118e32240a3c, from name: System.IO.Compression.ZipFile
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.55_name, ; name: libaot-System.IO.Compression.ZipFile.dll.so
		ptr null; void* handle (0x0)
	}, ; 1524
	%struct.DSOCacheEntry {
		i64 16717189724135467099, ; hash 0xe7ff637b8de7a85b, from name: libmonosgen-2.0.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.6_name, ; name: libmonosgen-2.0.so
		ptr null; void* handle (0x0)
	}, ; 1525
	%struct.DSOCacheEntry {
		i64 16726246336088538334, ; hash 0xe81f906c583c7cde, from name: System.Reflection.TypeExtensions.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.106_name, ; name: libaot-System.Reflection.TypeExtensions.dll.so
		ptr null; void* handle (0x0)
	}, ; 1526
	%struct.DSOCacheEntry {
		i64 16730696072636839813, ; hash 0xe82f5f6f5e8ab785, from name: libaot-Xamarin.AndroidX.CursorAdapter.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.223_name, ; name: libaot-Xamarin.AndroidX.CursorAdapter.dll.so
		ptr null; void* handle (0x0)
	}, ; 1527
	%struct.DSOCacheEntry {
		i64 16733100980842614628, ; hash 0xe837eaafb1dd4f64, from name: libaot-System.IO.Compression.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.56_name, ; name: libaot-System.IO.Compression.dll.so
		ptr null; void* handle (0x0)
	}, ; 1528
	%struct.DSOCacheEntry {
		i64 16737807731308835127, ; hash 0xe848a3736f733137, from name: System.Runtime.Intrinsics
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.118_name, ; name: libaot-System.Runtime.Intrinsics.dll.so
		ptr null; void* handle (0x0)
	}, ; 1529
	%struct.DSOCacheEntry {
		i64 16756912368409526705, ; hash 0xe88c8304636641b1, from name: libaot-Xamarin.AndroidX.DynamicAnimation.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.228_name, ; name: libaot-Xamarin.AndroidX.DynamicAnimation.dll.so
		ptr null; void* handle (0x0)
	}, ; 1530
	%struct.DSOCacheEntry {
		i64 16758309481308491337, ; hash 0xe89179af15740e49, from name: System.IO.FileSystem.DriveInfo
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.58_name, ; name: libaot-System.IO.FileSystem.DriveInfo.dll.so
		ptr null; void* handle (0x0)
	}, ; 1531
	%struct.DSOCacheEntry {
		i64 16762783179241323229, ; hash 0xe8a15e7d0d927add, from name: System.Reflection.TypeExtensions
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.106_name, ; name: libaot-System.Reflection.TypeExtensions.dll.so
		ptr null; void* handle (0x0)
	}, ; 1532
	%struct.DSOCacheEntry {
		i64 16765175234154577062, ; hash 0xe8a9de0cbcf5bca6, from name: libaot-System.Security.Cryptography.Algorithms
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.129_name, ; name: libaot-System.Security.Cryptography.Algorithms.dll.so
		ptr null; void* handle (0x0)
	}, ; 1533
	%struct.DSOCacheEntry {
		i64 16768067971893542065, ; hash 0xe8b424faba51bcb1, from name: libaot-Mono.Android.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.181_name, ; name: libaot-Mono.Android.dll.so
		ptr null; void* handle (0x0)
	}, ; 1534
	%struct.DSOCacheEntry {
		i64 16778162983708529344, ; hash 0xe8d80256d38e12c0, from name: libaot-Microsoft.Extensions.Options.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.191_name, ; name: libaot-Microsoft.Extensions.Options.dll.so
		ptr null; void* handle (0x0)
	}, ; 1535
	%struct.DSOCacheEntry {
		i64 16804602679676381986, ; hash 0xe935f11a41b02b22, from name: monosgen-2.0
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.6_name, ; name: libmonosgen-2.0.so
		ptr null; void* handle (0x0)
	}, ; 1536
	%struct.DSOCacheEntry {
		i64 16812641203226435415, ; hash 0xe9528018de685f57, from name: libaot-System.Private.Xml.Linq
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.97_name, ; name: libaot-System.Private.Xml.Linq.dll.so
		ptr null; void* handle (0x0)
	}, ; 1537
	%struct.DSOCacheEntry {
		i64 16818814240165112060, ; hash 0xe9686e710852a8fc, from name: aot-System.Private.Xml
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.98_name, ; name: libaot-System.Private.Xml.dll.so
		ptr null; void* handle (0x0)
	}, ; 1538
	%struct.DSOCacheEntry {
		i64 16822611501064131242, ; hash 0xe975ec07bb5412aa, from name: System.Data.DataSetExtensions
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.33_name, ; name: libaot-System.Data.DataSetExtensions.dll.so
		ptr null; void* handle (0x0)
	}, ; 1539
	%struct.DSOCacheEntry {
		i64 16828654736957370171, ; hash 0xe98b64523c09ef3b, from name: aot-Xamarin.AndroidX.ConstraintLayout.Core
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.219_name, ; name: libaot-Xamarin.AndroidX.ConstraintLayout.Core.dll.so
		ptr null; void* handle (0x0)
	}, ; 1540
	%struct.DSOCacheEntry {
		i64 16831427098943474553, ; hash 0xe9953dc50f68cb79, from name: aot-Microsoft.Extensions.Logging
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.188_name, ; name: libaot-Microsoft.Extensions.Logging.dll.so
		ptr null; void* handle (0x0)
	}, ; 1541
	%struct.DSOCacheEntry {
		i64 16833383113903931215, ; hash 0xe99c30c1484d7f4f, from name: mscorlib
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.176_name, ; name: libaot-mscorlib.dll.so
		ptr null; void* handle (0x0)
	}, ; 1542
	%struct.DSOCacheEntry {
		i64 16836283848371485551, ; hash 0xe9a67ef527d43b6f, from name: System.Threading.Tasks.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.154_name, ; name: libaot-System.Threading.Tasks.dll.so
		ptr null; void* handle (0x0)
	}, ; 1543
	%struct.DSOCacheEntry {
		i64 16867396477207970224, ; hash 0xea1507ba8da801b0, from name: aot-Xamarin.AndroidX.Annotation.Experimental.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.207_name, ; name: libaot-Xamarin.AndroidX.Annotation.Experimental.dll.so
		ptr null; void* handle (0x0)
	}, ; 1544
	%struct.DSOCacheEntry {
		i64 16913431814627102754, ; hash 0xeab8949fcba39022, from name: aot-Mono.Android.Export.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.179_name, ; name: libaot-Mono.Android.Export.dll.so
		ptr null; void* handle (0x0)
	}, ; 1545
	%struct.DSOCacheEntry {
		i64 16918190388480372542, ; hash 0xeac97c859bccef3e, from name: aot-Xamarin.AndroidX.ConstraintLayout.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.218_name, ; name: libaot-Xamarin.AndroidX.ConstraintLayout.dll.so
		ptr null; void* handle (0x0)
	}, ; 1546
	%struct.DSOCacheEntry {
		i64 16924802110373038789, ; hash 0xeae0f9d912910ac5, from name: libaot-System.IO.Compression.Brotli.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.53_name, ; name: libaot-System.IO.Compression.Brotli.dll.so
		ptr null; void* handle (0x0)
	}, ; 1547
	%struct.DSOCacheEntry {
		i64 16926798323237543726, ; hash 0xeae8116499405f2e, from name: libaot-System.Formats.Asn1
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.48_name, ; name: libaot-System.Formats.Asn1.dll.so
		ptr null; void* handle (0x0)
	}, ; 1548
	%struct.DSOCacheEntry {
		i64 16948040093346346617, ; hash 0xeb3388ab9afcb679, from name: System.ComponentModel.Primitives.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.26_name, ; name: libaot-System.ComponentModel.Primitives.dll.so
		ptr null; void* handle (0x0)
	}, ; 1549
	%struct.DSOCacheEntry {
		i64 16967745026080341269, ; hash 0xeb798a33c6eb7d15, from name: aot-System.Threading.Tasks
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.154_name, ; name: libaot-System.Threading.Tasks.dll.so
		ptr null; void* handle (0x0)
	}, ; 1550
	%struct.DSOCacheEntry {
		i64 16973981476142157684, ; hash 0xeb8fb23875838f74, from name: aot-System.Diagnostics.FileVersionInfo.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.38_name, ; name: libaot-System.Diagnostics.FileVersionInfo.dll.so
		ptr null; void* handle (0x0)
	}, ; 1551
	%struct.DSOCacheEntry {
		i64 16977952268158210142, ; hash 0xeb9dcda2851b905e, from name: System.IO.Pipes.AccessControl
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.64_name, ; name: libaot-System.IO.Pipes.AccessControl.dll.so
		ptr null; void* handle (0x0)
	}, ; 1552
	%struct.DSOCacheEntry {
		i64 16989020923549080504, ; hash 0xebc52084add25bb8, from name: Xamarin.AndroidX.Lifecycle.ViewModel.Ktx
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.244_name, ; name: libaot-Xamarin.AndroidX.Lifecycle.ViewModel.Ktx.dll.so
		ptr null; void* handle (0x0)
	}, ; 1553
	%struct.DSOCacheEntry {
		i64 16996475080257383455, ; hash 0xebdf9c08c8852c1f, from name: aot-System.Reflection.TypeExtensions
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.106_name, ; name: libaot-System.Reflection.TypeExtensions.dll.so
		ptr null; void* handle (0x0)
	}, ; 1554
	%struct.DSOCacheEntry {
		i64 16998075588627545693, ; hash 0xebe54bb02d623e5d, from name: Xamarin.AndroidX.Navigation.Fragment
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.249_name, ; name: libaot-Xamarin.AndroidX.Navigation.Fragment.dll.so
		ptr null; void* handle (0x0)
	}, ; 1555
	%struct.DSOCacheEntry {
		i64 17006494245921786209, ; hash 0xec03346992e48961, from name: libaot-System.Security.Cryptography.X509Certificates
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.135_name, ; name: libaot-System.Security.Cryptography.X509Certificates.dll.so
		ptr null; void* handle (0x0)
	}, ; 1556
	%struct.DSOCacheEntry {
		i64 17007211756263440882, ; hash 0xec05c0fbf7ee01f2, from name: System.IO.FileSystem.AccessControl.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.57_name, ; name: libaot-System.IO.FileSystem.AccessControl.dll.so
		ptr null; void* handle (0x0)
	}, ; 1557
	%struct.DSOCacheEntry {
		i64 17008137082415910100, ; hash 0xec090a90408c8cd4, from name: System.Collections.NonGeneric
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.20_name, ; name: libaot-System.Collections.NonGeneric.dll.so
		ptr null; void* handle (0x0)
	}, ; 1558
	%struct.DSOCacheEntry {
		i64 17013129365086196242, ; hash 0xec1ac704a3bad212, from name: libaot-System.IO.FileSystem.AccessControl.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.57_name, ; name: libaot-System.IO.FileSystem.AccessControl.dll.so
		ptr null; void* handle (0x0)
	}, ; 1559
	%struct.DSOCacheEntry {
		i64 17032593994390949682, ; hash 0xec5fedfecf1fcf32, from name: aot-Xamarin.AndroidX.Print.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.252_name, ; name: libaot-Xamarin.AndroidX.Print.dll.so
		ptr null; void* handle (0x0)
	}, ; 1560
	%struct.DSOCacheEntry {
		i64 17037200463775726619, ; hash 0xec704b8e0a78fc1b, from name: Xamarin.AndroidX.Legacy.Support.Core.Utils
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.235_name, ; name: libaot-Xamarin.AndroidX.Legacy.Support.Core.Utils.dll.so
		ptr null; void* handle (0x0)
	}, ; 1561
	%struct.DSOCacheEntry {
		i64 17054402883587265903, ; hash 0xecad6910849dd56f, from name: libaot-Xamarin.AndroidX.Lifecycle.Runtime.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.241_name, ; name: libaot-Xamarin.AndroidX.Lifecycle.Runtime.dll.so
		ptr null; void* handle (0x0)
	}, ; 1562
	%struct.DSOCacheEntry {
		i64 17055547629728291761, ; hash 0xecb17a347fb5dbb1, from name: aot-System.Xml.ReaderWriter
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.166_name, ; name: libaot-System.Xml.ReaderWriter.dll.so
		ptr null; void* handle (0x0)
	}, ; 1563
	%struct.DSOCacheEntry {
		i64 17062143951396181894, ; hash 0xecc8e986518c9786, from name: System.ComponentModel.Primitives
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.26_name, ; name: libaot-System.ComponentModel.Primitives.dll.so
		ptr null; void* handle (0x0)
	}, ; 1564
	%struct.DSOCacheEntry {
		i64 17070628900825419556, ; hash 0xece70e8a8e374f24, from name: libaot-Xamarin.AndroidX.Security.SecurityCrypto.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.258_name, ; name: libaot-Xamarin.AndroidX.Security.SecurityCrypto.dll.so
		ptr null; void* handle (0x0)
	}, ; 1565
	%struct.DSOCacheEntry {
		i64 17082261261370137723, ; hash 0xed10621c8c621c7b, from name: aot-MauiApp1
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.9_name, ; name: libaot-MauiApp1.dll.so
		ptr null; void* handle (0x0)
	}, ; 1566
	%struct.DSOCacheEntry {
		i64 17082446950197443642, ; hash 0xed110afe98f93c3a, from name: aot-System.Web.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.163_name, ; name: libaot-System.Web.dll.so
		ptr null; void* handle (0x0)
	}, ; 1567
	%struct.DSOCacheEntry {
		i64 17101065054293908625, ; hash 0xed53300fc208dc91, from name: libaot-System.Xml.Serialization
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.167_name, ; name: libaot-System.Xml.Serialization.dll.so
		ptr null; void* handle (0x0)
	}, ; 1568
	%struct.DSOCacheEntry {
		i64 17118171214553292978, ; hash 0xed8ff6060fc420b2, from name: System.Threading.Channels
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.149_name, ; name: libaot-System.Threading.Channels.dll.so
		ptr null; void* handle (0x0)
	}, ; 1569
	%struct.DSOCacheEntry {
		i64 17121910816993127055, ; hash 0xed9d3f2c1acb2a8f, from name: libaot-Xamarin.Jetbrains.Annotations.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.276_name, ; name: libaot-Xamarin.Jetbrains.Annotations.dll.so
		ptr null; void* handle (0x0)
	}, ; 1570
	%struct.DSOCacheEntry {
		i64 17128100412849293457, ; hash 0xedb33c93b11a8891, from name: aot-System.ComponentModel.DataAnnotations
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.24_name, ; name: libaot-System.ComponentModel.DataAnnotations.dll.so
		ptr null; void* handle (0x0)
	}, ; 1571
	%struct.DSOCacheEntry {
		i64 17136618570653034468, ; hash 0xedd17fcbdb22e7e4, from name: System.IO.FileSystem.Primitives.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.59_name, ; name: libaot-System.IO.FileSystem.Primitives.dll.so
		ptr null; void* handle (0x0)
	}, ; 1572
	%struct.DSOCacheEntry {
		i64 17145939910537407827, ; hash 0xedf29d816bc66d53, from name: libaot-System.Reflection.DispatchProxy.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.99_name, ; name: libaot-System.Reflection.DispatchProxy.dll.so
		ptr null; void* handle (0x0)
	}, ; 1573
	%struct.DSOCacheEntry {
		i64 17154774957774660825, ; hash 0xee1200ef27ece4d9, from name: aot-System.Threading.Tasks.Dataflow.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.151_name, ; name: libaot-System.Threading.Tasks.Dataflow.dll.so
		ptr null; void* handle (0x0)
	}, ; 1574
	%struct.DSOCacheEntry {
		i64 17158514347283794486, ; hash 0xee1f49e39f4b4a36, from name: libaot-System.Formats.Tar.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.49_name, ; name: libaot-System.Formats.Tar.dll.so
		ptr null; void* handle (0x0)
	}, ; 1575
	%struct.DSOCacheEntry {
		i64 17171158695853098468, ; hash 0xee4c35db702f05e4, from name: libaot-System.AppContext.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.16_name, ; name: libaot-System.AppContext.dll.so
		ptr null; void* handle (0x0)
	}, ; 1576
	%struct.DSOCacheEntry {
		i64 17185887059099912167, ; hash 0xee808939bba207e7, from name: Xamarin.AndroidX.Collection.Ktx.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.216_name, ; name: libaot-Xamarin.AndroidX.Collection.Ktx.dll.so
		ptr null; void* handle (0x0)
	}, ; 1577
	%struct.DSOCacheEntry {
		i64 17198632731134806627, ; hash 0xeeadd158c1b24a63, from name: System.Windows.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.164_name, ; name: libaot-System.Windows.dll.so
		ptr null; void* handle (0x0)
	}, ; 1578
	%struct.DSOCacheEntry {
		i64 17201328579425343169, ; hash 0xeeb76534d96c16c1, from name: System.ComponentModel.EventBasedAsync
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.25_name, ; name: libaot-System.ComponentModel.EventBasedAsync.dll.so
		ptr null; void* handle (0x0)
	}, ; 1579
	%struct.DSOCacheEntry {
		i64 17230721278011714856, ; hash 0xef1fd1b5c7a72d28, from name: System.Private.Xml.Linq
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.97_name, ; name: libaot-System.Private.Xml.Linq.dll.so
		ptr null; void* handle (0x0)
	}, ; 1580
	%struct.DSOCacheEntry {
		i64 17252806954862991943, ; hash 0xef6e488422ff5a47, from name: libaot-Xamarin.AndroidX.Collection.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.215_name, ; name: libaot-Xamarin.AndroidX.Collection.dll.so
		ptr null; void* handle (0x0)
	}, ; 1581
	%struct.DSOCacheEntry {
		i64 17260702271250283638, ; hash 0xef8a5543bba6bc76, from name: System.Data.Common
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.32_name, ; name: libaot-System.Data.Common.dll.so
		ptr null; void* handle (0x0)
	}, ; 1582
	%struct.DSOCacheEntry {
		i64 17307240838015558791, ; hash 0xf02fabd8300d2487, from name: libaot-System.Net.NetworkInformation
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.78_name, ; name: libaot-System.Net.NetworkInformation.dll.so
		ptr null; void* handle (0x0)
	}, ; 1583
	%struct.DSOCacheEntry {
		i64 17309541862275468045, ; hash 0xf037d89d25aecb0d, from name: Mono.Android.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.181_name, ; name: libaot-Mono.Android.dll.so
		ptr null; void* handle (0x0)
	}, ; 1584
	%struct.DSOCacheEntry {
		i64 17310387669210885385, ; hash 0xf03ad9deeb9ded09, from name: aot-System.Diagnostics.Contracts
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.35_name, ; name: libaot-System.Diagnostics.Contracts.dll.so
		ptr null; void* handle (0x0)
	}, ; 1585
	%struct.DSOCacheEntry {
		i64 17317630548055557570, ; hash 0xf054953b104e05c2, from name: aot-System.Data.Common.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.32_name, ; name: libaot-System.Data.Common.dll.so
		ptr null; void* handle (0x0)
	}, ; 1586
	%struct.DSOCacheEntry {
		i64 17321896332601854532, ; hash 0xf063bcf06ce00a44, from name: System.Security.Cryptography.Csp.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.131_name, ; name: libaot-System.Security.Cryptography.Csp.dll.so
		ptr null; void* handle (0x0)
	}, ; 1587
	%struct.DSOCacheEntry {
		i64 17353272485882399419, ; hash 0xf0d3356263948abb, from name: Newtonsoft.Json.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.199_name, ; name: libaot-Newtonsoft.Json.dll.so
		ptr null; void* handle (0x0)
	}, ; 1588
	%struct.DSOCacheEntry {
		i64 17360349973592121190, ; hash 0xf0ec5a52686b9f66, from name: Xamarin.Google.Crypto.Tink.Android
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.273_name, ; name: libaot-Xamarin.Google.Crypto.Tink.Android.dll.so
		ptr null; void* handle (0x0)
	}, ; 1589
	%struct.DSOCacheEntry {
		i64 17385151973004961448, ; hash 0xf144779be52466a8, from name: libaot-System.Data.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.34_name, ; name: libaot-System.Data.dll.so
		ptr null; void* handle (0x0)
	}, ; 1590
	%struct.DSOCacheEntry {
		i64 17402366034782696113, ; hash 0xf1819fb4fa8bb2b1, from name: System.Security.Cryptography.Primitives.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.134_name, ; name: libaot-System.Security.Cryptography.Primitives.dll.so
		ptr null; void* handle (0x0)
	}, ; 1591
	%struct.DSOCacheEntry {
		i64 17404258022326120933, ; hash 0xf1885875a7fdb1e5, from name: libaot-System.Dynamic.Runtime
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.47_name, ; name: libaot-System.Dynamic.Runtime.dll.so
		ptr null; void* handle (0x0)
	}, ; 1592
	%struct.DSOCacheEntry {
		i64 17409288346781343688, ; hash 0xf19a3783563fdfc8, from name: libaot-Jsr305Binding.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.272_name, ; name: libaot-Jsr305Binding.dll.so
		ptr null; void* handle (0x0)
	}, ; 1593
	%struct.DSOCacheEntry {
		i64 17409515122893045457, ; hash 0xf19b05c3c3d4bed1, from name: libaot-System.Net.Mail.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.76_name, ; name: libaot-System.Net.Mail.dll.so
		ptr null; void* handle (0x0)
	}, ; 1594
	%struct.DSOCacheEntry {
		i64 17413454142804747506, ; hash 0xf1a904484e6e64f2, from name: aot-System.Diagnostics.Tools
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.42_name, ; name: libaot-System.Diagnostics.Tools.dll.so
		ptr null; void* handle (0x0)
	}, ; 1595
	%struct.DSOCacheEntry {
		i64 17426267689422556144, ; hash 0xf1d68a229ce60bf0, from name: aot-System.Diagnostics.Process
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.39_name, ; name: libaot-System.Diagnostics.Process.dll.so
		ptr null; void* handle (0x0)
	}, ; 1596
	%struct.DSOCacheEntry {
		i64 17451386204284126469, ; hash 0xf22fc74a98820505, from name: aot-Xamarin.AndroidX.Navigation.UI
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.251_name, ; name: libaot-Xamarin.AndroidX.Navigation.UI.dll.so
		ptr null; void* handle (0x0)
	}, ; 1597
	%struct.DSOCacheEntry {
		i64 17453504965091914764, ; hash 0xf2374e4b09d1f40c, from name: libaot-System.IO.Pipes
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.65_name, ; name: libaot-System.IO.Pipes.dll.so
		ptr null; void* handle (0x0)
	}, ; 1598
	%struct.DSOCacheEntry {
		i64 17464508702623786544, ; hash 0xf25e6622549be630, from name: aot-System.Security.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.140_name, ; name: libaot-System.Security.dll.so
		ptr null; void* handle (0x0)
	}, ; 1599
	%struct.DSOCacheEntry {
		i64 17470386307322966175, ; hash 0xf27347c8d0d5709f, from name: System.Threading.Timer
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.157_name, ; name: libaot-System.Threading.Timer.dll.so
		ptr null; void* handle (0x0)
	}, ; 1600
	%struct.DSOCacheEntry {
		i64 17474527379847198219, ; hash 0xf281fe1165a1360b, from name: libaot-System
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.174_name, ; name: libaot-System.dll.so
		ptr null; void* handle (0x0)
	}, ; 1601
	%struct.DSOCacheEntry {
		i64 17479433570620501354, ; hash 0xf2936c38f3df6d6a, from name: aot-System.Diagnostics.StackTrace
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.40_name, ; name: libaot-System.Diagnostics.StackTrace.dll.so
		ptr null; void* handle (0x0)
	}, ; 1602
	%struct.DSOCacheEntry {
		i64 17501557440705411739, ; hash 0xf2e205c3dd573a9b, from name: libaot-System.Net.Requests.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.82_name, ; name: libaot-System.Net.Requests.dll.so
		ptr null; void* handle (0x0)
	}, ; 1603
	%struct.DSOCacheEntry {
		i64 17521398138824957963, ; hash 0xf32882c660da200b, from name: System.Net.HttpListener.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.75_name, ; name: libaot-System.Net.HttpListener.dll.so
		ptr null; void* handle (0x0)
	}, ; 1604
	%struct.DSOCacheEntry {
		i64 17522591619082469157, ; hash 0xf32cc03d27a5bf25, from name: GoogleGson
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.183_name, ; name: libaot-GoogleGson.dll.so
		ptr null; void* handle (0x0)
	}, ; 1605
	%struct.DSOCacheEntry {
		i64 17541980841062246666, ; hash 0xf371a2a23039290a, from name: aot-System.Security.SecureString.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.139_name, ; name: libaot-System.Security.SecureString.dll.so
		ptr null; void* handle (0x0)
	}, ; 1606
	%struct.DSOCacheEntry {
		i64 17548352402451517946, ; hash 0xf3884588ed7ed1fa, from name: Xamarin.AndroidX.VectorDrawable.Animated.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.265_name, ; name: libaot-Xamarin.AndroidX.VectorDrawable.Animated.dll.so
		ptr null; void* handle (0x0)
	}, ; 1607
	%struct.DSOCacheEntry {
		i64 17563211817792675624, ; hash 0xf3bd10182a799f28, from name: libaot-System.Threading.Timer.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.157_name, ; name: libaot-System.Threading.Timer.dll.so
		ptr null; void* handle (0x0)
	}, ; 1608
	%struct.DSOCacheEntry {
		i64 17573059346168436748, ; hash 0xf3e00c5e893a580c, from name: libaot-Xamarin.Android.Glide.GifDecoder
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.203_name, ; name: libaot-Xamarin.Android.Glide.GifDecoder.dll.so
		ptr null; void* handle (0x0)
	}, ; 1609
	%struct.DSOCacheEntry {
		i64 17577202782581072989, ; hash 0xf3eec4cd80c0a45d, from name: System.IO.Compression.Native
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.0_name, ; name: libSystem.IO.Compression.Native.so
		ptr null; void* handle (0x0)
	}, ; 1610
	%struct.DSOCacheEntry {
		i64 17590473451926037903, ; hash 0xf41dea67fcfda58f, from name: Xamarin.Android.Glide
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.200_name, ; name: libaot-Xamarin.Android.Glide.dll.so
		ptr null; void* handle (0x0)
	}, ; 1611
	%struct.DSOCacheEntry {
		i64 17621652644066257425, ; hash 0xf48cafb75ce46a11, from name: libaot-System.Threading
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.158_name, ; name: libaot-System.Threading.dll.so
		ptr null; void* handle (0x0)
	}, ; 1612
	%struct.DSOCacheEntry {
		i64 17623318455445168472, ; hash 0xf4929ac34c652158, from name: libaot-System.Linq.Expressions
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.68_name, ; name: libaot-System.Linq.Expressions.dll.so
		ptr null; void* handle (0x0)
	}, ; 1613
	%struct.DSOCacheEntry {
		i64 17627500474728259406, ; hash 0xf4a176498a351f4e, from name: System.Globalization
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.52_name, ; name: libaot-System.Globalization.dll.so
		ptr null; void* handle (0x0)
	}, ; 1614
	%struct.DSOCacheEntry {
		i64 17634962315631480230, ; hash 0xf4bbf8cac29d4da6, from name: aot-System.Drawing.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.46_name, ; name: libaot-System.Drawing.dll.so
		ptr null; void* handle (0x0)
	}, ; 1615
	%struct.DSOCacheEntry {
		i64 17635730081727385264, ; hash 0xf4beb3123c080eb0, from name: libaot-Xamarin.AndroidX.Browser
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.213_name, ; name: libaot-Xamarin.AndroidX.Browser.dll.so
		ptr null; void* handle (0x0)
	}, ; 1616
	%struct.DSOCacheEntry {
		i64 17636319517716736540, ; hash 0xf4c0cb28fecb6a1c, from name: libaot-System.Reflection.Emit
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.102_name, ; name: libaot-System.Reflection.Emit.dll.so
		ptr null; void* handle (0x0)
	}, ; 1617
	%struct.DSOCacheEntry {
		i64 17669149574319189607, ; hash 0xf5356dec348a2e67, from name: aot-System.Diagnostics.TextWriterTraceListener
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.41_name, ; name: libaot-System.Diagnostics.TextWriterTraceListener.dll.so
		ptr null; void* handle (0x0)
	}, ; 1618
	%struct.DSOCacheEntry {
		i64 17678238194885447556, ; hash 0xf555b7f994e3cf84, from name: aot-System.Diagnostics.TraceSource.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.43_name, ; name: libaot-System.Diagnostics.TraceSource.dll.so
		ptr null; void* handle (0x0)
	}, ; 1619
	%struct.DSOCacheEntry {
		i64 17691887770387798242, ; hash 0xf5863631080ad8e2, from name: libaot-System.Web.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.163_name, ; name: libaot-System.Web.dll.so
		ptr null; void* handle (0x0)
	}, ; 1620
	%struct.DSOCacheEntry {
		i64 17694752640166504414, ; hash 0xf59063c68187a7de, from name: libaot-System.Net.ServicePoint
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.84_name, ; name: libaot-System.Net.ServicePoint.dll.so
		ptr null; void* handle (0x0)
	}, ; 1621
	%struct.DSOCacheEntry {
		i64 17697713838279961757, ; hash 0xf59ae8f82b312c9d, from name: aot-Microsoft.VisualBasic.Core.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.12_name, ; name: libaot-Microsoft.VisualBasic.Core.dll.so
		ptr null; void* handle (0x0)
	}, ; 1622
	%struct.DSOCacheEntry {
		i64 17700327150769387356, ; hash 0xf5a431c365cfb75c, from name: System.Numerics.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.93_name, ; name: libaot-System.Numerics.dll.so
		ptr null; void* handle (0x0)
	}, ; 1623
	%struct.DSOCacheEntry {
		i64 17704177640604968747, ; hash 0xf5b1dfc36cac272b, from name: Xamarin.AndroidX.Loader
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.246_name, ; name: libaot-Xamarin.AndroidX.Loader.dll.so
		ptr null; void* handle (0x0)
	}, ; 1624
	%struct.DSOCacheEntry {
		i64 17710060891934109755, ; hash 0xf5c6c68c9e45303b, from name: Xamarin.AndroidX.Lifecycle.ViewModel
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.243_name, ; name: libaot-Xamarin.AndroidX.Lifecycle.ViewModel.dll.so
		ptr null; void* handle (0x0)
	}, ; 1625
	%struct.DSOCacheEntry {
		i64 17725651416025760223, ; hash 0xf5fe2a0c609d81df, from name: aot-System.Reflection.Primitives
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.105_name, ; name: libaot-System.Reflection.Primitives.dll.so
		ptr null; void* handle (0x0)
	}, ; 1626
	%struct.DSOCacheEntry {
		i64 17729255244101106781, ; hash 0xf60af7b5fce0bc5d, from name: aot-System.Net.WebHeaderCollection
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.87_name, ; name: libaot-System.Net.WebHeaderCollection.dll.so
		ptr null; void* handle (0x0)
	}, ; 1627
	%struct.DSOCacheEntry {
		i64 17743242089888636773, ; hash 0xf63ca8ac4b925f65, from name: aot-Xamarin.KotlinX.Coroutines.Core.Jvm.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.282_name, ; name: libaot-Xamarin.KotlinX.Coroutines.Core.Jvm.dll.so
		ptr null; void* handle (0x0)
	}, ; 1628
	%struct.DSOCacheEntry {
		i64 17748461991371644533, ; hash 0xf64f3425513a9e75, from name: libaot-System.Security.Cryptography.OpenSsl
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.133_name, ; name: libaot-System.Security.Cryptography.OpenSsl.dll.so
		ptr null; void* handle (0x0)
	}, ; 1629
	%struct.DSOCacheEntry {
		i64 17775101500844812175, ; hash 0xf6add8a3745e278f, from name: aot-System.Net.WebSockets.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.90_name, ; name: libaot-System.Net.WebSockets.dll.so
		ptr null; void* handle (0x0)
	}, ; 1630
	%struct.DSOCacheEntry {
		i64 17798155118191535816, ; hash 0xf6ffbfc8051b66c8, from name: Java.Interop.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.178_name, ; name: libaot-Java.Interop.dll.so
		ptr null; void* handle (0x0)
	}, ; 1631
	%struct.DSOCacheEntry {
		i64 17891337867145587222, ; hash 0xf84accff6fb52a16, from name: Xamarin.Jetbrains.Annotations
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.276_name, ; name: libaot-Xamarin.Jetbrains.Annotations.dll.so
		ptr null; void* handle (0x0)
	}, ; 1632
	%struct.DSOCacheEntry {
		i64 17902061051722335752, ; hash 0xf870e5ad67440608, from name: aot-System.Net.WebHeaderCollection.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.87_name, ; name: libaot-System.Net.WebHeaderCollection.dll.so
		ptr null; void* handle (0x0)
	}, ; 1633
	%struct.DSOCacheEntry {
		i64 17915411889064881019, ; hash 0xf8a054317485ab7b, from name: aot-System.IO.UnmanagedMemoryStream.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.66_name, ; name: libaot-System.IO.UnmanagedMemoryStream.dll.so
		ptr null; void* handle (0x0)
	}, ; 1634
	%struct.DSOCacheEntry {
		i64 17926963475082191739, ; hash 0xf8c95e4ca9ad237b, from name: System.Transactions.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.160_name, ; name: libaot-System.Transactions.dll.so
		ptr null; void* handle (0x0)
	}, ; 1635
	%struct.DSOCacheEntry {
		i64 17927396739616034639, ; hash 0xf8cae859ec4f4f4f, from name: libaot-System.Xml.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.173_name, ; name: libaot-System.Xml.dll.so
		ptr null; void* handle (0x0)
	}, ; 1636
	%struct.DSOCacheEntry {
		i64 17935548854918285502, ; hash 0xf8e7dea82d1188be, from name: aot-GoogleGson.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.183_name, ; name: libaot-GoogleGson.dll.so
		ptr null; void* handle (0x0)
	}, ; 1637
	%struct.DSOCacheEntry {
		i64 17935984482491575587, ; hash 0xf8e96adb9fd42d23, from name: aot-System.Threading.Thread
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.155_name, ; name: libaot-System.Threading.Thread.dll.so
		ptr null; void* handle (0x0)
	}, ; 1638
	%struct.DSOCacheEntry {
		i64 17936373173282875089, ; hash 0xf8eacc5ec05f26d1, from name: libaot-System.Runtime.Numerics.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.120_name, ; name: libaot-System.Runtime.Numerics.dll.so
		ptr null; void* handle (0x0)
	}, ; 1639
	%struct.DSOCacheEntry {
		i64 17966837238658391933, ; hash 0xf9570746b37e5f7d, from name: libaot-System.Collections.NonGeneric
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.20_name, ; name: libaot-System.Collections.NonGeneric.dll.so
		ptr null; void* handle (0x0)
	}, ; 1640
	%struct.DSOCacheEntry {
		i64 17993787845989681834, ; hash 0xf9b6c6b5f3f4caaa, from name: Microsoft.Extensions.Logging.Debug.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.190_name, ; name: libaot-Microsoft.Extensions.Logging.Debug.dll.so
		ptr null; void* handle (0x0)
	}, ; 1641
	%struct.DSOCacheEntry {
		i64 18001227312549183156, ; hash 0xf9d134ddbd8dbeb4, from name: mono-component-hot_reload.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.4_name, ; name: libmono-component-hot_reload.so
		ptr null; void* handle (0x0)
	}, ; 1642
	%struct.DSOCacheEntry {
		i64 18021339913848223653, ; hash 0xfa18a92ba57df7a5, from name: aot-Xamarin.AndroidX.VectorDrawable.Animated.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.265_name, ; name: libaot-Xamarin.AndroidX.VectorDrawable.Animated.dll.so
		ptr null; void* handle (0x0)
	}, ; 1643
	%struct.DSOCacheEntry {
		i64 18025913125965088385, ; hash 0xfa28e87b91334681, from name: System.Threading
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.158_name, ; name: libaot-System.Threading.dll.so
		ptr null; void* handle (0x0)
	}, ; 1644
	%struct.DSOCacheEntry {
		i64 18035209221645796007, ; hash 0xfa49ef3b820c02a7, from name: System.Security.Cryptography.X509Certificates.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.135_name, ; name: libaot-System.Security.Cryptography.X509Certificates.dll.so
		ptr null; void* handle (0x0)
	}, ; 1645
	%struct.DSOCacheEntry {
		i64 18037761627775429063, ; hash 0xfa5300a1deb9e9c7, from name: libmono-component-debugger.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.3_name, ; name: libmono-component-debugger.so
		ptr null; void* handle (0x0)
	}, ; 1646
	%struct.DSOCacheEntry {
		i64 18037857352300800674, ; hash 0xfa5357b1790eaaa2, from name: libaot-System.IO.UnmanagedMemoryStream
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.66_name, ; name: libaot-System.IO.UnmanagedMemoryStream.dll.so
		ptr null; void* handle (0x0)
	}, ; 1647
	%struct.DSOCacheEntry {
		i64 18040554133168495475, ; hash 0xfa5cec66b2b69b73, from name: libaot-Microsoft.Extensions.DependencyInjection.Abstractions
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.187_name, ; name: libaot-Microsoft.Extensions.DependencyInjection.Abstractions.dll.so
		ptr null; void* handle (0x0)
	}, ; 1648
	%struct.DSOCacheEntry {
		i64 18042235568190301429, ; hash 0xfa62e5a84be6a4f5, from name: System.Threading.ThreadPool.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.156_name, ; name: libaot-System.Threading.ThreadPool.dll.so
		ptr null; void* handle (0x0)
	}, ; 1649
	%struct.DSOCacheEntry {
		i64 18047428238759735039, ; hash 0xfa75585d20a0aeff, from name: libaot-Microsoft.Extensions.Logging.Abstractions
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.189_name, ; name: libaot-Microsoft.Extensions.Logging.Abstractions.dll.so
		ptr null; void* handle (0x0)
	}, ; 1650
	%struct.DSOCacheEntry {
		i64 18051112112354944973, ; hash 0xfa826ed3c9aae7cd, from name: aot-System.Resources.ResourceManager.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.109_name, ; name: libaot-System.Resources.ResourceManager.dll.so
		ptr null; void* handle (0x0)
	}, ; 1651
	%struct.DSOCacheEntry {
		i64 18057033459698909374, ; hash 0xfa977842e6b240be, from name: libaot-System.Web.HttpUtility
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.162_name, ; name: libaot-System.Web.HttpUtility.dll.so
		ptr null; void* handle (0x0)
	}, ; 1652
	%struct.DSOCacheEntry {
		i64 18058169257040316115, ; hash 0xfa9b814353c486d3, from name: System.Threading.Timer.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.157_name, ; name: libaot-System.Threading.Timer.dll.so
		ptr null; void* handle (0x0)
	}, ; 1653
	%struct.DSOCacheEntry {
		i64 18066658939550349411, ; hash 0xfab9aa959208b863, from name: libaot-Microsoft.Extensions.Primitives.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.192_name, ; name: libaot-Microsoft.Extensions.Primitives.dll.so
		ptr null; void* handle (0x0)
	}, ; 1654
	%struct.DSOCacheEntry {
		i64 18078848640603812512, ; hash 0xfae4f90d833e72a0, from name: Microsoft.Maui.Controls.Compatibility.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.193_name, ; name: libaot-Microsoft.Maui.Controls.Compatibility.dll.so
		ptr null; void* handle (0x0)
	}, ; 1655
	%struct.DSOCacheEntry {
		i64 18086360900563295465, ; hash 0xfaffa969d596dce9, from name: aot-System.ObjectModel
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.94_name, ; name: libaot-System.ObjectModel.dll.so
		ptr null; void* handle (0x0)
	}, ; 1656
	%struct.DSOCacheEntry {
		i64 18116111925905154859, ; hash 0xfb695bd036cb632b, from name: Xamarin.AndroidX.Arch.Core.Runtime
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.212_name, ; name: libaot-Xamarin.AndroidX.Arch.Core.Runtime.dll.so
		ptr null; void* handle (0x0)
	}, ; 1657
	%struct.DSOCacheEntry {
		i64 18117210645352064746, ; hash 0xfb6d4317c522a6ea, from name: System.Net.Quic.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.81_name, ; name: libaot-System.Net.Quic.dll.so
		ptr null; void* handle (0x0)
	}, ; 1658
	%struct.DSOCacheEntry {
		i64 18121036031235206392, ; hash 0xfb7ada42d3d42cf8, from name: Xamarin.AndroidX.Navigation.Common
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.248_name, ; name: libaot-Xamarin.AndroidX.Navigation.Common.dll.so
		ptr null; void* handle (0x0)
	}, ; 1659
	%struct.DSOCacheEntry {
		i64 18122114450755693480, ; hash 0xfb7eaf13f0442ba8, from name: libaot-System.Buffers
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.17_name, ; name: libaot-System.Buffers.dll.so
		ptr null; void* handle (0x0)
	}, ; 1660
	%struct.DSOCacheEntry {
		i64 18126112496637133315, ; hash 0xfb8ce34788d34203, from name: libaot-System.Globalization.Extensions.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.51_name, ; name: libaot-System.Globalization.Extensions.dll.so
		ptr null; void* handle (0x0)
	}, ; 1661
	%struct.DSOCacheEntry {
		i64 18145848498878603418, ; hash 0xfbd30111a3b6e09a, from name: libSystem.IO.Compression.Native
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.0_name, ; name: libSystem.IO.Compression.Native.so
		ptr null; void* handle (0x0)
	}, ; 1662
	%struct.DSOCacheEntry {
		i64 18226465753896977720, ; hash 0xfcf16a0903da0538, from name: libaot-System.Private.Uri
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.96_name, ; name: libaot-System.Private.Uri.dll.so
		ptr null; void* handle (0x0)
	}, ; 1663
	%struct.DSOCacheEntry {
		i64 18226761139391251902, ; hash 0xfcf276afcf4f45be, from name: libaot-System.Diagnostics.FileVersionInfo.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.38_name, ; name: libaot-System.Diagnostics.FileVersionInfo.dll.so
		ptr null; void* handle (0x0)
	}, ; 1664
	%struct.DSOCacheEntry {
		i64 18252036729645089111, ; hash 0xfd4c42b3c1e0c157, from name: libaot-Xamarin.AndroidX.CustomView.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.224_name, ; name: libaot-Xamarin.AndroidX.CustomView.dll.so
		ptr null; void* handle (0x0)
	}, ; 1665
	%struct.DSOCacheEntry {
		i64 18253685954460439423, ; hash 0xfd521ea9d526d37f, from name: aot-Xamarin.AndroidX.CardView
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.214_name, ; name: libaot-Xamarin.AndroidX.CardView.dll.so
		ptr null; void* handle (0x0)
	}, ; 1666
	%struct.DSOCacheEntry {
		i64 18257096356770733190, ; hash 0xfd5e3c67ff65dc86, from name: libSystem.Security.Cryptography.Native.Android.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.2_name, ; name: libSystem.Security.Cryptography.Native.Android.so
		ptr null; void* handle (0x0)
	}, ; 1667
	%struct.DSOCacheEntry {
		i64 18260797123374478311, ; hash 0xfd6b623bde35f3e7, from name: Xamarin.AndroidX.Emoji2
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.229_name, ; name: libaot-Xamarin.AndroidX.Emoji2.dll.so
		ptr null; void* handle (0x0)
	}, ; 1668
	%struct.DSOCacheEntry {
		i64 18278807071731653235, ; hash 0xfdab5e2fbc769a73, from name: aot-Xamarin.AndroidX.Navigation.Runtime.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.250_name, ; name: libaot-Xamarin.AndroidX.Navigation.Runtime.dll.so
		ptr null; void* handle (0x0)
	}, ; 1669
	%struct.DSOCacheEntry {
		i64 18292328407895211277, ; hash 0xfddb67c523617d0d, from name: aot-System.IO.Compression.Brotli.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.53_name, ; name: libaot-System.IO.Compression.Brotli.dll.so
		ptr null; void* handle (0x0)
	}, ; 1670
	%struct.DSOCacheEntry {
		i64 18301561429120935168, ; hash 0xfdfc352769be6500, from name: libaot-System.Security.Cryptography.Cng
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.130_name, ; name: libaot-System.Security.Cryptography.Cng.dll.so
		ptr null; void* handle (0x0)
	}, ; 1671
	%struct.DSOCacheEntry {
		i64 18308205053123311821, ; hash 0xfe13cf7eaa6d38cd, from name: aot-System.Resources.Writer.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.110_name, ; name: libaot-System.Resources.Writer.dll.so
		ptr null; void* handle (0x0)
	}, ; 1672
	%struct.DSOCacheEntry {
		i64 18309516218928916979, ; hash 0xfe1877fe3e82e9f3, from name: libaot-System.Security.Cryptography.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.136_name, ; name: libaot-System.Security.Cryptography.dll.so
		ptr null; void* handle (0x0)
	}, ; 1673
	%struct.DSOCacheEntry {
		i64 18318874270327655277, ; hash 0xfe39b7175fec4b6d, from name: aot-System.ServiceModel.Web.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.141_name, ; name: libaot-System.ServiceModel.Web.dll.so
		ptr null; void* handle (0x0)
	}, ; 1674
	%struct.DSOCacheEntry {
		i64 18327710550568384473, ; hash 0xfe591ba430ceb7d9, from name: libaot-Java.Interop
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.178_name, ; name: libaot-Java.Interop.dll.so
		ptr null; void* handle (0x0)
	}, ; 1675
	%struct.DSOCacheEntry {
		i64 18347920244245135731, ; hash 0xfea0e8402d6e0173, from name: aot-System.Runtime.InteropServices.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.117_name, ; name: libaot-System.Runtime.InteropServices.dll.so
		ptr null; void* handle (0x0)
	}, ; 1676
	%struct.DSOCacheEntry {
		i64 18350561708207496498, ; hash 0xfeaa4aa5ee97dd32, from name: System.Diagnostics.Debug.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.36_name, ; name: libaot-System.Diagnostics.Debug.dll.so
		ptr null; void* handle (0x0)
	}, ; 1677
	%struct.DSOCacheEntry {
		i64 18377348929170574574, ; hash 0xff09757bd49e0cee, from name: aot-System.Private.Xml.Linq
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.97_name, ; name: libaot-System.Private.Xml.Linq.dll.so
		ptr null; void* handle (0x0)
	}, ; 1678
	%struct.DSOCacheEntry {
		i64 18380184030268848184, ; hash 0xff1387fe3e7b7838, from name: Xamarin.AndroidX.VersionedParcelable
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.266_name, ; name: libaot-Xamarin.AndroidX.VersionedParcelable.dll.so
		ptr null; void* handle (0x0)
	}, ; 1679
	%struct.DSOCacheEntry {
		i64 18392909735390180380, ; hash 0xff40bdf45bc1741c, from name: libaot-Xamarin.AndroidX.ProfileInstaller.ProfileInstaller.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.253_name, ; name: libaot-Xamarin.AndroidX.ProfileInstaller.ProfileInstaller.dll.so
		ptr null; void* handle (0x0)
	}, ; 1680
	%struct.DSOCacheEntry {
		i64 18400295460575378824, ; hash 0xff5afb3b81d3fd88, from name: aot-Microsoft.Extensions.DependencyInjection.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.186_name, ; name: libaot-Microsoft.Extensions.DependencyInjection.dll.so
		ptr null; void* handle (0x0)
	}, ; 1681
	%struct.DSOCacheEntry {
		i64 18403914681519534522, ; hash 0xff67d6e50c9171ba, from name: aot-System.Net.Ping.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.79_name, ; name: libaot-System.Net.Ping.dll.so
		ptr null; void* handle (0x0)
	}, ; 1682
	%struct.DSOCacheEntry {
		i64 18408069632533367139, ; hash 0xff7699ccf7ce8963, from name: aot-Xamarin.AndroidX.Activity.Ktx.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.205_name, ; name: libaot-Xamarin.AndroidX.Activity.Ktx.dll.so
		ptr null; void* handle (0x0)
	}, ; 1683
	%struct.DSOCacheEntry {
		i64 18429503703191461742, ; hash 0xffc2bff96f791f6e, from name: aot-System.Threading.Tasks.Extensions.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.152_name, ; name: libaot-System.Threading.Tasks.Extensions.dll.so
		ptr null; void* handle (0x0)
	}, ; 1684
	%struct.DSOCacheEntry {
		i64 18441817052021859583, ; hash 0xffee7ee65e8124ff, from name: Microsoft.Extensions.DependencyInjection.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.186_name, ; name: libaot-Microsoft.Extensions.DependencyInjection.dll.so
		ptr null; void* handle (0x0)
	} ; 1685
], align 16

@_XamarinAndroidBundledAssembly_name_0_0 = internal dso_local global [65 x i8] zeroinitializer, align 16
@_XamarinAndroidBundledAssembly_name_1_1 = internal dso_local global [65 x i8] zeroinitializer, align 16
@_XamarinAndroidBundledAssembly_name_2_2 = internal dso_local global [65 x i8] zeroinitializer, align 16
@_XamarinAndroidBundledAssembly_name_3_3 = internal dso_local global [65 x i8] zeroinitializer, align 16
@_XamarinAndroidBundledAssembly_name_4_4 = internal dso_local global [65 x i8] zeroinitializer, align 16
@_XamarinAndroidBundledAssembly_name_5_5 = internal dso_local global [65 x i8] zeroinitializer, align 16
@_XamarinAndroidBundledAssembly_name_6_6 = internal dso_local global [65 x i8] zeroinitializer, align 16
@_XamarinAndroidBundledAssembly_name_7_7 = internal dso_local global [65 x i8] zeroinitializer, align 16
@_XamarinAndroidBundledAssembly_name_8_8 = internal dso_local global [65 x i8] zeroinitializer, align 16
@_XamarinAndroidBundledAssembly_name_9_9 = internal dso_local global [65 x i8] zeroinitializer, align 16
@_XamarinAndroidBundledAssembly_name_a_a = internal dso_local global [65 x i8] zeroinitializer, align 16
@_XamarinAndroidBundledAssembly_name_b_b = internal dso_local global [65 x i8] zeroinitializer, align 16
@_XamarinAndroidBundledAssembly_name_c_c = internal dso_local global [65 x i8] zeroinitializer, align 16
@_XamarinAndroidBundledAssembly_name_d_d = internal dso_local global [65 x i8] zeroinitializer, align 16
@_XamarinAndroidBundledAssembly_name_e_e = internal dso_local global [65 x i8] zeroinitializer, align 16
@_XamarinAndroidBundledAssembly_name_f_f = internal dso_local global [65 x i8] zeroinitializer, align 16
@_XamarinAndroidBundledAssembly_name_10_10 = internal dso_local global [65 x i8] zeroinitializer, align 16
@_XamarinAndroidBundledAssembly_name_11_11 = internal dso_local global [65 x i8] zeroinitializer, align 16
@_XamarinAndroidBundledAssembly_name_12_12 = internal dso_local global [65 x i8] zeroinitializer, align 16
@_XamarinAndroidBundledAssembly_name_13_13 = internal dso_local global [65 x i8] zeroinitializer, align 16
@_XamarinAndroidBundledAssembly_name_14_14 = internal dso_local global [65 x i8] zeroinitializer, align 16
@_XamarinAndroidBundledAssembly_name_15_15 = internal dso_local global [65 x i8] zeroinitializer, align 16
@_XamarinAndroidBundledAssembly_name_16_16 = internal dso_local global [65 x i8] zeroinitializer, align 16
@_XamarinAndroidBundledAssembly_name_17_17 = internal dso_local global [65 x i8] zeroinitializer, align 16
@_XamarinAndroidBundledAssembly_name_18_18 = internal dso_local global [65 x i8] zeroinitializer, align 16
@_XamarinAndroidBundledAssembly_name_19_19 = internal dso_local global [65 x i8] zeroinitializer, align 16
@_XamarinAndroidBundledAssembly_name_1a_1a = internal dso_local global [65 x i8] zeroinitializer, align 16
@_XamarinAndroidBundledAssembly_name_1b_1b = internal dso_local global [65 x i8] zeroinitializer, align 16
@_XamarinAndroidBundledAssembly_name_1c_1c = internal dso_local global [65 x i8] zeroinitializer, align 16
@_XamarinAndroidBundledAssembly_name_1d_1d = internal dso_local global [65 x i8] zeroinitializer, align 16
@_XamarinAndroidBundledAssembly_name_1e_1e = internal dso_local global [65 x i8] zeroinitializer, align 16
@_XamarinAndroidBundledAssembly_name_1f_1f = internal dso_local global [65 x i8] zeroinitializer, align 16
@_XamarinAndroidBundledAssembly_name_20_20 = internal dso_local global [65 x i8] zeroinitializer, align 16
@_XamarinAndroidBundledAssembly_name_21_21 = internal dso_local global [65 x i8] zeroinitializer, align 16
@_XamarinAndroidBundledAssembly_name_22_22 = internal dso_local global [65 x i8] zeroinitializer, align 16
@_XamarinAndroidBundledAssembly_name_23_23 = internal dso_local global [65 x i8] zeroinitializer, align 16
@_XamarinAndroidBundledAssembly_name_24_24 = internal dso_local global [65 x i8] zeroinitializer, align 16
@_XamarinAndroidBundledAssembly_name_25_25 = internal dso_local global [65 x i8] zeroinitializer, align 16
@_XamarinAndroidBundledAssembly_name_26_26 = internal dso_local global [65 x i8] zeroinitializer, align 16
@_XamarinAndroidBundledAssembly_name_27_27 = internal dso_local global [65 x i8] zeroinitializer, align 16
@_XamarinAndroidBundledAssembly_name_28_28 = internal dso_local global [65 x i8] zeroinitializer, align 16
@_XamarinAndroidBundledAssembly_name_29_29 = internal dso_local global [65 x i8] zeroinitializer, align 16
@_XamarinAndroidBundledAssembly_name_2a_2a = internal dso_local global [65 x i8] zeroinitializer, align 16
@_XamarinAndroidBundledAssembly_name_2b_2b = internal dso_local global [65 x i8] zeroinitializer, align 16
@_XamarinAndroidBundledAssembly_name_2c_2c = internal dso_local global [65 x i8] zeroinitializer, align 16
@_XamarinAndroidBundledAssembly_name_2d_2d = internal dso_local global [65 x i8] zeroinitializer, align 16
@_XamarinAndroidBundledAssembly_name_2e_2e = internal dso_local global [65 x i8] zeroinitializer, align 16
@_XamarinAndroidBundledAssembly_name_2f_2f = internal dso_local global [65 x i8] zeroinitializer, align 16
@_XamarinAndroidBundledAssembly_name_30_30 = internal dso_local global [65 x i8] zeroinitializer, align 16
@_XamarinAndroidBundledAssembly_name_31_31 = internal dso_local global [65 x i8] zeroinitializer, align 16
@_XamarinAndroidBundledAssembly_name_32_32 = internal dso_local global [65 x i8] zeroinitializer, align 16
@_XamarinAndroidBundledAssembly_name_33_33 = internal dso_local global [65 x i8] zeroinitializer, align 16
@_XamarinAndroidBundledAssembly_name_34_34 = internal dso_local global [65 x i8] zeroinitializer, align 16
@_XamarinAndroidBundledAssembly_name_35_35 = internal dso_local global [65 x i8] zeroinitializer, align 16
@_XamarinAndroidBundledAssembly_name_36_36 = internal dso_local global [65 x i8] zeroinitializer, align 16
@_XamarinAndroidBundledAssembly_name_37_37 = internal dso_local global [65 x i8] zeroinitializer, align 16
@_XamarinAndroidBundledAssembly_name_38_38 = internal dso_local global [65 x i8] zeroinitializer, align 16
@_XamarinAndroidBundledAssembly_name_39_39 = internal dso_local global [65 x i8] zeroinitializer, align 16
@_XamarinAndroidBundledAssembly_name_3a_3a = internal dso_local global [65 x i8] zeroinitializer, align 16
@_XamarinAndroidBundledAssembly_name_3b_3b = internal dso_local global [65 x i8] zeroinitializer, align 16
@_XamarinAndroidBundledAssembly_name_3c_3c = internal dso_local global [65 x i8] zeroinitializer, align 16
@_XamarinAndroidBundledAssembly_name_3d_3d = internal dso_local global [65 x i8] zeroinitializer, align 16
@_XamarinAndroidBundledAssembly_name_3e_3e = internal dso_local global [65 x i8] zeroinitializer, align 16
@_XamarinAndroidBundledAssembly_name_3f_3f = internal dso_local global [65 x i8] zeroinitializer, align 16
@_XamarinAndroidBundledAssembly_name_40_40 = internal dso_local global [65 x i8] zeroinitializer, align 16
@_XamarinAndroidBundledAssembly_name_41_41 = internal dso_local global [65 x i8] zeroinitializer, align 16
@_XamarinAndroidBundledAssembly_name_42_42 = internal dso_local global [65 x i8] zeroinitializer, align 16
@_XamarinAndroidBundledAssembly_name_43_43 = internal dso_local global [65 x i8] zeroinitializer, align 16
@_XamarinAndroidBundledAssembly_name_44_44 = internal dso_local global [65 x i8] zeroinitializer, align 16
@_XamarinAndroidBundledAssembly_name_45_45 = internal dso_local global [65 x i8] zeroinitializer, align 16
@_XamarinAndroidBundledAssembly_name_46_46 = internal dso_local global [65 x i8] zeroinitializer, align 16
@_XamarinAndroidBundledAssembly_name_47_47 = internal dso_local global [65 x i8] zeroinitializer, align 16
@_XamarinAndroidBundledAssembly_name_48_48 = internal dso_local global [65 x i8] zeroinitializer, align 16
@_XamarinAndroidBundledAssembly_name_49_49 = internal dso_local global [65 x i8] zeroinitializer, align 16
@_XamarinAndroidBundledAssembly_name_4a_4a = internal dso_local global [65 x i8] zeroinitializer, align 16
@_XamarinAndroidBundledAssembly_name_4b_4b = internal dso_local global [65 x i8] zeroinitializer, align 16
@_XamarinAndroidBundledAssembly_name_4c_4c = internal dso_local global [65 x i8] zeroinitializer, align 16
@_XamarinAndroidBundledAssembly_name_4d_4d = internal dso_local global [65 x i8] zeroinitializer, align 16
@_XamarinAndroidBundledAssembly_name_4e_4e = internal dso_local global [65 x i8] zeroinitializer, align 16
@_XamarinAndroidBundledAssembly_name_4f_4f = internal dso_local global [65 x i8] zeroinitializer, align 16
@_XamarinAndroidBundledAssembly_name_50_50 = internal dso_local global [65 x i8] zeroinitializer, align 16
@_XamarinAndroidBundledAssembly_name_51_51 = internal dso_local global [65 x i8] zeroinitializer, align 16
@_XamarinAndroidBundledAssembly_name_52_52 = internal dso_local global [65 x i8] zeroinitializer, align 16
@_XamarinAndroidBundledAssembly_name_53_53 = internal dso_local global [65 x i8] zeroinitializer, align 16
@_XamarinAndroidBundledAssembly_name_54_54 = internal dso_local global [65 x i8] zeroinitializer, align 16
@_XamarinAndroidBundledAssembly_name_55_55 = internal dso_local global [65 x i8] zeroinitializer, align 16
@_XamarinAndroidBundledAssembly_name_56_56 = internal dso_local global [65 x i8] zeroinitializer, align 16
@_XamarinAndroidBundledAssembly_name_57_57 = internal dso_local global [65 x i8] zeroinitializer, align 16
@_XamarinAndroidBundledAssembly_name_58_58 = internal dso_local global [65 x i8] zeroinitializer, align 16
@_XamarinAndroidBundledAssembly_name_59_59 = internal dso_local global [65 x i8] zeroinitializer, align 16
@_XamarinAndroidBundledAssembly_name_5a_5a = internal dso_local global [65 x i8] zeroinitializer, align 16
@_XamarinAndroidBundledAssembly_name_5b_5b = internal dso_local global [65 x i8] zeroinitializer, align 16
@_XamarinAndroidBundledAssembly_name_5c_5c = internal dso_local global [65 x i8] zeroinitializer, align 16
@_XamarinAndroidBundledAssembly_name_5d_5d = internal dso_local global [65 x i8] zeroinitializer, align 16
@_XamarinAndroidBundledAssembly_name_5e_5e = internal dso_local global [65 x i8] zeroinitializer, align 16
@_XamarinAndroidBundledAssembly_name_5f_5f = internal dso_local global [65 x i8] zeroinitializer, align 16
@_XamarinAndroidBundledAssembly_name_60_60 = internal dso_local global [65 x i8] zeroinitializer, align 16
@_XamarinAndroidBundledAssembly_name_61_61 = internal dso_local global [65 x i8] zeroinitializer, align 16
@_XamarinAndroidBundledAssembly_name_62_62 = internal dso_local global [65 x i8] zeroinitializer, align 16
@_XamarinAndroidBundledAssembly_name_63_63 = internal dso_local global [65 x i8] zeroinitializer, align 16
@_XamarinAndroidBundledAssembly_name_64_64 = internal dso_local global [65 x i8] zeroinitializer, align 16
@_XamarinAndroidBundledAssembly_name_65_65 = internal dso_local global [65 x i8] zeroinitializer, align 16
@_XamarinAndroidBundledAssembly_name_66_66 = internal dso_local global [65 x i8] zeroinitializer, align 16
@_XamarinAndroidBundledAssembly_name_67_67 = internal dso_local global [65 x i8] zeroinitializer, align 16
@_XamarinAndroidBundledAssembly_name_68_68 = internal dso_local global [65 x i8] zeroinitializer, align 16
@_XamarinAndroidBundledAssembly_name_69_69 = internal dso_local global [65 x i8] zeroinitializer, align 16
@_XamarinAndroidBundledAssembly_name_6a_6a = internal dso_local global [65 x i8] zeroinitializer, align 16
@_XamarinAndroidBundledAssembly_name_6b_6b = internal dso_local global [65 x i8] zeroinitializer, align 16
@_XamarinAndroidBundledAssembly_name_6c_6c = internal dso_local global [65 x i8] zeroinitializer, align 16
@_XamarinAndroidBundledAssembly_name_6d_6d = internal dso_local global [65 x i8] zeroinitializer, align 16
@_XamarinAndroidBundledAssembly_name_6e_6e = internal dso_local global [65 x i8] zeroinitializer, align 16
@_XamarinAndroidBundledAssembly_name_6f_6f = internal dso_local global [65 x i8] zeroinitializer, align 16
@_XamarinAndroidBundledAssembly_name_70_70 = internal dso_local global [65 x i8] zeroinitializer, align 16
@_XamarinAndroidBundledAssembly_name_71_71 = internal dso_local global [65 x i8] zeroinitializer, align 16
@_XamarinAndroidBundledAssembly_name_72_72 = internal dso_local global [65 x i8] zeroinitializer, align 16
@_XamarinAndroidBundledAssembly_name_73_73 = internal dso_local global [65 x i8] zeroinitializer, align 16
@_XamarinAndroidBundledAssembly_name_74_74 = internal dso_local global [65 x i8] zeroinitializer, align 16
@_XamarinAndroidBundledAssembly_name_75_75 = internal dso_local global [65 x i8] zeroinitializer, align 16
@_XamarinAndroidBundledAssembly_name_76_76 = internal dso_local global [65 x i8] zeroinitializer, align 16
@_XamarinAndroidBundledAssembly_name_77_77 = internal dso_local global [65 x i8] zeroinitializer, align 16
@_XamarinAndroidBundledAssembly_name_78_78 = internal dso_local global [65 x i8] zeroinitializer, align 16
@_XamarinAndroidBundledAssembly_name_79_79 = internal dso_local global [65 x i8] zeroinitializer, align 16
@_XamarinAndroidBundledAssembly_name_7a_7a = internal dso_local global [65 x i8] zeroinitializer, align 16
@_XamarinAndroidBundledAssembly_name_7b_7b = internal dso_local global [65 x i8] zeroinitializer, align 16
@_XamarinAndroidBundledAssembly_name_7c_7c = internal dso_local global [65 x i8] zeroinitializer, align 16
@_XamarinAndroidBundledAssembly_name_7d_7d = internal dso_local global [65 x i8] zeroinitializer, align 16
@_XamarinAndroidBundledAssembly_name_7e_7e = internal dso_local global [65 x i8] zeroinitializer, align 16
@_XamarinAndroidBundledAssembly_name_7f_7f = internal dso_local global [65 x i8] zeroinitializer, align 16
@_XamarinAndroidBundledAssembly_name_80_80 = internal dso_local global [65 x i8] zeroinitializer, align 16
@_XamarinAndroidBundledAssembly_name_81_81 = internal dso_local global [65 x i8] zeroinitializer, align 16
@_XamarinAndroidBundledAssembly_name_82_82 = internal dso_local global [65 x i8] zeroinitializer, align 16
@_XamarinAndroidBundledAssembly_name_83_83 = internal dso_local global [65 x i8] zeroinitializer, align 16
@_XamarinAndroidBundledAssembly_name_84_84 = internal dso_local global [65 x i8] zeroinitializer, align 16
@_XamarinAndroidBundledAssembly_name_85_85 = internal dso_local global [65 x i8] zeroinitializer, align 16
@_XamarinAndroidBundledAssembly_name_86_86 = internal dso_local global [65 x i8] zeroinitializer, align 16
@_XamarinAndroidBundledAssembly_name_87_87 = internal dso_local global [65 x i8] zeroinitializer, align 16
@_XamarinAndroidBundledAssembly_name_88_88 = internal dso_local global [65 x i8] zeroinitializer, align 16
@_XamarinAndroidBundledAssembly_name_89_89 = internal dso_local global [65 x i8] zeroinitializer, align 16
@_XamarinAndroidBundledAssembly_name_8a_8a = internal dso_local global [65 x i8] zeroinitializer, align 16
@_XamarinAndroidBundledAssembly_name_8b_8b = internal dso_local global [65 x i8] zeroinitializer, align 16
@_XamarinAndroidBundledAssembly_name_8c_8c = internal dso_local global [65 x i8] zeroinitializer, align 16
@_XamarinAndroidBundledAssembly_name_8d_8d = internal dso_local global [65 x i8] zeroinitializer, align 16
@_XamarinAndroidBundledAssembly_name_8e_8e = internal dso_local global [65 x i8] zeroinitializer, align 16
@_XamarinAndroidBundledAssembly_name_8f_8f = internal dso_local global [65 x i8] zeroinitializer, align 16
@_XamarinAndroidBundledAssembly_name_90_90 = internal dso_local global [65 x i8] zeroinitializer, align 16
@_XamarinAndroidBundledAssembly_name_91_91 = internal dso_local global [65 x i8] zeroinitializer, align 16
@_XamarinAndroidBundledAssembly_name_92_92 = internal dso_local global [65 x i8] zeroinitializer, align 16
@_XamarinAndroidBundledAssembly_name_93_93 = internal dso_local global [65 x i8] zeroinitializer, align 16
@_XamarinAndroidBundledAssembly_name_94_94 = internal dso_local global [65 x i8] zeroinitializer, align 16
@_XamarinAndroidBundledAssembly_name_95_95 = internal dso_local global [65 x i8] zeroinitializer, align 16
@_XamarinAndroidBundledAssembly_name_96_96 = internal dso_local global [65 x i8] zeroinitializer, align 16
@_XamarinAndroidBundledAssembly_name_97_97 = internal dso_local global [65 x i8] zeroinitializer, align 16
@_XamarinAndroidBundledAssembly_name_98_98 = internal dso_local global [65 x i8] zeroinitializer, align 16
@_XamarinAndroidBundledAssembly_name_99_99 = internal dso_local global [65 x i8] zeroinitializer, align 16
@_XamarinAndroidBundledAssembly_name_9a_9a = internal dso_local global [65 x i8] zeroinitializer, align 16
@_XamarinAndroidBundledAssembly_name_9b_9b = internal dso_local global [65 x i8] zeroinitializer, align 16
@_XamarinAndroidBundledAssembly_name_9c_9c = internal dso_local global [65 x i8] zeroinitializer, align 16
@_XamarinAndroidBundledAssembly_name_9d_9d = internal dso_local global [65 x i8] zeroinitializer, align 16
@_XamarinAndroidBundledAssembly_name_9e_9e = internal dso_local global [65 x i8] zeroinitializer, align 16
@_XamarinAndroidBundledAssembly_name_9f_9f = internal dso_local global [65 x i8] zeroinitializer, align 16
@_XamarinAndroidBundledAssembly_name_a0_a0 = internal dso_local global [65 x i8] zeroinitializer, align 16
@_XamarinAndroidBundledAssembly_name_a1_a1 = internal dso_local global [65 x i8] zeroinitializer, align 16
@_XamarinAndroidBundledAssembly_name_a2_a2 = internal dso_local global [65 x i8] zeroinitializer, align 16
@_XamarinAndroidBundledAssembly_name_a3_a3 = internal dso_local global [65 x i8] zeroinitializer, align 16
@_XamarinAndroidBundledAssembly_name_a4_a4 = internal dso_local global [65 x i8] zeroinitializer, align 16
@_XamarinAndroidBundledAssembly_name_a5_a5 = internal dso_local global [65 x i8] zeroinitializer, align 16
@_XamarinAndroidBundledAssembly_name_a6_a6 = internal dso_local global [65 x i8] zeroinitializer, align 16
@_XamarinAndroidBundledAssembly_name_a7_a7 = internal dso_local global [65 x i8] zeroinitializer, align 16
@_XamarinAndroidBundledAssembly_name_a8_a8 = internal dso_local global [65 x i8] zeroinitializer, align 16
@_XamarinAndroidBundledAssembly_name_a9_a9 = internal dso_local global [65 x i8] zeroinitializer, align 16
@_XamarinAndroidBundledAssembly_name_aa_aa = internal dso_local global [65 x i8] zeroinitializer, align 16
@_XamarinAndroidBundledAssembly_name_ab_ab = internal dso_local global [65 x i8] zeroinitializer, align 16
@_XamarinAndroidBundledAssembly_name_ac_ac = internal dso_local global [65 x i8] zeroinitializer, align 16
@_XamarinAndroidBundledAssembly_name_ad_ad = internal dso_local global [65 x i8] zeroinitializer, align 16
@_XamarinAndroidBundledAssembly_name_ae_ae = internal dso_local global [65 x i8] zeroinitializer, align 16
@_XamarinAndroidBundledAssembly_name_af_af = internal dso_local global [65 x i8] zeroinitializer, align 16
@_XamarinAndroidBundledAssembly_name_b0_b0 = internal dso_local global [65 x i8] zeroinitializer, align 16
@_XamarinAndroidBundledAssembly_name_b1_b1 = internal dso_local global [65 x i8] zeroinitializer, align 16
@_XamarinAndroidBundledAssembly_name_b2_b2 = internal dso_local global [65 x i8] zeroinitializer, align 16
@_XamarinAndroidBundledAssembly_name_b3_b3 = internal dso_local global [65 x i8] zeroinitializer, align 16
@_XamarinAndroidBundledAssembly_name_b4_b4 = internal dso_local global [65 x i8] zeroinitializer, align 16
@_XamarinAndroidBundledAssembly_name_b5_b5 = internal dso_local global [65 x i8] zeroinitializer, align 16
@_XamarinAndroidBundledAssembly_name_b6_b6 = internal dso_local global [65 x i8] zeroinitializer, align 16
@_XamarinAndroidBundledAssembly_name_b7_b7 = internal dso_local global [65 x i8] zeroinitializer, align 16
@_XamarinAndroidBundledAssembly_name_b8_b8 = internal dso_local global [65 x i8] zeroinitializer, align 16
@_XamarinAndroidBundledAssembly_name_b9_b9 = internal dso_local global [65 x i8] zeroinitializer, align 16
@_XamarinAndroidBundledAssembly_name_ba_ba = internal dso_local global [65 x i8] zeroinitializer, align 16
@_XamarinAndroidBundledAssembly_name_bb_bb = internal dso_local global [65 x i8] zeroinitializer, align 16
@_XamarinAndroidBundledAssembly_name_bc_bc = internal dso_local global [65 x i8] zeroinitializer, align 16
@_XamarinAndroidBundledAssembly_name_bd_bd = internal dso_local global [65 x i8] zeroinitializer, align 16
@_XamarinAndroidBundledAssembly_name_be_be = internal dso_local global [65 x i8] zeroinitializer, align 16
@_XamarinAndroidBundledAssembly_name_bf_bf = internal dso_local global [65 x i8] zeroinitializer, align 16
@_XamarinAndroidBundledAssembly_name_c0_c0 = internal dso_local global [65 x i8] zeroinitializer, align 16
@_XamarinAndroidBundledAssembly_name_c1_c1 = internal dso_local global [65 x i8] zeroinitializer, align 16
@_XamarinAndroidBundledAssembly_name_c2_c2 = internal dso_local global [65 x i8] zeroinitializer, align 16
@_XamarinAndroidBundledAssembly_name_c3_c3 = internal dso_local global [65 x i8] zeroinitializer, align 16
@_XamarinAndroidBundledAssembly_name_c4_c4 = internal dso_local global [65 x i8] zeroinitializer, align 16
@_XamarinAndroidBundledAssembly_name_c5_c5 = internal dso_local global [65 x i8] zeroinitializer, align 16
@_XamarinAndroidBundledAssembly_name_c6_c6 = internal dso_local global [65 x i8] zeroinitializer, align 16
@_XamarinAndroidBundledAssembly_name_c7_c7 = internal dso_local global [65 x i8] zeroinitializer, align 16
@_XamarinAndroidBundledAssembly_name_c8_c8 = internal dso_local global [65 x i8] zeroinitializer, align 16
@_XamarinAndroidBundledAssembly_name_c9_c9 = internal dso_local global [65 x i8] zeroinitializer, align 16
@_XamarinAndroidBundledAssembly_name_ca_ca = internal dso_local global [65 x i8] zeroinitializer, align 16
@_XamarinAndroidBundledAssembly_name_cb_cb = internal dso_local global [65 x i8] zeroinitializer, align 16
@_XamarinAndroidBundledAssembly_name_cc_cc = internal dso_local global [65 x i8] zeroinitializer, align 16
@_XamarinAndroidBundledAssembly_name_cd_cd = internal dso_local global [65 x i8] zeroinitializer, align 16
@_XamarinAndroidBundledAssembly_name_ce_ce = internal dso_local global [65 x i8] zeroinitializer, align 16
@_XamarinAndroidBundledAssembly_name_cf_cf = internal dso_local global [65 x i8] zeroinitializer, align 16
@_XamarinAndroidBundledAssembly_name_d0_d0 = internal dso_local global [65 x i8] zeroinitializer, align 16
@_XamarinAndroidBundledAssembly_name_d1_d1 = internal dso_local global [65 x i8] zeroinitializer, align 16
@_XamarinAndroidBundledAssembly_name_d2_d2 = internal dso_local global [65 x i8] zeroinitializer, align 16
@_XamarinAndroidBundledAssembly_name_d3_d3 = internal dso_local global [65 x i8] zeroinitializer, align 16
@_XamarinAndroidBundledAssembly_name_d4_d4 = internal dso_local global [65 x i8] zeroinitializer, align 16
@_XamarinAndroidBundledAssembly_name_d5_d5 = internal dso_local global [65 x i8] zeroinitializer, align 16
@_XamarinAndroidBundledAssembly_name_d6_d6 = internal dso_local global [65 x i8] zeroinitializer, align 16
@_XamarinAndroidBundledAssembly_name_d7_d7 = internal dso_local global [65 x i8] zeroinitializer, align 16
@_XamarinAndroidBundledAssembly_name_d8_d8 = internal dso_local global [65 x i8] zeroinitializer, align 16
@_XamarinAndroidBundledAssembly_name_d9_d9 = internal dso_local global [65 x i8] zeroinitializer, align 16
@_XamarinAndroidBundledAssembly_name_da_da = internal dso_local global [65 x i8] zeroinitializer, align 16
@_XamarinAndroidBundledAssembly_name_db_db = internal dso_local global [65 x i8] zeroinitializer, align 16
@_XamarinAndroidBundledAssembly_name_dc_dc = internal dso_local global [65 x i8] zeroinitializer, align 16
@_XamarinAndroidBundledAssembly_name_dd_dd = internal dso_local global [65 x i8] zeroinitializer, align 16
@_XamarinAndroidBundledAssembly_name_de_de = internal dso_local global [65 x i8] zeroinitializer, align 16
@_XamarinAndroidBundledAssembly_name_df_df = internal dso_local global [65 x i8] zeroinitializer, align 16
@_XamarinAndroidBundledAssembly_name_e0_e0 = internal dso_local global [65 x i8] zeroinitializer, align 16
@_XamarinAndroidBundledAssembly_name_e1_e1 = internal dso_local global [65 x i8] zeroinitializer, align 16
@_XamarinAndroidBundledAssembly_name_e2_e2 = internal dso_local global [65 x i8] zeroinitializer, align 16
@_XamarinAndroidBundledAssembly_name_e3_e3 = internal dso_local global [65 x i8] zeroinitializer, align 16
@_XamarinAndroidBundledAssembly_name_e4_e4 = internal dso_local global [65 x i8] zeroinitializer, align 16
@_XamarinAndroidBundledAssembly_name_e5_e5 = internal dso_local global [65 x i8] zeroinitializer, align 16
@_XamarinAndroidBundledAssembly_name_e6_e6 = internal dso_local global [65 x i8] zeroinitializer, align 16
@_XamarinAndroidBundledAssembly_name_e7_e7 = internal dso_local global [65 x i8] zeroinitializer, align 16
@_XamarinAndroidBundledAssembly_name_e8_e8 = internal dso_local global [65 x i8] zeroinitializer, align 16
@_XamarinAndroidBundledAssembly_name_e9_e9 = internal dso_local global [65 x i8] zeroinitializer, align 16
@_XamarinAndroidBundledAssembly_name_ea_ea = internal dso_local global [65 x i8] zeroinitializer, align 16
@_XamarinAndroidBundledAssembly_name_eb_eb = internal dso_local global [65 x i8] zeroinitializer, align 16
@_XamarinAndroidBundledAssembly_name_ec_ec = internal dso_local global [65 x i8] zeroinitializer, align 16
@_XamarinAndroidBundledAssembly_name_ed_ed = internal dso_local global [65 x i8] zeroinitializer, align 16
@_XamarinAndroidBundledAssembly_name_ee_ee = internal dso_local global [65 x i8] zeroinitializer, align 16
@_XamarinAndroidBundledAssembly_name_ef_ef = internal dso_local global [65 x i8] zeroinitializer, align 16
@_XamarinAndroidBundledAssembly_name_f0_f0 = internal dso_local global [65 x i8] zeroinitializer, align 16
@_XamarinAndroidBundledAssembly_name_f1_f1 = internal dso_local global [65 x i8] zeroinitializer, align 16
@_XamarinAndroidBundledAssembly_name_f2_f2 = internal dso_local global [65 x i8] zeroinitializer, align 16
@_XamarinAndroidBundledAssembly_name_f3_f3 = internal dso_local global [65 x i8] zeroinitializer, align 16
@_XamarinAndroidBundledAssembly_name_f4_f4 = internal dso_local global [65 x i8] zeroinitializer, align 16
@_XamarinAndroidBundledAssembly_name_f5_f5 = internal dso_local global [65 x i8] zeroinitializer, align 16
@_XamarinAndroidBundledAssembly_name_f6_f6 = internal dso_local global [65 x i8] zeroinitializer, align 16
@_XamarinAndroidBundledAssembly_name_f7_f7 = internal dso_local global [65 x i8] zeroinitializer, align 16
@_XamarinAndroidBundledAssembly_name_f8_f8 = internal dso_local global [65 x i8] zeroinitializer, align 16
@_XamarinAndroidBundledAssembly_name_f9_f9 = internal dso_local global [65 x i8] zeroinitializer, align 16
@_XamarinAndroidBundledAssembly_name_fa_fa = internal dso_local global [65 x i8] zeroinitializer, align 16
@_XamarinAndroidBundledAssembly_name_fb_fb = internal dso_local global [65 x i8] zeroinitializer, align 16
@_XamarinAndroidBundledAssembly_name_fc_fc = internal dso_local global [65 x i8] zeroinitializer, align 16
@_XamarinAndroidBundledAssembly_name_fd_fd = internal dso_local global [65 x i8] zeroinitializer, align 16
@_XamarinAndroidBundledAssembly_name_fe_fe = internal dso_local global [65 x i8] zeroinitializer, align 16
@_XamarinAndroidBundledAssembly_name_ff_ff = internal dso_local global [65 x i8] zeroinitializer, align 16
@_XamarinAndroidBundledAssembly_name_100_100 = internal dso_local global [65 x i8] zeroinitializer, align 16
@_XamarinAndroidBundledAssembly_name_101_101 = internal dso_local global [65 x i8] zeroinitializer, align 16
@_XamarinAndroidBundledAssembly_name_102_102 = internal dso_local global [65 x i8] zeroinitializer, align 16
@_XamarinAndroidBundledAssembly_name_103_103 = internal dso_local global [65 x i8] zeroinitializer, align 16
@_XamarinAndroidBundledAssembly_name_104_104 = internal dso_local global [65 x i8] zeroinitializer, align 16
@_XamarinAndroidBundledAssembly_name_105_105 = internal dso_local global [65 x i8] zeroinitializer, align 16
@_XamarinAndroidBundledAssembly_name_106_106 = internal dso_local global [65 x i8] zeroinitializer, align 16
@_XamarinAndroidBundledAssembly_name_107_107 = internal dso_local global [65 x i8] zeroinitializer, align 16
@_XamarinAndroidBundledAssembly_name_108_108 = internal dso_local global [65 x i8] zeroinitializer, align 16
@_XamarinAndroidBundledAssembly_name_109_109 = internal dso_local global [65 x i8] zeroinitializer, align 16
@_XamarinAndroidBundledAssembly_name_10a_10a = internal dso_local global [65 x i8] zeroinitializer, align 16
@_XamarinAndroidBundledAssembly_name_10b_10b = internal dso_local global [65 x i8] zeroinitializer, align 16
@_XamarinAndroidBundledAssembly_name_10c_10c = internal dso_local global [65 x i8] zeroinitializer, align 16
@_XamarinAndroidBundledAssembly_name_10d_10d = internal dso_local global [65 x i8] zeroinitializer, align 16
@_XamarinAndroidBundledAssembly_name_10e_10e = internal dso_local global [65 x i8] zeroinitializer, align 16
@_XamarinAndroidBundledAssembly_name_10f_10f = internal dso_local global [65 x i8] zeroinitializer, align 16
@_XamarinAndroidBundledAssembly_name_110_110 = internal dso_local global [65 x i8] zeroinitializer, align 16
@_XamarinAndroidBundledAssembly_name_111_111 = internal dso_local global [65 x i8] zeroinitializer, align 16
@_XamarinAndroidBundledAssembly_name_112_112 = internal dso_local global [65 x i8] zeroinitializer, align 16
@_XamarinAndroidBundledAssembly_name_113_113 = internal dso_local global [65 x i8] zeroinitializer, align 16
@_XamarinAndroidBundledAssembly_name_114_114 = internal dso_local global [65 x i8] zeroinitializer, align 16
@_XamarinAndroidBundledAssembly_name_115_115 = internal dso_local global [65 x i8] zeroinitializer, align 16
@_XamarinAndroidBundledAssembly_name_116_116 = internal dso_local global [65 x i8] zeroinitializer, align 16
@_XamarinAndroidBundledAssembly_name_117_117 = internal dso_local global [65 x i8] zeroinitializer, align 16
@_XamarinAndroidBundledAssembly_name_118_118 = internal dso_local global [65 x i8] zeroinitializer, align 16
@_XamarinAndroidBundledAssembly_name_119_119 = internal dso_local global [65 x i8] zeroinitializer, align 16
@_XamarinAndroidBundledAssembly_name_11a_11a = internal dso_local global [65 x i8] zeroinitializer, align 16
@_XamarinAndroidBundledAssembly_name_11b_11b = internal dso_local global [65 x i8] zeroinitializer, align 16
@_XamarinAndroidBundledAssembly_name_11c_11c = internal dso_local global [65 x i8] zeroinitializer, align 16
@_XamarinAndroidBundledAssembly_name_11d_11d = internal dso_local global [65 x i8] zeroinitializer, align 16
@_XamarinAndroidBundledAssembly_name_11e_11e = internal dso_local global [65 x i8] zeroinitializer, align 16
@_XamarinAndroidBundledAssembly_name_11f_11f = internal dso_local global [65 x i8] zeroinitializer, align 16
@_XamarinAndroidBundledAssembly_name_120_120 = internal dso_local global [65 x i8] zeroinitializer, align 16
@_XamarinAndroidBundledAssembly_name_121_121 = internal dso_local global [65 x i8] zeroinitializer, align 16
@_XamarinAndroidBundledAssembly_name_122_122 = internal dso_local global [65 x i8] zeroinitializer, align 16
@_XamarinAndroidBundledAssembly_name_123_123 = internal dso_local global [65 x i8] zeroinitializer, align 16
@_XamarinAndroidBundledAssembly_name_124_124 = internal dso_local global [65 x i8] zeroinitializer, align 16
@_XamarinAndroidBundledAssembly_name_125_125 = internal dso_local global [65 x i8] zeroinitializer, align 16
@_XamarinAndroidBundledAssembly_name_126_126 = internal dso_local global [65 x i8] zeroinitializer, align 16
@_XamarinAndroidBundledAssembly_name_127_127 = internal dso_local global [65 x i8] zeroinitializer, align 16
@_XamarinAndroidBundledAssembly_name_128_128 = internal dso_local global [65 x i8] zeroinitializer, align 16
@_XamarinAndroidBundledAssembly_name_129_129 = internal dso_local global [65 x i8] zeroinitializer, align 16
@_XamarinAndroidBundledAssembly_name_12a_12a = internal dso_local global [65 x i8] zeroinitializer, align 16
@_XamarinAndroidBundledAssembly_name_12b_12b = internal dso_local global [65 x i8] zeroinitializer, align 16
@_XamarinAndroidBundledAssembly_name_12c_12c = internal dso_local global [65 x i8] zeroinitializer, align 16
@_XamarinAndroidBundledAssembly_name_12d_12d = internal dso_local global [65 x i8] zeroinitializer, align 16
@_XamarinAndroidBundledAssembly_name_12e_12e = internal dso_local global [65 x i8] zeroinitializer, align 16
@_XamarinAndroidBundledAssembly_name_12f_12f = internal dso_local global [65 x i8] zeroinitializer, align 16
@_XamarinAndroidBundledAssembly_name_130_130 = internal dso_local global [65 x i8] zeroinitializer, align 16
@_XamarinAndroidBundledAssembly_name_131_131 = internal dso_local global [65 x i8] zeroinitializer, align 16
@_XamarinAndroidBundledAssembly_name_132_132 = internal dso_local global [65 x i8] zeroinitializer, align 16
@_XamarinAndroidBundledAssembly_name_133_133 = internal dso_local global [65 x i8] zeroinitializer, align 16
@_XamarinAndroidBundledAssembly_name_134_134 = internal dso_local global [65 x i8] zeroinitializer, align 16

; Bundled assembly name buffers, all 65 bytes long
@bundled_assemblies = dso_local local_unnamed_addr global [309 x %struct.XamarinAndroidBundledAssembly] [
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 65, ; uint32_t name_length (0x41)
		ptr @_XamarinAndroidBundledAssembly_name_0_0; char* name
	}, ; 0
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 65, ; uint32_t name_length (0x41)
		ptr @_XamarinAndroidBundledAssembly_name_1_1; char* name
	}, ; 1
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 65, ; uint32_t name_length (0x41)
		ptr @_XamarinAndroidBundledAssembly_name_2_2; char* name
	}, ; 2
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 65, ; uint32_t name_length (0x41)
		ptr @_XamarinAndroidBundledAssembly_name_3_3; char* name
	}, ; 3
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 65, ; uint32_t name_length (0x41)
		ptr @_XamarinAndroidBundledAssembly_name_4_4; char* name
	}, ; 4
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 65, ; uint32_t name_length (0x41)
		ptr @_XamarinAndroidBundledAssembly_name_5_5; char* name
	}, ; 5
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 65, ; uint32_t name_length (0x41)
		ptr @_XamarinAndroidBundledAssembly_name_6_6; char* name
	}, ; 6
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 65, ; uint32_t name_length (0x41)
		ptr @_XamarinAndroidBundledAssembly_name_7_7; char* name
	}, ; 7
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 65, ; uint32_t name_length (0x41)
		ptr @_XamarinAndroidBundledAssembly_name_8_8; char* name
	}, ; 8
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 65, ; uint32_t name_length (0x41)
		ptr @_XamarinAndroidBundledAssembly_name_9_9; char* name
	}, ; 9
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 65, ; uint32_t name_length (0x41)
		ptr @_XamarinAndroidBundledAssembly_name_a_a; char* name
	}, ; 10
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 65, ; uint32_t name_length (0x41)
		ptr @_XamarinAndroidBundledAssembly_name_b_b; char* name
	}, ; 11
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 65, ; uint32_t name_length (0x41)
		ptr @_XamarinAndroidBundledAssembly_name_c_c; char* name
	}, ; 12
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 65, ; uint32_t name_length (0x41)
		ptr @_XamarinAndroidBundledAssembly_name_d_d; char* name
	}, ; 13
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 65, ; uint32_t name_length (0x41)
		ptr @_XamarinAndroidBundledAssembly_name_e_e; char* name
	}, ; 14
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 65, ; uint32_t name_length (0x41)
		ptr @_XamarinAndroidBundledAssembly_name_f_f; char* name
	}, ; 15
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 65, ; uint32_t name_length (0x41)
		ptr @_XamarinAndroidBundledAssembly_name_10_10; char* name
	}, ; 16
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 65, ; uint32_t name_length (0x41)
		ptr @_XamarinAndroidBundledAssembly_name_11_11; char* name
	}, ; 17
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 65, ; uint32_t name_length (0x41)
		ptr @_XamarinAndroidBundledAssembly_name_12_12; char* name
	}, ; 18
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 65, ; uint32_t name_length (0x41)
		ptr @_XamarinAndroidBundledAssembly_name_13_13; char* name
	}, ; 19
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 65, ; uint32_t name_length (0x41)
		ptr @_XamarinAndroidBundledAssembly_name_14_14; char* name
	}, ; 20
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 65, ; uint32_t name_length (0x41)
		ptr @_XamarinAndroidBundledAssembly_name_15_15; char* name
	}, ; 21
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 65, ; uint32_t name_length (0x41)
		ptr @_XamarinAndroidBundledAssembly_name_16_16; char* name
	}, ; 22
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 65, ; uint32_t name_length (0x41)
		ptr @_XamarinAndroidBundledAssembly_name_17_17; char* name
	}, ; 23
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 65, ; uint32_t name_length (0x41)
		ptr @_XamarinAndroidBundledAssembly_name_18_18; char* name
	}, ; 24
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 65, ; uint32_t name_length (0x41)
		ptr @_XamarinAndroidBundledAssembly_name_19_19; char* name
	}, ; 25
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 65, ; uint32_t name_length (0x41)
		ptr @_XamarinAndroidBundledAssembly_name_1a_1a; char* name
	}, ; 26
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 65, ; uint32_t name_length (0x41)
		ptr @_XamarinAndroidBundledAssembly_name_1b_1b; char* name
	}, ; 27
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 65, ; uint32_t name_length (0x41)
		ptr @_XamarinAndroidBundledAssembly_name_1c_1c; char* name
	}, ; 28
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 65, ; uint32_t name_length (0x41)
		ptr @_XamarinAndroidBundledAssembly_name_1d_1d; char* name
	}, ; 29
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 65, ; uint32_t name_length (0x41)
		ptr @_XamarinAndroidBundledAssembly_name_1e_1e; char* name
	}, ; 30
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 65, ; uint32_t name_length (0x41)
		ptr @_XamarinAndroidBundledAssembly_name_1f_1f; char* name
	}, ; 31
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 65, ; uint32_t name_length (0x41)
		ptr @_XamarinAndroidBundledAssembly_name_20_20; char* name
	}, ; 32
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 65, ; uint32_t name_length (0x41)
		ptr @_XamarinAndroidBundledAssembly_name_21_21; char* name
	}, ; 33
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 65, ; uint32_t name_length (0x41)
		ptr @_XamarinAndroidBundledAssembly_name_22_22; char* name
	}, ; 34
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 65, ; uint32_t name_length (0x41)
		ptr @_XamarinAndroidBundledAssembly_name_23_23; char* name
	}, ; 35
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 65, ; uint32_t name_length (0x41)
		ptr @_XamarinAndroidBundledAssembly_name_24_24; char* name
	}, ; 36
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 65, ; uint32_t name_length (0x41)
		ptr @_XamarinAndroidBundledAssembly_name_25_25; char* name
	}, ; 37
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 65, ; uint32_t name_length (0x41)
		ptr @_XamarinAndroidBundledAssembly_name_26_26; char* name
	}, ; 38
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 65, ; uint32_t name_length (0x41)
		ptr @_XamarinAndroidBundledAssembly_name_27_27; char* name
	}, ; 39
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 65, ; uint32_t name_length (0x41)
		ptr @_XamarinAndroidBundledAssembly_name_28_28; char* name
	}, ; 40
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 65, ; uint32_t name_length (0x41)
		ptr @_XamarinAndroidBundledAssembly_name_29_29; char* name
	}, ; 41
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 65, ; uint32_t name_length (0x41)
		ptr @_XamarinAndroidBundledAssembly_name_2a_2a; char* name
	}, ; 42
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 65, ; uint32_t name_length (0x41)
		ptr @_XamarinAndroidBundledAssembly_name_2b_2b; char* name
	}, ; 43
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 65, ; uint32_t name_length (0x41)
		ptr @_XamarinAndroidBundledAssembly_name_2c_2c; char* name
	}, ; 44
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 65, ; uint32_t name_length (0x41)
		ptr @_XamarinAndroidBundledAssembly_name_2d_2d; char* name
	}, ; 45
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 65, ; uint32_t name_length (0x41)
		ptr @_XamarinAndroidBundledAssembly_name_2e_2e; char* name
	}, ; 46
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 65, ; uint32_t name_length (0x41)
		ptr @_XamarinAndroidBundledAssembly_name_2f_2f; char* name
	}, ; 47
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 65, ; uint32_t name_length (0x41)
		ptr @_XamarinAndroidBundledAssembly_name_30_30; char* name
	}, ; 48
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 65, ; uint32_t name_length (0x41)
		ptr @_XamarinAndroidBundledAssembly_name_31_31; char* name
	}, ; 49
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 65, ; uint32_t name_length (0x41)
		ptr @_XamarinAndroidBundledAssembly_name_32_32; char* name
	}, ; 50
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 65, ; uint32_t name_length (0x41)
		ptr @_XamarinAndroidBundledAssembly_name_33_33; char* name
	}, ; 51
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 65, ; uint32_t name_length (0x41)
		ptr @_XamarinAndroidBundledAssembly_name_34_34; char* name
	}, ; 52
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 65, ; uint32_t name_length (0x41)
		ptr @_XamarinAndroidBundledAssembly_name_35_35; char* name
	}, ; 53
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 65, ; uint32_t name_length (0x41)
		ptr @_XamarinAndroidBundledAssembly_name_36_36; char* name
	}, ; 54
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 65, ; uint32_t name_length (0x41)
		ptr @_XamarinAndroidBundledAssembly_name_37_37; char* name
	}, ; 55
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 65, ; uint32_t name_length (0x41)
		ptr @_XamarinAndroidBundledAssembly_name_38_38; char* name
	}, ; 56
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 65, ; uint32_t name_length (0x41)
		ptr @_XamarinAndroidBundledAssembly_name_39_39; char* name
	}, ; 57
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 65, ; uint32_t name_length (0x41)
		ptr @_XamarinAndroidBundledAssembly_name_3a_3a; char* name
	}, ; 58
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 65, ; uint32_t name_length (0x41)
		ptr @_XamarinAndroidBundledAssembly_name_3b_3b; char* name
	}, ; 59
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 65, ; uint32_t name_length (0x41)
		ptr @_XamarinAndroidBundledAssembly_name_3c_3c; char* name
	}, ; 60
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 65, ; uint32_t name_length (0x41)
		ptr @_XamarinAndroidBundledAssembly_name_3d_3d; char* name
	}, ; 61
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 65, ; uint32_t name_length (0x41)
		ptr @_XamarinAndroidBundledAssembly_name_3e_3e; char* name
	}, ; 62
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 65, ; uint32_t name_length (0x41)
		ptr @_XamarinAndroidBundledAssembly_name_3f_3f; char* name
	}, ; 63
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 65, ; uint32_t name_length (0x41)
		ptr @_XamarinAndroidBundledAssembly_name_40_40; char* name
	}, ; 64
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 65, ; uint32_t name_length (0x41)
		ptr @_XamarinAndroidBundledAssembly_name_41_41; char* name
	}, ; 65
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 65, ; uint32_t name_length (0x41)
		ptr @_XamarinAndroidBundledAssembly_name_42_42; char* name
	}, ; 66
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 65, ; uint32_t name_length (0x41)
		ptr @_XamarinAndroidBundledAssembly_name_43_43; char* name
	}, ; 67
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 65, ; uint32_t name_length (0x41)
		ptr @_XamarinAndroidBundledAssembly_name_44_44; char* name
	}, ; 68
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 65, ; uint32_t name_length (0x41)
		ptr @_XamarinAndroidBundledAssembly_name_45_45; char* name
	}, ; 69
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 65, ; uint32_t name_length (0x41)
		ptr @_XamarinAndroidBundledAssembly_name_46_46; char* name
	}, ; 70
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 65, ; uint32_t name_length (0x41)
		ptr @_XamarinAndroidBundledAssembly_name_47_47; char* name
	}, ; 71
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 65, ; uint32_t name_length (0x41)
		ptr @_XamarinAndroidBundledAssembly_name_48_48; char* name
	}, ; 72
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 65, ; uint32_t name_length (0x41)
		ptr @_XamarinAndroidBundledAssembly_name_49_49; char* name
	}, ; 73
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 65, ; uint32_t name_length (0x41)
		ptr @_XamarinAndroidBundledAssembly_name_4a_4a; char* name
	}, ; 74
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 65, ; uint32_t name_length (0x41)
		ptr @_XamarinAndroidBundledAssembly_name_4b_4b; char* name
	}, ; 75
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 65, ; uint32_t name_length (0x41)
		ptr @_XamarinAndroidBundledAssembly_name_4c_4c; char* name
	}, ; 76
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 65, ; uint32_t name_length (0x41)
		ptr @_XamarinAndroidBundledAssembly_name_4d_4d; char* name
	}, ; 77
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 65, ; uint32_t name_length (0x41)
		ptr @_XamarinAndroidBundledAssembly_name_4e_4e; char* name
	}, ; 78
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 65, ; uint32_t name_length (0x41)
		ptr @_XamarinAndroidBundledAssembly_name_4f_4f; char* name
	}, ; 79
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 65, ; uint32_t name_length (0x41)
		ptr @_XamarinAndroidBundledAssembly_name_50_50; char* name
	}, ; 80
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 65, ; uint32_t name_length (0x41)
		ptr @_XamarinAndroidBundledAssembly_name_51_51; char* name
	}, ; 81
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 65, ; uint32_t name_length (0x41)
		ptr @_XamarinAndroidBundledAssembly_name_52_52; char* name
	}, ; 82
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 65, ; uint32_t name_length (0x41)
		ptr @_XamarinAndroidBundledAssembly_name_53_53; char* name
	}, ; 83
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 65, ; uint32_t name_length (0x41)
		ptr @_XamarinAndroidBundledAssembly_name_54_54; char* name
	}, ; 84
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 65, ; uint32_t name_length (0x41)
		ptr @_XamarinAndroidBundledAssembly_name_55_55; char* name
	}, ; 85
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 65, ; uint32_t name_length (0x41)
		ptr @_XamarinAndroidBundledAssembly_name_56_56; char* name
	}, ; 86
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 65, ; uint32_t name_length (0x41)
		ptr @_XamarinAndroidBundledAssembly_name_57_57; char* name
	}, ; 87
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 65, ; uint32_t name_length (0x41)
		ptr @_XamarinAndroidBundledAssembly_name_58_58; char* name
	}, ; 88
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 65, ; uint32_t name_length (0x41)
		ptr @_XamarinAndroidBundledAssembly_name_59_59; char* name
	}, ; 89
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 65, ; uint32_t name_length (0x41)
		ptr @_XamarinAndroidBundledAssembly_name_5a_5a; char* name
	}, ; 90
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 65, ; uint32_t name_length (0x41)
		ptr @_XamarinAndroidBundledAssembly_name_5b_5b; char* name
	}, ; 91
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 65, ; uint32_t name_length (0x41)
		ptr @_XamarinAndroidBundledAssembly_name_5c_5c; char* name
	}, ; 92
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 65, ; uint32_t name_length (0x41)
		ptr @_XamarinAndroidBundledAssembly_name_5d_5d; char* name
	}, ; 93
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 65, ; uint32_t name_length (0x41)
		ptr @_XamarinAndroidBundledAssembly_name_5e_5e; char* name
	}, ; 94
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 65, ; uint32_t name_length (0x41)
		ptr @_XamarinAndroidBundledAssembly_name_5f_5f; char* name
	}, ; 95
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 65, ; uint32_t name_length (0x41)
		ptr @_XamarinAndroidBundledAssembly_name_60_60; char* name
	}, ; 96
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 65, ; uint32_t name_length (0x41)
		ptr @_XamarinAndroidBundledAssembly_name_61_61; char* name
	}, ; 97
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 65, ; uint32_t name_length (0x41)
		ptr @_XamarinAndroidBundledAssembly_name_62_62; char* name
	}, ; 98
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 65, ; uint32_t name_length (0x41)
		ptr @_XamarinAndroidBundledAssembly_name_63_63; char* name
	}, ; 99
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 65, ; uint32_t name_length (0x41)
		ptr @_XamarinAndroidBundledAssembly_name_64_64; char* name
	}, ; 100
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 65, ; uint32_t name_length (0x41)
		ptr @_XamarinAndroidBundledAssembly_name_65_65; char* name
	}, ; 101
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 65, ; uint32_t name_length (0x41)
		ptr @_XamarinAndroidBundledAssembly_name_66_66; char* name
	}, ; 102
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 65, ; uint32_t name_length (0x41)
		ptr @_XamarinAndroidBundledAssembly_name_67_67; char* name
	}, ; 103
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 65, ; uint32_t name_length (0x41)
		ptr @_XamarinAndroidBundledAssembly_name_68_68; char* name
	}, ; 104
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 65, ; uint32_t name_length (0x41)
		ptr @_XamarinAndroidBundledAssembly_name_69_69; char* name
	}, ; 105
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 65, ; uint32_t name_length (0x41)
		ptr @_XamarinAndroidBundledAssembly_name_6a_6a; char* name
	}, ; 106
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 65, ; uint32_t name_length (0x41)
		ptr @_XamarinAndroidBundledAssembly_name_6b_6b; char* name
	}, ; 107
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 65, ; uint32_t name_length (0x41)
		ptr @_XamarinAndroidBundledAssembly_name_6c_6c; char* name
	}, ; 108
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 65, ; uint32_t name_length (0x41)
		ptr @_XamarinAndroidBundledAssembly_name_6d_6d; char* name
	}, ; 109
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 65, ; uint32_t name_length (0x41)
		ptr @_XamarinAndroidBundledAssembly_name_6e_6e; char* name
	}, ; 110
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 65, ; uint32_t name_length (0x41)
		ptr @_XamarinAndroidBundledAssembly_name_6f_6f; char* name
	}, ; 111
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 65, ; uint32_t name_length (0x41)
		ptr @_XamarinAndroidBundledAssembly_name_70_70; char* name
	}, ; 112
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 65, ; uint32_t name_length (0x41)
		ptr @_XamarinAndroidBundledAssembly_name_71_71; char* name
	}, ; 113
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 65, ; uint32_t name_length (0x41)
		ptr @_XamarinAndroidBundledAssembly_name_72_72; char* name
	}, ; 114
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 65, ; uint32_t name_length (0x41)
		ptr @_XamarinAndroidBundledAssembly_name_73_73; char* name
	}, ; 115
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 65, ; uint32_t name_length (0x41)
		ptr @_XamarinAndroidBundledAssembly_name_74_74; char* name
	}, ; 116
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 65, ; uint32_t name_length (0x41)
		ptr @_XamarinAndroidBundledAssembly_name_75_75; char* name
	}, ; 117
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 65, ; uint32_t name_length (0x41)
		ptr @_XamarinAndroidBundledAssembly_name_76_76; char* name
	}, ; 118
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 65, ; uint32_t name_length (0x41)
		ptr @_XamarinAndroidBundledAssembly_name_77_77; char* name
	}, ; 119
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 65, ; uint32_t name_length (0x41)
		ptr @_XamarinAndroidBundledAssembly_name_78_78; char* name
	}, ; 120
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 65, ; uint32_t name_length (0x41)
		ptr @_XamarinAndroidBundledAssembly_name_79_79; char* name
	}, ; 121
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 65, ; uint32_t name_length (0x41)
		ptr @_XamarinAndroidBundledAssembly_name_7a_7a; char* name
	}, ; 122
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 65, ; uint32_t name_length (0x41)
		ptr @_XamarinAndroidBundledAssembly_name_7b_7b; char* name
	}, ; 123
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 65, ; uint32_t name_length (0x41)
		ptr @_XamarinAndroidBundledAssembly_name_7c_7c; char* name
	}, ; 124
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 65, ; uint32_t name_length (0x41)
		ptr @_XamarinAndroidBundledAssembly_name_7d_7d; char* name
	}, ; 125
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 65, ; uint32_t name_length (0x41)
		ptr @_XamarinAndroidBundledAssembly_name_7e_7e; char* name
	}, ; 126
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 65, ; uint32_t name_length (0x41)
		ptr @_XamarinAndroidBundledAssembly_name_7f_7f; char* name
	}, ; 127
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 65, ; uint32_t name_length (0x41)
		ptr @_XamarinAndroidBundledAssembly_name_80_80; char* name
	}, ; 128
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 65, ; uint32_t name_length (0x41)
		ptr @_XamarinAndroidBundledAssembly_name_81_81; char* name
	}, ; 129
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 65, ; uint32_t name_length (0x41)
		ptr @_XamarinAndroidBundledAssembly_name_82_82; char* name
	}, ; 130
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 65, ; uint32_t name_length (0x41)
		ptr @_XamarinAndroidBundledAssembly_name_83_83; char* name
	}, ; 131
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 65, ; uint32_t name_length (0x41)
		ptr @_XamarinAndroidBundledAssembly_name_84_84; char* name
	}, ; 132
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 65, ; uint32_t name_length (0x41)
		ptr @_XamarinAndroidBundledAssembly_name_85_85; char* name
	}, ; 133
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 65, ; uint32_t name_length (0x41)
		ptr @_XamarinAndroidBundledAssembly_name_86_86; char* name
	}, ; 134
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 65, ; uint32_t name_length (0x41)
		ptr @_XamarinAndroidBundledAssembly_name_87_87; char* name
	}, ; 135
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 65, ; uint32_t name_length (0x41)
		ptr @_XamarinAndroidBundledAssembly_name_88_88; char* name
	}, ; 136
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 65, ; uint32_t name_length (0x41)
		ptr @_XamarinAndroidBundledAssembly_name_89_89; char* name
	}, ; 137
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 65, ; uint32_t name_length (0x41)
		ptr @_XamarinAndroidBundledAssembly_name_8a_8a; char* name
	}, ; 138
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 65, ; uint32_t name_length (0x41)
		ptr @_XamarinAndroidBundledAssembly_name_8b_8b; char* name
	}, ; 139
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 65, ; uint32_t name_length (0x41)
		ptr @_XamarinAndroidBundledAssembly_name_8c_8c; char* name
	}, ; 140
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 65, ; uint32_t name_length (0x41)
		ptr @_XamarinAndroidBundledAssembly_name_8d_8d; char* name
	}, ; 141
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 65, ; uint32_t name_length (0x41)
		ptr @_XamarinAndroidBundledAssembly_name_8e_8e; char* name
	}, ; 142
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 65, ; uint32_t name_length (0x41)
		ptr @_XamarinAndroidBundledAssembly_name_8f_8f; char* name
	}, ; 143
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 65, ; uint32_t name_length (0x41)
		ptr @_XamarinAndroidBundledAssembly_name_90_90; char* name
	}, ; 144
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 65, ; uint32_t name_length (0x41)
		ptr @_XamarinAndroidBundledAssembly_name_91_91; char* name
	}, ; 145
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 65, ; uint32_t name_length (0x41)
		ptr @_XamarinAndroidBundledAssembly_name_92_92; char* name
	}, ; 146
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 65, ; uint32_t name_length (0x41)
		ptr @_XamarinAndroidBundledAssembly_name_93_93; char* name
	}, ; 147
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 65, ; uint32_t name_length (0x41)
		ptr @_XamarinAndroidBundledAssembly_name_94_94; char* name
	}, ; 148
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 65, ; uint32_t name_length (0x41)
		ptr @_XamarinAndroidBundledAssembly_name_95_95; char* name
	}, ; 149
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 65, ; uint32_t name_length (0x41)
		ptr @_XamarinAndroidBundledAssembly_name_96_96; char* name
	}, ; 150
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 65, ; uint32_t name_length (0x41)
		ptr @_XamarinAndroidBundledAssembly_name_97_97; char* name
	}, ; 151
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 65, ; uint32_t name_length (0x41)
		ptr @_XamarinAndroidBundledAssembly_name_98_98; char* name
	}, ; 152
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 65, ; uint32_t name_length (0x41)
		ptr @_XamarinAndroidBundledAssembly_name_99_99; char* name
	}, ; 153
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 65, ; uint32_t name_length (0x41)
		ptr @_XamarinAndroidBundledAssembly_name_9a_9a; char* name
	}, ; 154
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 65, ; uint32_t name_length (0x41)
		ptr @_XamarinAndroidBundledAssembly_name_9b_9b; char* name
	}, ; 155
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 65, ; uint32_t name_length (0x41)
		ptr @_XamarinAndroidBundledAssembly_name_9c_9c; char* name
	}, ; 156
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 65, ; uint32_t name_length (0x41)
		ptr @_XamarinAndroidBundledAssembly_name_9d_9d; char* name
	}, ; 157
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 65, ; uint32_t name_length (0x41)
		ptr @_XamarinAndroidBundledAssembly_name_9e_9e; char* name
	}, ; 158
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 65, ; uint32_t name_length (0x41)
		ptr @_XamarinAndroidBundledAssembly_name_9f_9f; char* name
	}, ; 159
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 65, ; uint32_t name_length (0x41)
		ptr @_XamarinAndroidBundledAssembly_name_a0_a0; char* name
	}, ; 160
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 65, ; uint32_t name_length (0x41)
		ptr @_XamarinAndroidBundledAssembly_name_a1_a1; char* name
	}, ; 161
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 65, ; uint32_t name_length (0x41)
		ptr @_XamarinAndroidBundledAssembly_name_a2_a2; char* name
	}, ; 162
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 65, ; uint32_t name_length (0x41)
		ptr @_XamarinAndroidBundledAssembly_name_a3_a3; char* name
	}, ; 163
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 65, ; uint32_t name_length (0x41)
		ptr @_XamarinAndroidBundledAssembly_name_a4_a4; char* name
	}, ; 164
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 65, ; uint32_t name_length (0x41)
		ptr @_XamarinAndroidBundledAssembly_name_a5_a5; char* name
	}, ; 165
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 65, ; uint32_t name_length (0x41)
		ptr @_XamarinAndroidBundledAssembly_name_a6_a6; char* name
	}, ; 166
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 65, ; uint32_t name_length (0x41)
		ptr @_XamarinAndroidBundledAssembly_name_a7_a7; char* name
	}, ; 167
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 65, ; uint32_t name_length (0x41)
		ptr @_XamarinAndroidBundledAssembly_name_a8_a8; char* name
	}, ; 168
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 65, ; uint32_t name_length (0x41)
		ptr @_XamarinAndroidBundledAssembly_name_a9_a9; char* name
	}, ; 169
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 65, ; uint32_t name_length (0x41)
		ptr @_XamarinAndroidBundledAssembly_name_aa_aa; char* name
	}, ; 170
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 65, ; uint32_t name_length (0x41)
		ptr @_XamarinAndroidBundledAssembly_name_ab_ab; char* name
	}, ; 171
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 65, ; uint32_t name_length (0x41)
		ptr @_XamarinAndroidBundledAssembly_name_ac_ac; char* name
	}, ; 172
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 65, ; uint32_t name_length (0x41)
		ptr @_XamarinAndroidBundledAssembly_name_ad_ad; char* name
	}, ; 173
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 65, ; uint32_t name_length (0x41)
		ptr @_XamarinAndroidBundledAssembly_name_ae_ae; char* name
	}, ; 174
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 65, ; uint32_t name_length (0x41)
		ptr @_XamarinAndroidBundledAssembly_name_af_af; char* name
	}, ; 175
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 65, ; uint32_t name_length (0x41)
		ptr @_XamarinAndroidBundledAssembly_name_b0_b0; char* name
	}, ; 176
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 65, ; uint32_t name_length (0x41)
		ptr @_XamarinAndroidBundledAssembly_name_b1_b1; char* name
	}, ; 177
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 65, ; uint32_t name_length (0x41)
		ptr @_XamarinAndroidBundledAssembly_name_b2_b2; char* name
	}, ; 178
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 65, ; uint32_t name_length (0x41)
		ptr @_XamarinAndroidBundledAssembly_name_b3_b3; char* name
	}, ; 179
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 65, ; uint32_t name_length (0x41)
		ptr @_XamarinAndroidBundledAssembly_name_b4_b4; char* name
	}, ; 180
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 65, ; uint32_t name_length (0x41)
		ptr @_XamarinAndroidBundledAssembly_name_b5_b5; char* name
	}, ; 181
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 65, ; uint32_t name_length (0x41)
		ptr @_XamarinAndroidBundledAssembly_name_b6_b6; char* name
	}, ; 182
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 65, ; uint32_t name_length (0x41)
		ptr @_XamarinAndroidBundledAssembly_name_b7_b7; char* name
	}, ; 183
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 65, ; uint32_t name_length (0x41)
		ptr @_XamarinAndroidBundledAssembly_name_b8_b8; char* name
	}, ; 184
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 65, ; uint32_t name_length (0x41)
		ptr @_XamarinAndroidBundledAssembly_name_b9_b9; char* name
	}, ; 185
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 65, ; uint32_t name_length (0x41)
		ptr @_XamarinAndroidBundledAssembly_name_ba_ba; char* name
	}, ; 186
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 65, ; uint32_t name_length (0x41)
		ptr @_XamarinAndroidBundledAssembly_name_bb_bb; char* name
	}, ; 187
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 65, ; uint32_t name_length (0x41)
		ptr @_XamarinAndroidBundledAssembly_name_bc_bc; char* name
	}, ; 188
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 65, ; uint32_t name_length (0x41)
		ptr @_XamarinAndroidBundledAssembly_name_bd_bd; char* name
	}, ; 189
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 65, ; uint32_t name_length (0x41)
		ptr @_XamarinAndroidBundledAssembly_name_be_be; char* name
	}, ; 190
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 65, ; uint32_t name_length (0x41)
		ptr @_XamarinAndroidBundledAssembly_name_bf_bf; char* name
	}, ; 191
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 65, ; uint32_t name_length (0x41)
		ptr @_XamarinAndroidBundledAssembly_name_c0_c0; char* name
	}, ; 192
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 65, ; uint32_t name_length (0x41)
		ptr @_XamarinAndroidBundledAssembly_name_c1_c1; char* name
	}, ; 193
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 65, ; uint32_t name_length (0x41)
		ptr @_XamarinAndroidBundledAssembly_name_c2_c2; char* name
	}, ; 194
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 65, ; uint32_t name_length (0x41)
		ptr @_XamarinAndroidBundledAssembly_name_c3_c3; char* name
	}, ; 195
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 65, ; uint32_t name_length (0x41)
		ptr @_XamarinAndroidBundledAssembly_name_c4_c4; char* name
	}, ; 196
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 65, ; uint32_t name_length (0x41)
		ptr @_XamarinAndroidBundledAssembly_name_c5_c5; char* name
	}, ; 197
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 65, ; uint32_t name_length (0x41)
		ptr @_XamarinAndroidBundledAssembly_name_c6_c6; char* name
	}, ; 198
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 65, ; uint32_t name_length (0x41)
		ptr @_XamarinAndroidBundledAssembly_name_c7_c7; char* name
	}, ; 199
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 65, ; uint32_t name_length (0x41)
		ptr @_XamarinAndroidBundledAssembly_name_c8_c8; char* name
	}, ; 200
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 65, ; uint32_t name_length (0x41)
		ptr @_XamarinAndroidBundledAssembly_name_c9_c9; char* name
	}, ; 201
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 65, ; uint32_t name_length (0x41)
		ptr @_XamarinAndroidBundledAssembly_name_ca_ca; char* name
	}, ; 202
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 65, ; uint32_t name_length (0x41)
		ptr @_XamarinAndroidBundledAssembly_name_cb_cb; char* name
	}, ; 203
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 65, ; uint32_t name_length (0x41)
		ptr @_XamarinAndroidBundledAssembly_name_cc_cc; char* name
	}, ; 204
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 65, ; uint32_t name_length (0x41)
		ptr @_XamarinAndroidBundledAssembly_name_cd_cd; char* name
	}, ; 205
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 65, ; uint32_t name_length (0x41)
		ptr @_XamarinAndroidBundledAssembly_name_ce_ce; char* name
	}, ; 206
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 65, ; uint32_t name_length (0x41)
		ptr @_XamarinAndroidBundledAssembly_name_cf_cf; char* name
	}, ; 207
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 65, ; uint32_t name_length (0x41)
		ptr @_XamarinAndroidBundledAssembly_name_d0_d0; char* name
	}, ; 208
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 65, ; uint32_t name_length (0x41)
		ptr @_XamarinAndroidBundledAssembly_name_d1_d1; char* name
	}, ; 209
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 65, ; uint32_t name_length (0x41)
		ptr @_XamarinAndroidBundledAssembly_name_d2_d2; char* name
	}, ; 210
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 65, ; uint32_t name_length (0x41)
		ptr @_XamarinAndroidBundledAssembly_name_d3_d3; char* name
	}, ; 211
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 65, ; uint32_t name_length (0x41)
		ptr @_XamarinAndroidBundledAssembly_name_d4_d4; char* name
	}, ; 212
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 65, ; uint32_t name_length (0x41)
		ptr @_XamarinAndroidBundledAssembly_name_d5_d5; char* name
	}, ; 213
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 65, ; uint32_t name_length (0x41)
		ptr @_XamarinAndroidBundledAssembly_name_d6_d6; char* name
	}, ; 214
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 65, ; uint32_t name_length (0x41)
		ptr @_XamarinAndroidBundledAssembly_name_d7_d7; char* name
	}, ; 215
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 65, ; uint32_t name_length (0x41)
		ptr @_XamarinAndroidBundledAssembly_name_d8_d8; char* name
	}, ; 216
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 65, ; uint32_t name_length (0x41)
		ptr @_XamarinAndroidBundledAssembly_name_d9_d9; char* name
	}, ; 217
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 65, ; uint32_t name_length (0x41)
		ptr @_XamarinAndroidBundledAssembly_name_da_da; char* name
	}, ; 218
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 65, ; uint32_t name_length (0x41)
		ptr @_XamarinAndroidBundledAssembly_name_db_db; char* name
	}, ; 219
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 65, ; uint32_t name_length (0x41)
		ptr @_XamarinAndroidBundledAssembly_name_dc_dc; char* name
	}, ; 220
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 65, ; uint32_t name_length (0x41)
		ptr @_XamarinAndroidBundledAssembly_name_dd_dd; char* name
	}, ; 221
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 65, ; uint32_t name_length (0x41)
		ptr @_XamarinAndroidBundledAssembly_name_de_de; char* name
	}, ; 222
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 65, ; uint32_t name_length (0x41)
		ptr @_XamarinAndroidBundledAssembly_name_df_df; char* name
	}, ; 223
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 65, ; uint32_t name_length (0x41)
		ptr @_XamarinAndroidBundledAssembly_name_e0_e0; char* name
	}, ; 224
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 65, ; uint32_t name_length (0x41)
		ptr @_XamarinAndroidBundledAssembly_name_e1_e1; char* name
	}, ; 225
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 65, ; uint32_t name_length (0x41)
		ptr @_XamarinAndroidBundledAssembly_name_e2_e2; char* name
	}, ; 226
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 65, ; uint32_t name_length (0x41)
		ptr @_XamarinAndroidBundledAssembly_name_e3_e3; char* name
	}, ; 227
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 65, ; uint32_t name_length (0x41)
		ptr @_XamarinAndroidBundledAssembly_name_e4_e4; char* name
	}, ; 228
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 65, ; uint32_t name_length (0x41)
		ptr @_XamarinAndroidBundledAssembly_name_e5_e5; char* name
	}, ; 229
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 65, ; uint32_t name_length (0x41)
		ptr @_XamarinAndroidBundledAssembly_name_e6_e6; char* name
	}, ; 230
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 65, ; uint32_t name_length (0x41)
		ptr @_XamarinAndroidBundledAssembly_name_e7_e7; char* name
	}, ; 231
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 65, ; uint32_t name_length (0x41)
		ptr @_XamarinAndroidBundledAssembly_name_e8_e8; char* name
	}, ; 232
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 65, ; uint32_t name_length (0x41)
		ptr @_XamarinAndroidBundledAssembly_name_e9_e9; char* name
	}, ; 233
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 65, ; uint32_t name_length (0x41)
		ptr @_XamarinAndroidBundledAssembly_name_ea_ea; char* name
	}, ; 234
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 65, ; uint32_t name_length (0x41)
		ptr @_XamarinAndroidBundledAssembly_name_eb_eb; char* name
	}, ; 235
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 65, ; uint32_t name_length (0x41)
		ptr @_XamarinAndroidBundledAssembly_name_ec_ec; char* name
	}, ; 236
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 65, ; uint32_t name_length (0x41)
		ptr @_XamarinAndroidBundledAssembly_name_ed_ed; char* name
	}, ; 237
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 65, ; uint32_t name_length (0x41)
		ptr @_XamarinAndroidBundledAssembly_name_ee_ee; char* name
	}, ; 238
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 65, ; uint32_t name_length (0x41)
		ptr @_XamarinAndroidBundledAssembly_name_ef_ef; char* name
	}, ; 239
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 65, ; uint32_t name_length (0x41)
		ptr @_XamarinAndroidBundledAssembly_name_f0_f0; char* name
	}, ; 240
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 65, ; uint32_t name_length (0x41)
		ptr @_XamarinAndroidBundledAssembly_name_f1_f1; char* name
	}, ; 241
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 65, ; uint32_t name_length (0x41)
		ptr @_XamarinAndroidBundledAssembly_name_f2_f2; char* name
	}, ; 242
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 65, ; uint32_t name_length (0x41)
		ptr @_XamarinAndroidBundledAssembly_name_f3_f3; char* name
	}, ; 243
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 65, ; uint32_t name_length (0x41)
		ptr @_XamarinAndroidBundledAssembly_name_f4_f4; char* name
	}, ; 244
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 65, ; uint32_t name_length (0x41)
		ptr @_XamarinAndroidBundledAssembly_name_f5_f5; char* name
	}, ; 245
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 65, ; uint32_t name_length (0x41)
		ptr @_XamarinAndroidBundledAssembly_name_f6_f6; char* name
	}, ; 246
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 65, ; uint32_t name_length (0x41)
		ptr @_XamarinAndroidBundledAssembly_name_f7_f7; char* name
	}, ; 247
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 65, ; uint32_t name_length (0x41)
		ptr @_XamarinAndroidBundledAssembly_name_f8_f8; char* name
	}, ; 248
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 65, ; uint32_t name_length (0x41)
		ptr @_XamarinAndroidBundledAssembly_name_f9_f9; char* name
	}, ; 249
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 65, ; uint32_t name_length (0x41)
		ptr @_XamarinAndroidBundledAssembly_name_fa_fa; char* name
	}, ; 250
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 65, ; uint32_t name_length (0x41)
		ptr @_XamarinAndroidBundledAssembly_name_fb_fb; char* name
	}, ; 251
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 65, ; uint32_t name_length (0x41)
		ptr @_XamarinAndroidBundledAssembly_name_fc_fc; char* name
	}, ; 252
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 65, ; uint32_t name_length (0x41)
		ptr @_XamarinAndroidBundledAssembly_name_fd_fd; char* name
	}, ; 253
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 65, ; uint32_t name_length (0x41)
		ptr @_XamarinAndroidBundledAssembly_name_fe_fe; char* name
	}, ; 254
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 65, ; uint32_t name_length (0x41)
		ptr @_XamarinAndroidBundledAssembly_name_ff_ff; char* name
	}, ; 255
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 65, ; uint32_t name_length (0x41)
		ptr @_XamarinAndroidBundledAssembly_name_100_100; char* name
	}, ; 256
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 65, ; uint32_t name_length (0x41)
		ptr @_XamarinAndroidBundledAssembly_name_101_101; char* name
	}, ; 257
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 65, ; uint32_t name_length (0x41)
		ptr @_XamarinAndroidBundledAssembly_name_102_102; char* name
	}, ; 258
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 65, ; uint32_t name_length (0x41)
		ptr @_XamarinAndroidBundledAssembly_name_103_103; char* name
	}, ; 259
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 65, ; uint32_t name_length (0x41)
		ptr @_XamarinAndroidBundledAssembly_name_104_104; char* name
	}, ; 260
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 65, ; uint32_t name_length (0x41)
		ptr @_XamarinAndroidBundledAssembly_name_105_105; char* name
	}, ; 261
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 65, ; uint32_t name_length (0x41)
		ptr @_XamarinAndroidBundledAssembly_name_106_106; char* name
	}, ; 262
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 65, ; uint32_t name_length (0x41)
		ptr @_XamarinAndroidBundledAssembly_name_107_107; char* name
	}, ; 263
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 65, ; uint32_t name_length (0x41)
		ptr @_XamarinAndroidBundledAssembly_name_108_108; char* name
	}, ; 264
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 65, ; uint32_t name_length (0x41)
		ptr @_XamarinAndroidBundledAssembly_name_109_109; char* name
	}, ; 265
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 65, ; uint32_t name_length (0x41)
		ptr @_XamarinAndroidBundledAssembly_name_10a_10a; char* name
	}, ; 266
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 65, ; uint32_t name_length (0x41)
		ptr @_XamarinAndroidBundledAssembly_name_10b_10b; char* name
	}, ; 267
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 65, ; uint32_t name_length (0x41)
		ptr @_XamarinAndroidBundledAssembly_name_10c_10c; char* name
	}, ; 268
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 65, ; uint32_t name_length (0x41)
		ptr @_XamarinAndroidBundledAssembly_name_10d_10d; char* name
	}, ; 269
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 65, ; uint32_t name_length (0x41)
		ptr @_XamarinAndroidBundledAssembly_name_10e_10e; char* name
	}, ; 270
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 65, ; uint32_t name_length (0x41)
		ptr @_XamarinAndroidBundledAssembly_name_10f_10f; char* name
	}, ; 271
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 65, ; uint32_t name_length (0x41)
		ptr @_XamarinAndroidBundledAssembly_name_110_110; char* name
	}, ; 272
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 65, ; uint32_t name_length (0x41)
		ptr @_XamarinAndroidBundledAssembly_name_111_111; char* name
	}, ; 273
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 65, ; uint32_t name_length (0x41)
		ptr @_XamarinAndroidBundledAssembly_name_112_112; char* name
	}, ; 274
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 65, ; uint32_t name_length (0x41)
		ptr @_XamarinAndroidBundledAssembly_name_113_113; char* name
	}, ; 275
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 65, ; uint32_t name_length (0x41)
		ptr @_XamarinAndroidBundledAssembly_name_114_114; char* name
	}, ; 276
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 65, ; uint32_t name_length (0x41)
		ptr @_XamarinAndroidBundledAssembly_name_115_115; char* name
	}, ; 277
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 65, ; uint32_t name_length (0x41)
		ptr @_XamarinAndroidBundledAssembly_name_116_116; char* name
	}, ; 278
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 65, ; uint32_t name_length (0x41)
		ptr @_XamarinAndroidBundledAssembly_name_117_117; char* name
	}, ; 279
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 65, ; uint32_t name_length (0x41)
		ptr @_XamarinAndroidBundledAssembly_name_118_118; char* name
	}, ; 280
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 65, ; uint32_t name_length (0x41)
		ptr @_XamarinAndroidBundledAssembly_name_119_119; char* name
	}, ; 281
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 65, ; uint32_t name_length (0x41)
		ptr @_XamarinAndroidBundledAssembly_name_11a_11a; char* name
	}, ; 282
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 65, ; uint32_t name_length (0x41)
		ptr @_XamarinAndroidBundledAssembly_name_11b_11b; char* name
	}, ; 283
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 65, ; uint32_t name_length (0x41)
		ptr @_XamarinAndroidBundledAssembly_name_11c_11c; char* name
	}, ; 284
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 65, ; uint32_t name_length (0x41)
		ptr @_XamarinAndroidBundledAssembly_name_11d_11d; char* name
	}, ; 285
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 65, ; uint32_t name_length (0x41)
		ptr @_XamarinAndroidBundledAssembly_name_11e_11e; char* name
	}, ; 286
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 65, ; uint32_t name_length (0x41)
		ptr @_XamarinAndroidBundledAssembly_name_11f_11f; char* name
	}, ; 287
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 65, ; uint32_t name_length (0x41)
		ptr @_XamarinAndroidBundledAssembly_name_120_120; char* name
	}, ; 288
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 65, ; uint32_t name_length (0x41)
		ptr @_XamarinAndroidBundledAssembly_name_121_121; char* name
	}, ; 289
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 65, ; uint32_t name_length (0x41)
		ptr @_XamarinAndroidBundledAssembly_name_122_122; char* name
	}, ; 290
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 65, ; uint32_t name_length (0x41)
		ptr @_XamarinAndroidBundledAssembly_name_123_123; char* name
	}, ; 291
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 65, ; uint32_t name_length (0x41)
		ptr @_XamarinAndroidBundledAssembly_name_124_124; char* name
	}, ; 292
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 65, ; uint32_t name_length (0x41)
		ptr @_XamarinAndroidBundledAssembly_name_125_125; char* name
	}, ; 293
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 65, ; uint32_t name_length (0x41)
		ptr @_XamarinAndroidBundledAssembly_name_126_126; char* name
	}, ; 294
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 65, ; uint32_t name_length (0x41)
		ptr @_XamarinAndroidBundledAssembly_name_127_127; char* name
	}, ; 295
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 65, ; uint32_t name_length (0x41)
		ptr @_XamarinAndroidBundledAssembly_name_128_128; char* name
	}, ; 296
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 65, ; uint32_t name_length (0x41)
		ptr @_XamarinAndroidBundledAssembly_name_129_129; char* name
	}, ; 297
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 65, ; uint32_t name_length (0x41)
		ptr @_XamarinAndroidBundledAssembly_name_12a_12a; char* name
	}, ; 298
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 65, ; uint32_t name_length (0x41)
		ptr @_XamarinAndroidBundledAssembly_name_12b_12b; char* name
	}, ; 299
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 65, ; uint32_t name_length (0x41)
		ptr @_XamarinAndroidBundledAssembly_name_12c_12c; char* name
	}, ; 300
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 65, ; uint32_t name_length (0x41)
		ptr @_XamarinAndroidBundledAssembly_name_12d_12d; char* name
	}, ; 301
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 65, ; uint32_t name_length (0x41)
		ptr @_XamarinAndroidBundledAssembly_name_12e_12e; char* name
	}, ; 302
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 65, ; uint32_t name_length (0x41)
		ptr @_XamarinAndroidBundledAssembly_name_12f_12f; char* name
	}, ; 303
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 65, ; uint32_t name_length (0x41)
		ptr @_XamarinAndroidBundledAssembly_name_130_130; char* name
	}, ; 304
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 65, ; uint32_t name_length (0x41)
		ptr @_XamarinAndroidBundledAssembly_name_131_131; char* name
	}, ; 305
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 65, ; uint32_t name_length (0x41)
		ptr @_XamarinAndroidBundledAssembly_name_132_132; char* name
	}, ; 306
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 65, ; uint32_t name_length (0x41)
		ptr @_XamarinAndroidBundledAssembly_name_133_133; char* name
	}, ; 307
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 65, ; uint32_t name_length (0x41)
		ptr @_XamarinAndroidBundledAssembly_name_134_134; char* name
	} ; 308
], align 16

@assembly_store_bundled_assemblies = dso_local local_unnamed_addr global [0 x %struct.AssemblyStoreSingleAssemblyRuntimeData] zeroinitializer, align 8

@assembly_stores = dso_local local_unnamed_addr global [0 x %struct.AssemblyStoreRuntimeData] zeroinitializer, align 8

; Strings
@.str.0 = private unnamed_addr constant [7 x i8] c"normal\00", align 1

; Application environment variables name:value pairs
@.env.0 = private unnamed_addr constant [29 x i8] c"DOTNET_MODIFIABLE_ASSEMBLIES\00", align 16
@.env.1 = private unnamed_addr constant [6 x i8] c"Debug\00", align 1
@.env.2 = private unnamed_addr constant [15 x i8] c"MONO_GC_PARAMS\00", align 1
@.env.3 = private unnamed_addr constant [21 x i8] c"major=marksweep-conc\00", align 16
@.env.4 = private unnamed_addr constant [15 x i8] c"MONO_LOG_LEVEL\00", align 1
@.env.5 = private unnamed_addr constant [5 x i8] c"info\00", align 1
@.env.6 = private unnamed_addr constant [17 x i8] c"XAMARIN_BUILD_ID\00", align 16
@.env.7 = private unnamed_addr constant [37 x i8] c"ec4300d6-f0bf-46a2-a535-1f32b2629ec0\00", align 16
@.env.8 = private unnamed_addr constant [28 x i8] c"XA_HTTP_CLIENT_HANDLER_TYPE\00", align 16
@.env.9 = private unnamed_addr constant [42 x i8] c"Xamarin.Android.Net.AndroidMessageHandler\00", align 16
@.env.10 = private unnamed_addr constant [29 x i8] c"__XA_PACKAGE_NAMING_POLICY__\00", align 16
@.env.11 = private unnamed_addr constant [15 x i8] c"LowercaseCrc64\00", align 1

;ApplicationConfig
@.ApplicationConfig.0_android_package_name = private unnamed_addr constant [25 x i8] c"com.companyname.mauiapp1\00", align 16

;DSOCacheEntry
@.DSOCacheEntry.0_name = private unnamed_addr constant [35 x i8] c"libSystem.IO.Compression.Native.so\00", align 16
@.DSOCacheEntry.1_name = private unnamed_addr constant [20 x i8] c"libSystem.Native.so\00", align 16
@.DSOCacheEntry.2_name = private unnamed_addr constant [50 x i8] c"libSystem.Security.Cryptography.Native.Android.so\00", align 16
@.DSOCacheEntry.3_name = private unnamed_addr constant [30 x i8] c"libmono-component-debugger.so\00", align 16
@.DSOCacheEntry.4_name = private unnamed_addr constant [32 x i8] c"libmono-component-hot_reload.so\00", align 16
@.DSOCacheEntry.5_name = private unnamed_addr constant [35 x i8] c"libmono-component-marshal-ilgen.so\00", align 16
@.DSOCacheEntry.6_name = private unnamed_addr constant [19 x i8] c"libmonosgen-2.0.so\00", align 16
@.DSOCacheEntry.7_name = private unnamed_addr constant [16 x i8] c"libmonodroid.so\00", align 16
@.DSOCacheEntry.8_name = private unnamed_addr constant [31 x i8] c"libxamarin-debug-app-helper.so\00", align 16
@.DSOCacheEntry.9_name = private unnamed_addr constant [23 x i8] c"libaot-MauiApp1.dll.so\00", align 16
@.DSOCacheEntry.10_name = private unnamed_addr constant [51 x i8] c"libaot-_Microsoft.Android.Resource.Designer.dll.so\00", align 16
@.DSOCacheEntry.11_name = private unnamed_addr constant [31 x i8] c"libaot-Microsoft.CSharp.dll.so\00", align 16
@.DSOCacheEntry.12_name = private unnamed_addr constant [41 x i8] c"libaot-Microsoft.VisualBasic.Core.dll.so\00", align 16
@.DSOCacheEntry.13_name = private unnamed_addr constant [36 x i8] c"libaot-Microsoft.VisualBasic.dll.so\00", align 16
@.DSOCacheEntry.14_name = private unnamed_addr constant [41 x i8] c"libaot-Microsoft.Win32.Primitives.dll.so\00", align 16
@.DSOCacheEntry.15_name = private unnamed_addr constant [39 x i8] c"libaot-Microsoft.Win32.Registry.dll.so\00", align 16
@.DSOCacheEntry.16_name = private unnamed_addr constant [32 x i8] c"libaot-System.AppContext.dll.so\00", align 16
@.DSOCacheEntry.17_name = private unnamed_addr constant [29 x i8] c"libaot-System.Buffers.dll.so\00", align 16
@.DSOCacheEntry.18_name = private unnamed_addr constant [44 x i8] c"libaot-System.Collections.Concurrent.dll.so\00", align 16
@.DSOCacheEntry.19_name = private unnamed_addr constant [43 x i8] c"libaot-System.Collections.Immutable.dll.so\00", align 16
@.DSOCacheEntry.20_name = private unnamed_addr constant [44 x i8] c"libaot-System.Collections.NonGeneric.dll.so\00", align 16
@.DSOCacheEntry.21_name = private unnamed_addr constant [45 x i8] c"libaot-System.Collections.Specialized.dll.so\00", align 16
@.DSOCacheEntry.22_name = private unnamed_addr constant [33 x i8] c"libaot-System.Collections.dll.so\00", align 16
@.DSOCacheEntry.23_name = private unnamed_addr constant [48 x i8] c"libaot-System.ComponentModel.Annotations.dll.so\00", align 16
@.DSOCacheEntry.24_name = private unnamed_addr constant [52 x i8] c"libaot-System.ComponentModel.DataAnnotations.dll.so\00", align 16
@.DSOCacheEntry.25_name = private unnamed_addr constant [52 x i8] c"libaot-System.ComponentModel.EventBasedAsync.dll.so\00", align 16
@.DSOCacheEntry.26_name = private unnamed_addr constant [47 x i8] c"libaot-System.ComponentModel.Primitives.dll.so\00", align 16
@.DSOCacheEntry.27_name = private unnamed_addr constant [50 x i8] c"libaot-System.ComponentModel.TypeConverter.dll.so\00", align 16
@.DSOCacheEntry.28_name = private unnamed_addr constant [36 x i8] c"libaot-System.ComponentModel.dll.so\00", align 16
@.DSOCacheEntry.29_name = private unnamed_addr constant [35 x i8] c"libaot-System.Configuration.dll.so\00", align 16
@.DSOCacheEntry.30_name = private unnamed_addr constant [29 x i8] c"libaot-System.Console.dll.so\00", align 16
@.DSOCacheEntry.31_name = private unnamed_addr constant [26 x i8] c"libaot-System.Core.dll.so\00", align 16
@.DSOCacheEntry.32_name = private unnamed_addr constant [33 x i8] c"libaot-System.Data.Common.dll.so\00", align 16
@.DSOCacheEntry.33_name = private unnamed_addr constant [44 x i8] c"libaot-System.Data.DataSetExtensions.dll.so\00", align 16
@.DSOCacheEntry.34_name = private unnamed_addr constant [26 x i8] c"libaot-System.Data.dll.so\00", align 16
@.DSOCacheEntry.35_name = private unnamed_addr constant [43 x i8] c"libaot-System.Diagnostics.Contracts.dll.so\00", align 16
@.DSOCacheEntry.36_name = private unnamed_addr constant [39 x i8] c"libaot-System.Diagnostics.Debug.dll.so\00", align 16
@.DSOCacheEntry.37_name = private unnamed_addr constant [50 x i8] c"libaot-System.Diagnostics.DiagnosticSource.dll.so\00", align 16
@.DSOCacheEntry.38_name = private unnamed_addr constant [49 x i8] c"libaot-System.Diagnostics.FileVersionInfo.dll.so\00", align 16
@.DSOCacheEntry.39_name = private unnamed_addr constant [41 x i8] c"libaot-System.Diagnostics.Process.dll.so\00", align 16
@.DSOCacheEntry.40_name = private unnamed_addr constant [44 x i8] c"libaot-System.Diagnostics.StackTrace.dll.so\00", align 16
@.DSOCacheEntry.41_name = private unnamed_addr constant [57 x i8] c"libaot-System.Diagnostics.TextWriterTraceListener.dll.so\00", align 16
@.DSOCacheEntry.42_name = private unnamed_addr constant [39 x i8] c"libaot-System.Diagnostics.Tools.dll.so\00", align 16
@.DSOCacheEntry.43_name = private unnamed_addr constant [45 x i8] c"libaot-System.Diagnostics.TraceSource.dll.so\00", align 16
@.DSOCacheEntry.44_name = private unnamed_addr constant [41 x i8] c"libaot-System.Diagnostics.Tracing.dll.so\00", align 16
@.DSOCacheEntry.45_name = private unnamed_addr constant [40 x i8] c"libaot-System.Drawing.Primitives.dll.so\00", align 16
@.DSOCacheEntry.46_name = private unnamed_addr constant [29 x i8] c"libaot-System.Drawing.dll.so\00", align 16
@.DSOCacheEntry.47_name = private unnamed_addr constant [37 x i8] c"libaot-System.Dynamic.Runtime.dll.so\00", align 16
@.DSOCacheEntry.48_name = private unnamed_addr constant [34 x i8] c"libaot-System.Formats.Asn1.dll.so\00", align 16
@.DSOCacheEntry.49_name = private unnamed_addr constant [33 x i8] c"libaot-System.Formats.Tar.dll.so\00", align 16
@.DSOCacheEntry.50_name = private unnamed_addr constant [45 x i8] c"libaot-System.Globalization.Calendars.dll.so\00", align 16
@.DSOCacheEntry.51_name = private unnamed_addr constant [46 x i8] c"libaot-System.Globalization.Extensions.dll.so\00", align 16
@.DSOCacheEntry.52_name = private unnamed_addr constant [35 x i8] c"libaot-System.Globalization.dll.so\00", align 16
@.DSOCacheEntry.53_name = private unnamed_addr constant [43 x i8] c"libaot-System.IO.Compression.Brotli.dll.so\00", align 16
@.DSOCacheEntry.54_name = private unnamed_addr constant [47 x i8] c"libaot-System.IO.Compression.FileSystem.dll.so\00", align 16
@.DSOCacheEntry.55_name = private unnamed_addr constant [44 x i8] c"libaot-System.IO.Compression.ZipFile.dll.so\00", align 16
@.DSOCacheEntry.56_name = private unnamed_addr constant [36 x i8] c"libaot-System.IO.Compression.dll.so\00", align 16
@.DSOCacheEntry.57_name = private unnamed_addr constant [49 x i8] c"libaot-System.IO.FileSystem.AccessControl.dll.so\00", align 16
@.DSOCacheEntry.58_name = private unnamed_addr constant [45 x i8] c"libaot-System.IO.FileSystem.DriveInfo.dll.so\00", align 16
@.DSOCacheEntry.59_name = private unnamed_addr constant [46 x i8] c"libaot-System.IO.FileSystem.Primitives.dll.so\00", align 16
@.DSOCacheEntry.60_name = private unnamed_addr constant [43 x i8] c"libaot-System.IO.FileSystem.Watcher.dll.so\00", align 16
@.DSOCacheEntry.61_name = private unnamed_addr constant [35 x i8] c"libaot-System.IO.FileSystem.dll.so\00", align 16
@.DSOCacheEntry.62_name = private unnamed_addr constant [40 x i8] c"libaot-System.IO.IsolatedStorage.dll.so\00", align 16
@.DSOCacheEntry.63_name = private unnamed_addr constant [42 x i8] c"libaot-System.IO.MemoryMappedFiles.dll.so\00", align 16
@.DSOCacheEntry.64_name = private unnamed_addr constant [44 x i8] c"libaot-System.IO.Pipes.AccessControl.dll.so\00", align 16
@.DSOCacheEntry.65_name = private unnamed_addr constant [30 x i8] c"libaot-System.IO.Pipes.dll.so\00", align 16
@.DSOCacheEntry.66_name = private unnamed_addr constant [46 x i8] c"libaot-System.IO.UnmanagedMemoryStream.dll.so\00", align 16
@.DSOCacheEntry.67_name = private unnamed_addr constant [24 x i8] c"libaot-System.IO.dll.so\00", align 16
@.DSOCacheEntry.68_name = private unnamed_addr constant [38 x i8] c"libaot-System.Linq.Expressions.dll.so\00", align 16
@.DSOCacheEntry.69_name = private unnamed_addr constant [35 x i8] c"libaot-System.Linq.Parallel.dll.so\00", align 16
@.DSOCacheEntry.70_name = private unnamed_addr constant [36 x i8] c"libaot-System.Linq.Queryable.dll.so\00", align 16
@.DSOCacheEntry.71_name = private unnamed_addr constant [26 x i8] c"libaot-System.Linq.dll.so\00", align 16
@.DSOCacheEntry.72_name = private unnamed_addr constant [28 x i8] c"libaot-System.Memory.dll.so\00", align 16
@.DSOCacheEntry.73_name = private unnamed_addr constant [35 x i8] c"libaot-System.Net.Http.Json.dll.so\00", align 16
@.DSOCacheEntry.74_name = private unnamed_addr constant [30 x i8] c"libaot-System.Net.Http.dll.so\00", align 16
@.DSOCacheEntry.75_name = private unnamed_addr constant [38 x i8] c"libaot-System.Net.HttpListener.dll.so\00", align 16
@.DSOCacheEntry.76_name = private unnamed_addr constant [30 x i8] c"libaot-System.Net.Mail.dll.so\00", align 16
@.DSOCacheEntry.77_name = private unnamed_addr constant [40 x i8] c"libaot-System.Net.NameResolution.dll.so\00", align 16
@.DSOCacheEntry.78_name = private unnamed_addr constant [44 x i8] c"libaot-System.Net.NetworkInformation.dll.so\00", align 16
@.DSOCacheEntry.79_name = private unnamed_addr constant [30 x i8] c"libaot-System.Net.Ping.dll.so\00", align 16
@.DSOCacheEntry.80_name = private unnamed_addr constant [36 x i8] c"libaot-System.Net.Primitives.dll.so\00", align 16
@.DSOCacheEntry.81_name = private unnamed_addr constant [30 x i8] c"libaot-System.Net.Quic.dll.so\00", align 16
@.DSOCacheEntry.82_name = private unnamed_addr constant [34 x i8] c"libaot-System.Net.Requests.dll.so\00", align 16
@.DSOCacheEntry.83_name = private unnamed_addr constant [34 x i8] c"libaot-System.Net.Security.dll.so\00", align 16
@.DSOCacheEntry.84_name = private unnamed_addr constant [38 x i8] c"libaot-System.Net.ServicePoint.dll.so\00", align 16
@.DSOCacheEntry.85_name = private unnamed_addr constant [33 x i8] c"libaot-System.Net.Sockets.dll.so\00", align 16
@.DSOCacheEntry.86_name = private unnamed_addr constant [35 x i8] c"libaot-System.Net.WebClient.dll.so\00", align 16
@.DSOCacheEntry.87_name = private unnamed_addr constant [45 x i8] c"libaot-System.Net.WebHeaderCollection.dll.so\00", align 16
@.DSOCacheEntry.88_name = private unnamed_addr constant [34 x i8] c"libaot-System.Net.WebProxy.dll.so\00", align 16
@.DSOCacheEntry.89_name = private unnamed_addr constant [43 x i8] c"libaot-System.Net.WebSockets.Client.dll.so\00", align 16
@.DSOCacheEntry.90_name = private unnamed_addr constant [36 x i8] c"libaot-System.Net.WebSockets.dll.so\00", align 16
@.DSOCacheEntry.91_name = private unnamed_addr constant [25 x i8] c"libaot-System.Net.dll.so\00", align 16
@.DSOCacheEntry.92_name = private unnamed_addr constant [38 x i8] c"libaot-System.Numerics.Vectors.dll.so\00", align 16
@.DSOCacheEntry.93_name = private unnamed_addr constant [30 x i8] c"libaot-System.Numerics.dll.so\00", align 16
@.DSOCacheEntry.94_name = private unnamed_addr constant [33 x i8] c"libaot-System.ObjectModel.dll.so\00", align 16
@.DSOCacheEntry.95_name = private unnamed_addr constant [55 x i8] c"libaot-System.Private.DataContractSerialization.dll.so\00", align 16
@.DSOCacheEntry.96_name = private unnamed_addr constant [33 x i8] c"libaot-System.Private.Uri.dll.so\00", align 16
@.DSOCacheEntry.97_name = private unnamed_addr constant [38 x i8] c"libaot-System.Private.Xml.Linq.dll.so\00", align 16
@.DSOCacheEntry.98_name = private unnamed_addr constant [33 x i8] c"libaot-System.Private.Xml.dll.so\00", align 16
@.DSOCacheEntry.99_name = private unnamed_addr constant [46 x i8] c"libaot-System.Reflection.DispatchProxy.dll.so\00", align 16
@.DSOCacheEntry.100_name = private unnamed_addr constant [50 x i8] c"libaot-System.Reflection.Emit.ILGeneration.dll.so\00", align 16
@.DSOCacheEntry.101_name = private unnamed_addr constant [49 x i8] c"libaot-System.Reflection.Emit.Lightweight.dll.so\00", align 16
@.DSOCacheEntry.102_name = private unnamed_addr constant [37 x i8] c"libaot-System.Reflection.Emit.dll.so\00", align 16
@.DSOCacheEntry.103_name = private unnamed_addr constant [43 x i8] c"libaot-System.Reflection.Extensions.dll.so\00", align 16
@.DSOCacheEntry.104_name = private unnamed_addr constant [41 x i8] c"libaot-System.Reflection.Metadata.dll.so\00", align 16
@.DSOCacheEntry.105_name = private unnamed_addr constant [43 x i8] c"libaot-System.Reflection.Primitives.dll.so\00", align 16
@.DSOCacheEntry.106_name = private unnamed_addr constant [47 x i8] c"libaot-System.Reflection.TypeExtensions.dll.so\00", align 16
@.DSOCacheEntry.107_name = private unnamed_addr constant [32 x i8] c"libaot-System.Reflection.dll.so\00", align 16
@.DSOCacheEntry.108_name = private unnamed_addr constant [38 x i8] c"libaot-System.Resources.Reader.dll.so\00", align 16
@.DSOCacheEntry.109_name = private unnamed_addr constant [47 x i8] c"libaot-System.Resources.ResourceManager.dll.so\00", align 16
@.DSOCacheEntry.110_name = private unnamed_addr constant [38 x i8] c"libaot-System.Resources.Writer.dll.so\00", align 16
@.DSOCacheEntry.111_name = private unnamed_addr constant [53 x i8] c"libaot-System.Runtime.CompilerServices.Unsafe.dll.so\00", align 16
@.DSOCacheEntry.112_name = private unnamed_addr constant [54 x i8] c"libaot-System.Runtime.CompilerServices.VisualC.dll.so\00", align 16
@.DSOCacheEntry.113_name = private unnamed_addr constant [40 x i8] c"libaot-System.Runtime.Extensions.dll.so\00", align 16
@.DSOCacheEntry.114_name = private unnamed_addr constant [37 x i8] c"libaot-System.Runtime.Handles.dll.so\00", align 16
@.DSOCacheEntry.115_name = private unnamed_addr constant [56 x i8] c"libaot-System.Runtime.InteropServices.JavaScript.dll.so\00", align 16
@.DSOCacheEntry.116_name = private unnamed_addr constant [64 x i8] c"libaot-System.Runtime.InteropServices.RuntimeInformation.dll.so\00", align 16
@.DSOCacheEntry.117_name = private unnamed_addr constant [45 x i8] c"libaot-System.Runtime.InteropServices.dll.so\00", align 16
@.DSOCacheEntry.118_name = private unnamed_addr constant [40 x i8] c"libaot-System.Runtime.Intrinsics.dll.so\00", align 16
@.DSOCacheEntry.119_name = private unnamed_addr constant [36 x i8] c"libaot-System.Runtime.Loader.dll.so\00", align 16
@.DSOCacheEntry.120_name = private unnamed_addr constant [38 x i8] c"libaot-System.Runtime.Numerics.dll.so\00", align 16
@.DSOCacheEntry.121_name = private unnamed_addr constant [54 x i8] c"libaot-System.Runtime.Serialization.Formatters.dll.so\00", align 16
@.DSOCacheEntry.122_name = private unnamed_addr constant [48 x i8] c"libaot-System.Runtime.Serialization.Json.dll.so\00", align 16
@.DSOCacheEntry.123_name = private unnamed_addr constant [54 x i8] c"libaot-System.Runtime.Serialization.Primitives.dll.so\00", align 16
@.DSOCacheEntry.124_name = private unnamed_addr constant [47 x i8] c"libaot-System.Runtime.Serialization.Xml.dll.so\00", align 16
@.DSOCacheEntry.125_name = private unnamed_addr constant [43 x i8] c"libaot-System.Runtime.Serialization.dll.so\00", align 16
@.DSOCacheEntry.126_name = private unnamed_addr constant [29 x i8] c"libaot-System.Runtime.dll.so\00", align 16
@.DSOCacheEntry.127_name = private unnamed_addr constant [44 x i8] c"libaot-System.Security.AccessControl.dll.so\00", align 16
@.DSOCacheEntry.128_name = private unnamed_addr constant [37 x i8] c"libaot-System.Security.Claims.dll.so\00", align 16
@.DSOCacheEntry.129_name = private unnamed_addr constant [54 x i8] c"libaot-System.Security.Cryptography.Algorithms.dll.so\00", align 16
@.DSOCacheEntry.130_name = private unnamed_addr constant [47 x i8] c"libaot-System.Security.Cryptography.Cng.dll.so\00", align 16
@.DSOCacheEntry.131_name = private unnamed_addr constant [47 x i8] c"libaot-System.Security.Cryptography.Csp.dll.so\00", align 16
@.DSOCacheEntry.132_name = private unnamed_addr constant [52 x i8] c"libaot-System.Security.Cryptography.Encoding.dll.so\00", align 16
@.DSOCacheEntry.133_name = private unnamed_addr constant [51 x i8] c"libaot-System.Security.Cryptography.OpenSsl.dll.so\00", align 16
@.DSOCacheEntry.134_name = private unnamed_addr constant [54 x i8] c"libaot-System.Security.Cryptography.Primitives.dll.so\00", align 16
@.DSOCacheEntry.135_name = private unnamed_addr constant [60 x i8] c"libaot-System.Security.Cryptography.X509Certificates.dll.so\00", align 16
@.DSOCacheEntry.136_name = private unnamed_addr constant [43 x i8] c"libaot-System.Security.Cryptography.dll.so\00", align 16
@.DSOCacheEntry.137_name = private unnamed_addr constant [48 x i8] c"libaot-System.Security.Principal.Windows.dll.so\00", align 16
@.DSOCacheEntry.138_name = private unnamed_addr constant [40 x i8] c"libaot-System.Security.Principal.dll.so\00", align 16
@.DSOCacheEntry.139_name = private unnamed_addr constant [43 x i8] c"libaot-System.Security.SecureString.dll.so\00", align 16
@.DSOCacheEntry.140_name = private unnamed_addr constant [30 x i8] c"libaot-System.Security.dll.so\00", align 16
@.DSOCacheEntry.141_name = private unnamed_addr constant [38 x i8] c"libaot-System.ServiceModel.Web.dll.so\00", align 16
@.DSOCacheEntry.142_name = private unnamed_addr constant [36 x i8] c"libaot-System.ServiceProcess.dll.so\00", align 16
@.DSOCacheEntry.143_name = private unnamed_addr constant [45 x i8] c"libaot-System.Text.Encoding.CodePages.dll.so\00", align 16
@.DSOCacheEntry.144_name = private unnamed_addr constant [46 x i8] c"libaot-System.Text.Encoding.Extensions.dll.so\00", align 16
@.DSOCacheEntry.145_name = private unnamed_addr constant [35 x i8] c"libaot-System.Text.Encoding.dll.so\00", align 16
@.DSOCacheEntry.146_name = private unnamed_addr constant [40 x i8] c"libaot-System.Text.Encodings.Web.dll.so\00", align 16
@.DSOCacheEntry.147_name = private unnamed_addr constant [31 x i8] c"libaot-System.Text.Json.dll.so\00", align 16
@.DSOCacheEntry.148_name = private unnamed_addr constant [45 x i8] c"libaot-System.Text.RegularExpressions.dll.so\00", align 16
@.DSOCacheEntry.149_name = private unnamed_addr constant [40 x i8] c"libaot-System.Threading.Channels.dll.so\00", align 16
@.DSOCacheEntry.150_name = private unnamed_addr constant [42 x i8] c"libaot-System.Threading.Overlapped.dll.so\00", align 16
@.DSOCacheEntry.151_name = private unnamed_addr constant [46 x i8] c"libaot-System.Threading.Tasks.Dataflow.dll.so\00", align 16
@.DSOCacheEntry.152_name = private unnamed_addr constant [48 x i8] c"libaot-System.Threading.Tasks.Extensions.dll.so\00", align 16
@.DSOCacheEntry.153_name = private unnamed_addr constant [46 x i8] c"libaot-System.Threading.Tasks.Parallel.dll.so\00", align 16
@.DSOCacheEntry.154_name = private unnamed_addr constant [37 x i8] c"libaot-System.Threading.Tasks.dll.so\00", align 16
@.DSOCacheEntry.155_name = private unnamed_addr constant [38 x i8] c"libaot-System.Threading.Thread.dll.so\00", align 16
@.DSOCacheEntry.156_name = private unnamed_addr constant [42 x i8] c"libaot-System.Threading.ThreadPool.dll.so\00", align 16
@.DSOCacheEntry.157_name = private unnamed_addr constant [37 x i8] c"libaot-System.Threading.Timer.dll.so\00", align 16
@.DSOCacheEntry.158_name = private unnamed_addr constant [31 x i8] c"libaot-System.Threading.dll.so\00", align 16
@.DSOCacheEntry.159_name = private unnamed_addr constant [40 x i8] c"libaot-System.Transactions.Local.dll.so\00", align 16
@.DSOCacheEntry.160_name = private unnamed_addr constant [34 x i8] c"libaot-System.Transactions.dll.so\00", align 16
@.DSOCacheEntry.161_name = private unnamed_addr constant [32 x i8] c"libaot-System.ValueTuple.dll.so\00", align 16
@.DSOCacheEntry.162_name = private unnamed_addr constant [37 x i8] c"libaot-System.Web.HttpUtility.dll.so\00", align 16
@.DSOCacheEntry.163_name = private unnamed_addr constant [25 x i8] c"libaot-System.Web.dll.so\00", align 16
@.DSOCacheEntry.164_name = private unnamed_addr constant [29 x i8] c"libaot-System.Windows.dll.so\00", align 16
@.DSOCacheEntry.165_name = private unnamed_addr constant [30 x i8] c"libaot-System.Xml.Linq.dll.so\00", align 16
@.DSOCacheEntry.166_name = private unnamed_addr constant [38 x i8] c"libaot-System.Xml.ReaderWriter.dll.so\00", align 16
@.DSOCacheEntry.167_name = private unnamed_addr constant [39 x i8] c"libaot-System.Xml.Serialization.dll.so\00", align 16
@.DSOCacheEntry.168_name = private unnamed_addr constant [35 x i8] c"libaot-System.Xml.XDocument.dll.so\00", align 16
@.DSOCacheEntry.169_name = private unnamed_addr constant [41 x i8] c"libaot-System.Xml.XPath.XDocument.dll.so\00", align 16
@.DSOCacheEntry.170_name = private unnamed_addr constant [31 x i8] c"libaot-System.Xml.XPath.dll.so\00", align 16
@.DSOCacheEntry.171_name = private unnamed_addr constant [37 x i8] c"libaot-System.Xml.XmlDocument.dll.so\00", align 16
@.DSOCacheEntry.172_name = private unnamed_addr constant [39 x i8] c"libaot-System.Xml.XmlSerializer.dll.so\00", align 16
@.DSOCacheEntry.173_name = private unnamed_addr constant [25 x i8] c"libaot-System.Xml.dll.so\00", align 16
@.DSOCacheEntry.174_name = private unnamed_addr constant [21 x i8] c"libaot-System.dll.so\00", align 16
@.DSOCacheEntry.175_name = private unnamed_addr constant [26 x i8] c"libaot-WindowsBase.dll.so\00", align 16
@.DSOCacheEntry.176_name = private unnamed_addr constant [23 x i8] c"libaot-mscorlib.dll.so\00", align 16
@.DSOCacheEntry.177_name = private unnamed_addr constant [26 x i8] c"libaot-netstandard.dll.so\00", align 16
@.DSOCacheEntry.178_name = private unnamed_addr constant [27 x i8] c"libaot-Java.Interop.dll.so\00", align 16
@.DSOCacheEntry.179_name = private unnamed_addr constant [34 x i8] c"libaot-Mono.Android.Export.dll.so\00", align 16
@.DSOCacheEntry.180_name = private unnamed_addr constant [35 x i8] c"libaot-Mono.Android.Runtime.dll.so\00", align 16
@.DSOCacheEntry.181_name = private unnamed_addr constant [27 x i8] c"libaot-Mono.Android.dll.so\00", align 16
@.DSOCacheEntry.182_name = private unnamed_addr constant [36 x i8] c"libaot-CommunityToolkit.Mvvm.dll.so\00", align 16
@.DSOCacheEntry.183_name = private unnamed_addr constant [25 x i8] c"libaot-GoogleGson.dll.so\00", align 16
@.DSOCacheEntry.184_name = private unnamed_addr constant [49 x i8] c"libaot-Microsoft.Extensions.Configuration.dll.so\00", align 16
@.DSOCacheEntry.185_name = private unnamed_addr constant [62 x i8] c"libaot-Microsoft.Extensions.Configuration.Abstractions.dll.so\00", align 16
@.DSOCacheEntry.186_name = private unnamed_addr constant [55 x i8] c"libaot-Microsoft.Extensions.DependencyInjection.dll.so\00", align 16
@.DSOCacheEntry.187_name = private unnamed_addr constant [68 x i8] c"libaot-Microsoft.Extensions.DependencyInjection.Abstractions.dll.so\00", align 16
@.DSOCacheEntry.188_name = private unnamed_addr constant [43 x i8] c"libaot-Microsoft.Extensions.Logging.dll.so\00", align 16
@.DSOCacheEntry.189_name = private unnamed_addr constant [56 x i8] c"libaot-Microsoft.Extensions.Logging.Abstractions.dll.so\00", align 16
@.DSOCacheEntry.190_name = private unnamed_addr constant [49 x i8] c"libaot-Microsoft.Extensions.Logging.Debug.dll.so\00", align 16
@.DSOCacheEntry.191_name = private unnamed_addr constant [43 x i8] c"libaot-Microsoft.Extensions.Options.dll.so\00", align 16
@.DSOCacheEntry.192_name = private unnamed_addr constant [46 x i8] c"libaot-Microsoft.Extensions.Primitives.dll.so\00", align 16
@.DSOCacheEntry.193_name = private unnamed_addr constant [52 x i8] c"libaot-Microsoft.Maui.Controls.Compatibility.dll.so\00", align 16
@.DSOCacheEntry.194_name = private unnamed_addr constant [38 x i8] c"libaot-Microsoft.Maui.Controls.dll.so\00", align 16
@.DSOCacheEntry.195_name = private unnamed_addr constant [43 x i8] c"libaot-Microsoft.Maui.Controls.Xaml.dll.so\00", align 16
@.DSOCacheEntry.196_name = private unnamed_addr constant [29 x i8] c"libaot-Microsoft.Maui.dll.so\00", align 16
@.DSOCacheEntry.197_name = private unnamed_addr constant [40 x i8] c"libaot-Microsoft.Maui.Essentials.dll.so\00", align 16
@.DSOCacheEntry.198_name = private unnamed_addr constant [38 x i8] c"libaot-Microsoft.Maui.Graphics.dll.so\00", align 16
@.DSOCacheEntry.199_name = private unnamed_addr constant [30 x i8] c"libaot-Newtonsoft.Json.dll.so\00", align 16
@.DSOCacheEntry.200_name = private unnamed_addr constant [36 x i8] c"libaot-Xamarin.Android.Glide.dll.so\00", align 16
@.DSOCacheEntry.201_name = private unnamed_addr constant [48 x i8] c"libaot-Xamarin.Android.Glide.Annotations.dll.so\00", align 16
@.DSOCacheEntry.202_name = private unnamed_addr constant [49 x i8] c"libaot-Xamarin.Android.Glide.DiskLruCache.dll.so\00", align 16
@.DSOCacheEntry.203_name = private unnamed_addr constant [47 x i8] c"libaot-Xamarin.Android.Glide.GifDecoder.dll.so\00", align 16
@.DSOCacheEntry.204_name = private unnamed_addr constant [40 x i8] c"libaot-Xamarin.AndroidX.Activity.dll.so\00", align 16
@.DSOCacheEntry.205_name = private unnamed_addr constant [44 x i8] c"libaot-Xamarin.AndroidX.Activity.Ktx.dll.so\00", align 16
@.DSOCacheEntry.206_name = private unnamed_addr constant [42 x i8] c"libaot-Xamarin.AndroidX.Annotation.dll.so\00", align 16
@.DSOCacheEntry.207_name = private unnamed_addr constant [55 x i8] c"libaot-Xamarin.AndroidX.Annotation.Experimental.dll.so\00", align 16
@.DSOCacheEntry.208_name = private unnamed_addr constant [46 x i8] c"libaot-Xamarin.AndroidX.Annotation.Jvm.dll.so\00", align 16
@.DSOCacheEntry.209_name = private unnamed_addr constant [41 x i8] c"libaot-Xamarin.AndroidX.AppCompat.dll.so\00", align 16
@.DSOCacheEntry.210_name = private unnamed_addr constant [60 x i8] c"libaot-Xamarin.AndroidX.AppCompat.AppCompatResources.dll.so\00", align 16
@.DSOCacheEntry.211_name = private unnamed_addr constant [48 x i8] c"libaot-Xamarin.AndroidX.Arch.Core.Common.dll.so\00", align 16
@.DSOCacheEntry.212_name = private unnamed_addr constant [49 x i8] c"libaot-Xamarin.AndroidX.Arch.Core.Runtime.dll.so\00", align 16
@.DSOCacheEntry.213_name = private unnamed_addr constant [39 x i8] c"libaot-Xamarin.AndroidX.Browser.dll.so\00", align 16
@.DSOCacheEntry.214_name = private unnamed_addr constant [40 x i8] c"libaot-Xamarin.AndroidX.CardView.dll.so\00", align 16
@.DSOCacheEntry.215_name = private unnamed_addr constant [42 x i8] c"libaot-Xamarin.AndroidX.Collection.dll.so\00", align 16
@.DSOCacheEntry.216_name = private unnamed_addr constant [46 x i8] c"libaot-Xamarin.AndroidX.Collection.Ktx.dll.so\00", align 16
@.DSOCacheEntry.217_name = private unnamed_addr constant [50 x i8] c"libaot-Xamarin.AndroidX.Concurrent.Futures.dll.so\00", align 16
@.DSOCacheEntry.218_name = private unnamed_addr constant [48 x i8] c"libaot-Xamarin.AndroidX.ConstraintLayout.dll.so\00", align 16
@.DSOCacheEntry.219_name = private unnamed_addr constant [53 x i8] c"libaot-Xamarin.AndroidX.ConstraintLayout.Core.dll.so\00", align 16
@.DSOCacheEntry.220_name = private unnamed_addr constant [49 x i8] c"libaot-Xamarin.AndroidX.CoordinatorLayout.dll.so\00", align 16
@.DSOCacheEntry.221_name = private unnamed_addr constant [36 x i8] c"libaot-Xamarin.AndroidX.Core.dll.so\00", align 16
@.DSOCacheEntry.222_name = private unnamed_addr constant [45 x i8] c"libaot-Xamarin.AndroidX.Core.Core.Ktx.dll.so\00", align 16
@.DSOCacheEntry.223_name = private unnamed_addr constant [45 x i8] c"libaot-Xamarin.AndroidX.CursorAdapter.dll.so\00", align 16
@.DSOCacheEntry.224_name = private unnamed_addr constant [42 x i8] c"libaot-Xamarin.AndroidX.CustomView.dll.so\00", align 16
@.DSOCacheEntry.225_name = private unnamed_addr constant [59 x i8] c"libaot-Xamarin.AndroidX.CustomView.PoolingContainer.dll.so\00", align 16
@.DSOCacheEntry.226_name = private unnamed_addr constant [44 x i8] c"libaot-Xamarin.AndroidX.DocumentFile.dll.so\00", align 16
@.DSOCacheEntry.227_name = private unnamed_addr constant [44 x i8] c"libaot-Xamarin.AndroidX.DrawerLayout.dll.so\00", align 16
@.DSOCacheEntry.228_name = private unnamed_addr constant [48 x i8] c"libaot-Xamarin.AndroidX.DynamicAnimation.dll.so\00", align 16
@.DSOCacheEntry.229_name = private unnamed_addr constant [38 x i8] c"libaot-Xamarin.AndroidX.Emoji2.dll.so\00", align 16
@.DSOCacheEntry.230_name = private unnamed_addr constant [50 x i8] c"libaot-Xamarin.AndroidX.Emoji2.ViewsHelper.dll.so\00", align 16
@.DSOCacheEntry.231_name = private unnamed_addr constant [45 x i8] c"libaot-Xamarin.AndroidX.ExifInterface.dll.so\00", align 16
@.DSOCacheEntry.232_name = private unnamed_addr constant [40 x i8] c"libaot-Xamarin.AndroidX.Fragment.dll.so\00", align 16
@.DSOCacheEntry.233_name = private unnamed_addr constant [44 x i8] c"libaot-Xamarin.AndroidX.Fragment.Ktx.dll.so\00", align 16
@.DSOCacheEntry.234_name = private unnamed_addr constant [44 x i8] c"libaot-Xamarin.AndroidX.Interpolator.dll.so\00", align 16
@.DSOCacheEntry.235_name = private unnamed_addr constant [57 x i8] c"libaot-Xamarin.AndroidX.Legacy.Support.Core.Utils.dll.so\00", align 16
@.DSOCacheEntry.236_name = private unnamed_addr constant [48 x i8] c"libaot-Xamarin.AndroidX.Lifecycle.Common.dll.so\00", align 16
@.DSOCacheEntry.237_name = private unnamed_addr constant [50 x i8] c"libaot-Xamarin.AndroidX.Lifecycle.LiveData.dll.so\00", align 16
@.DSOCacheEntry.238_name = private unnamed_addr constant [55 x i8] c"libaot-Xamarin.AndroidX.Lifecycle.LiveData.Core.dll.so\00", align 16
@.DSOCacheEntry.239_name = private unnamed_addr constant [59 x i8] c"libaot-Xamarin.AndroidX.Lifecycle.LiveData.Core.Ktx.dll.so\00", align 16
@.DSOCacheEntry.240_name = private unnamed_addr constant [49 x i8] c"libaot-Xamarin.AndroidX.Lifecycle.Process.dll.so\00", align 16
@.DSOCacheEntry.241_name = private unnamed_addr constant [49 x i8] c"libaot-Xamarin.AndroidX.Lifecycle.Runtime.dll.so\00", align 16
@.DSOCacheEntry.242_name = private unnamed_addr constant [53 x i8] c"libaot-Xamarin.AndroidX.Lifecycle.Runtime.Ktx.dll.so\00", align 16
@.DSOCacheEntry.243_name = private unnamed_addr constant [51 x i8] c"libaot-Xamarin.AndroidX.Lifecycle.ViewModel.dll.so\00", align 16
@.DSOCacheEntry.244_name = private unnamed_addr constant [55 x i8] c"libaot-Xamarin.AndroidX.Lifecycle.ViewModel.Ktx.dll.so\00", align 16
@.DSOCacheEntry.245_name = private unnamed_addr constant [61 x i8] c"libaot-Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll.so\00", align 16
@.DSOCacheEntry.246_name = private unnamed_addr constant [38 x i8] c"libaot-Xamarin.AndroidX.Loader.dll.so\00", align 16
@.DSOCacheEntry.247_name = private unnamed_addr constant [53 x i8] c"libaot-Xamarin.AndroidX.LocalBroadcastManager.dll.so\00", align 16
@.DSOCacheEntry.248_name = private unnamed_addr constant [49 x i8] c"libaot-Xamarin.AndroidX.Navigation.Common.dll.so\00", align 16
@.DSOCacheEntry.249_name = private unnamed_addr constant [51 x i8] c"libaot-Xamarin.AndroidX.Navigation.Fragment.dll.so\00", align 16
@.DSOCacheEntry.250_name = private unnamed_addr constant [50 x i8] c"libaot-Xamarin.AndroidX.Navigation.Runtime.dll.so\00", align 16
@.DSOCacheEntry.251_name = private unnamed_addr constant [45 x i8] c"libaot-Xamarin.AndroidX.Navigation.UI.dll.so\00", align 16
@.DSOCacheEntry.252_name = private unnamed_addr constant [37 x i8] c"libaot-Xamarin.AndroidX.Print.dll.so\00", align 16
@.DSOCacheEntry.253_name = private unnamed_addr constant [65 x i8] c"libaot-Xamarin.AndroidX.ProfileInstaller.ProfileInstaller.dll.so\00", align 16
@.DSOCacheEntry.254_name = private unnamed_addr constant [44 x i8] c"libaot-Xamarin.AndroidX.RecyclerView.dll.so\00", align 16
@.DSOCacheEntry.255_name = private unnamed_addr constant [61 x i8] c"libaot-Xamarin.AndroidX.ResourceInspection.Annotation.dll.so\00", align 16
@.DSOCacheEntry.256_name = private unnamed_addr constant [42 x i8] c"libaot-Xamarin.AndroidX.SavedState.dll.so\00", align 16
@.DSOCacheEntry.257_name = private unnamed_addr constant [57 x i8] c"libaot-Xamarin.AndroidX.SavedState.SavedState.Ktx.dll.so\00", align 16
@.DSOCacheEntry.258_name = private unnamed_addr constant [55 x i8] c"libaot-Xamarin.AndroidX.Security.SecurityCrypto.dll.so\00", align 16
@.DSOCacheEntry.259_name = private unnamed_addr constant [49 x i8] c"libaot-Xamarin.AndroidX.SlidingPaneLayout.dll.so\00", align 16
@.DSOCacheEntry.260_name = private unnamed_addr constant [54 x i8] c"libaot-Xamarin.AndroidX.Startup.StartupRuntime.dll.so\00", align 16
@.DSOCacheEntry.261_name = private unnamed_addr constant [50 x i8] c"libaot-Xamarin.AndroidX.SwipeRefreshLayout.dll.so\00", align 16
@.DSOCacheEntry.262_name = private unnamed_addr constant [47 x i8] c"libaot-Xamarin.AndroidX.Tracing.Tracing.dll.so\00", align 16
@.DSOCacheEntry.263_name = private unnamed_addr constant [42 x i8] c"libaot-Xamarin.AndroidX.Transition.dll.so\00", align 16
@.DSOCacheEntry.264_name = private unnamed_addr constant [46 x i8] c"libaot-Xamarin.AndroidX.VectorDrawable.dll.so\00", align 16
@.DSOCacheEntry.265_name = private unnamed_addr constant [55 x i8] c"libaot-Xamarin.AndroidX.VectorDrawable.Animated.dll.so\00", align 16
@.DSOCacheEntry.266_name = private unnamed_addr constant [51 x i8] c"libaot-Xamarin.AndroidX.VersionedParcelable.dll.so\00", align 16
@.DSOCacheEntry.267_name = private unnamed_addr constant [41 x i8] c"libaot-Xamarin.AndroidX.ViewPager.dll.so\00", align 16
@.DSOCacheEntry.268_name = private unnamed_addr constant [42 x i8] c"libaot-Xamarin.AndroidX.ViewPager2.dll.so\00", align 16
@.DSOCacheEntry.269_name = private unnamed_addr constant [38 x i8] c"libaot-Xamarin.AndroidX.Window.dll.so\00", align 16
@.DSOCacheEntry.270_name = private unnamed_addr constant [59 x i8] c"libaot-Xamarin.AndroidX.Window.Extensions.Core.Core.dll.so\00", align 16
@.DSOCacheEntry.271_name = private unnamed_addr constant [46 x i8] c"libaot-Xamarin.Google.Android.Material.dll.so\00", align 16
@.DSOCacheEntry.272_name = private unnamed_addr constant [28 x i8] c"libaot-Jsr305Binding.dll.so\00", align 16
@.DSOCacheEntry.273_name = private unnamed_addr constant [49 x i8] c"libaot-Xamarin.Google.Crypto.Tink.Android.dll.so\00", align 16
@.DSOCacheEntry.274_name = private unnamed_addr constant [52 x i8] c"libaot-Xamarin.Google.ErrorProne.Annotations.dll.so\00", align 16
@.DSOCacheEntry.275_name = private unnamed_addr constant [52 x i8] c"libaot-Xamarin.Google.Guava.ListenableFuture.dll.so\00", align 16
@.DSOCacheEntry.276_name = private unnamed_addr constant [44 x i8] c"libaot-Xamarin.Jetbrains.Annotations.dll.so\00", align 16
@.DSOCacheEntry.277_name = private unnamed_addr constant [36 x i8] c"libaot-Xamarin.Kotlin.StdLib.dll.so\00", align 16
@.DSOCacheEntry.278_name = private unnamed_addr constant [43 x i8] c"libaot-Xamarin.Kotlin.StdLib.Common.dll.so\00", align 16
@.DSOCacheEntry.279_name = private unnamed_addr constant [41 x i8] c"libaot-Xamarin.Kotlin.StdLib.Jdk7.dll.so\00", align 16
@.DSOCacheEntry.280_name = private unnamed_addr constant [41 x i8] c"libaot-Xamarin.Kotlin.StdLib.Jdk8.dll.so\00", align 16
@.DSOCacheEntry.281_name = private unnamed_addr constant [49 x i8] c"libaot-Xamarin.KotlinX.Coroutines.Android.dll.so\00", align 16
@.DSOCacheEntry.282_name = private unnamed_addr constant [50 x i8] c"libaot-Xamarin.KotlinX.Coroutines.Core.Jvm.dll.so\00", align 16
@.DSOCacheEntry.283_name = private unnamed_addr constant [37 x i8] c"libaot-System.Private.CoreLib.dll.so\00", align 16

; Metadata
!llvm.module.flags = !{!0, !1}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!llvm.ident = !{!2}
!2 = !{!"Xamarin.Android remotes/origin/release/8.0.1xx @ af27162bee43b7fecdca59b4f67aa8c175cbc875"}
!3 = !{!4, !4, i64 0}
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
