; ModuleID = 'environment.x86.ll'
source_filename = "environment.x86.ll"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i686-unknown-linux-android21"

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

@mono_aot_mode_name = dso_local local_unnamed_addr constant ptr @.str.0, align 4

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
], align 4

; System properties defined by the application
@app_system_properties = dso_local local_unnamed_addr constant [0 x ptr] zeroinitializer, align 4

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
	i32 62, ; uint32_t bundled_assembly_name_width (0x3e)
	i32 2, ; uint32_t number_of_assembly_store_files (0x2)
	i32 1686, ; uint32_t number_of_dso_cache_entries (0x696)
	i32 33560135, ; uint32_t android_runtime_jnienv_class_token (0x2001647)
	i32 100757451, ; uint32_t jnienv_initialize_method_token (0x6016fcb)
	i32 100757450, ; uint32_t jnienv_registerjninatives_method_token (0x6016fca)
	i32 0, ; uint32_t jni_remapping_replacement_type_count (0x0)
	i32 0, ; uint32_t jni_remapping_replacement_method_index_entry_count (0x0)
	i32 3, ; uint32_t mono_components_mask (0x3)
	ptr @.ApplicationConfig.0_android_package_name; char* android_package_name
}, align 4

; DSO cache entries
@dso_cache = dso_local local_unnamed_addr global [1686 x %struct.DSOCacheEntry] [
	%struct.DSOCacheEntry {
		i64 1541521, ; hash 0x178591, from name: libaot-Newtonsoft.Json.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.199_name, ; name: libaot-Newtonsoft.Json.dll.so
		ptr null; void* handle (0x0)
	}, ; 0
	%struct.DSOCacheEntry {
		i64 8289632, ; hash 0x7e7d60, from name: aot-System.Net.NetworkInformation
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.78_name, ; name: libaot-System.Net.NetworkInformation.dll.so
		ptr null; void* handle (0x0)
	}, ; 1
	%struct.DSOCacheEntry {
		i64 13864422, ; hash 0xd38de6, from name: libaot-System.Runtime.InteropServices.JavaScript.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.115_name, ; name: libaot-System.Runtime.InteropServices.JavaScript.dll.so
		ptr null; void* handle (0x0)
	}, ; 2
	%struct.DSOCacheEntry {
		i64 17081729, ; hash 0x104a581, from name: System.Runtime.Extensions.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.113_name, ; name: libaot-System.Runtime.Extensions.dll.so
		ptr null; void* handle (0x0)
	}, ; 3
	%struct.DSOCacheEntry {
		i64 20489825, ; hash 0x138a661, from name: aot-System.Collections.NonGeneric.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.20_name, ; name: libaot-System.Collections.NonGeneric.dll.so
		ptr null; void* handle (0x0)
	}, ; 4
	%struct.DSOCacheEntry {
		i64 23059322, ; hash 0x15fdb7a, from name: Xamarin.AndroidX.SlidingPaneLayout.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.259_name, ; name: libaot-Xamarin.AndroidX.SlidingPaneLayout.dll.so
		ptr null; void* handle (0x0)
	}, ; 5
	%struct.DSOCacheEntry {
		i64 28034731, ; hash 0x1abc6ab, from name: aot-System.Security.SecureString.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.139_name, ; name: libaot-System.Security.SecureString.dll.so
		ptr null; void* handle (0x0)
	}, ; 6
	%struct.DSOCacheEntry {
		i64 29424343, ; hash 0x1c0fad7, from name: libaot-Mono.Android.Runtime
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.180_name, ; name: libaot-Mono.Android.Runtime.dll.so
		ptr null; void* handle (0x0)
	}, ; 7
	%struct.DSOCacheEntry {
		i64 30047619, ; hash 0x1ca7d83, from name: aot-System.Reflection.Extensions
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.103_name, ; name: libaot-System.Reflection.Extensions.dll.so
		ptr null; void* handle (0x0)
	}, ; 8
	%struct.DSOCacheEntry {
		i64 30500132, ; hash 0x1d16524, from name: aot-System.Net
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.91_name, ; name: libaot-System.Net.dll.so
		ptr null; void* handle (0x0)
	}, ; 9
	%struct.DSOCacheEntry {
		i64 31265257, ; hash 0x1dd11e9, from name: libaot-Microsoft.Win32.Primitives.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.14_name, ; name: libaot-Microsoft.Win32.Primitives.dll.so
		ptr null; void* handle (0x0)
	}, ; 10
	%struct.DSOCacheEntry {
		i64 32687329, ; hash 0x1f2c4e1, from name: Xamarin.AndroidX.Lifecycle.Runtime
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.241_name, ; name: libaot-Xamarin.AndroidX.Lifecycle.Runtime.dll.so
		ptr null; void* handle (0x0)
	}, ; 11
	%struct.DSOCacheEntry {
		i64 34839235, ; hash 0x2139ac3, from name: System.IO.FileSystem.DriveInfo
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.58_name, ; name: libaot-System.IO.FileSystem.DriveInfo.dll.so
		ptr null; void* handle (0x0)
	}, ; 12
	%struct.DSOCacheEntry {
		i64 36746888, ; hash 0x230b688, from name: aot-Xamarin.KotlinX.Coroutines.Core.Jvm
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.282_name, ; name: libaot-Xamarin.KotlinX.Coroutines.Core.Jvm.dll.so
		ptr null; void* handle (0x0)
	}, ; 13
	%struct.DSOCacheEntry {
		i64 39568167, ; hash 0x25bc327, from name: aot-Xamarin.AndroidX.Print.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.252_name, ; name: libaot-Xamarin.AndroidX.Print.dll.so
		ptr null; void* handle (0x0)
	}, ; 14
	%struct.DSOCacheEntry {
		i64 40056995, ; hash 0x26338a3, from name: libaot-Xamarin.AndroidX.VectorDrawable
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.264_name, ; name: libaot-Xamarin.AndroidX.VectorDrawable.dll.so
		ptr null; void* handle (0x0)
	}, ; 15
	%struct.DSOCacheEntry {
		i64 41816848, ; hash 0x27e1310, from name: System.Net.Ping.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.79_name, ; name: libaot-System.Net.Ping.dll.so
		ptr null; void* handle (0x0)
	}, ; 16
	%struct.DSOCacheEntry {
		i64 42639949, ; hash 0x28aa24d, from name: System.Threading.Thread
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.155_name, ; name: libaot-System.Threading.Thread.dll.so
		ptr null; void* handle (0x0)
	}, ; 17
	%struct.DSOCacheEntry {
		i64 49414358, ; hash 0x2f200d6, from name: aot-Xamarin.AndroidX.Lifecycle.LiveData.Core.Ktx.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.239_name, ; name: libaot-Xamarin.AndroidX.Lifecycle.LiveData.Core.Ktx.dll.so
		ptr null; void* handle (0x0)
	}, ; 18
	%struct.DSOCacheEntry {
		i64 56327589, ; hash 0x35b7da5, from name: System.ComponentModel.EventBasedAsync.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.25_name, ; name: libaot-System.ComponentModel.EventBasedAsync.dll.so
		ptr null; void* handle (0x0)
	}, ; 19
	%struct.DSOCacheEntry {
		i64 56604468, ; hash 0x35fb734, from name: libaot-System.Numerics.Vectors
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.92_name, ; name: libaot-System.Numerics.Vectors.dll.so
		ptr null; void* handle (0x0)
	}, ; 20
	%struct.DSOCacheEntry {
		i64 57472138, ; hash 0x36cf48a, from name: libaot-Jsr305Binding.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.272_name, ; name: libaot-Jsr305Binding.dll.so
		ptr null; void* handle (0x0)
	}, ; 21
	%struct.DSOCacheEntry {
		i64 62384850, ; hash 0x3b7ead2, from name: libaot-Xamarin.AndroidX.Core.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.221_name, ; name: libaot-Xamarin.AndroidX.Core.dll.so
		ptr null; void* handle (0x0)
	}, ; 22
	%struct.DSOCacheEntry {
		i64 66541672, ; hash 0x3f75868, from name: System.Diagnostics.StackTrace
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.40_name, ; name: libaot-System.Diagnostics.StackTrace.dll.so
		ptr null; void* handle (0x0)
	}, ; 23
	%struct.DSOCacheEntry {
		i64 68219467, ; hash 0x410f24b, from name: System.Security.Cryptography.Primitives
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.134_name, ; name: libaot-System.Security.Cryptography.Primitives.dll.so
		ptr null; void* handle (0x0)
	}, ; 24
	%struct.DSOCacheEntry {
		i64 68258583, ; hash 0x4118b17, from name: libaot-System.Diagnostics.TraceSource.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.43_name, ; name: libaot-System.Diagnostics.TraceSource.dll.so
		ptr null; void* handle (0x0)
	}, ; 25
	%struct.DSOCacheEntry {
		i64 68635670, ; hash 0x4174c16, from name: aot-System.Runtime.Serialization.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.125_name, ; name: libaot-System.Runtime.Serialization.dll.so
		ptr null; void* handle (0x0)
	}, ; 26
	%struct.DSOCacheEntry {
		i64 71759999, ; hash 0x446f87f, from name: aot-Xamarin.AndroidX.Lifecycle.Runtime
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.241_name, ; name: libaot-Xamarin.AndroidX.Lifecycle.Runtime.dll.so
		ptr null; void* handle (0x0)
	}, ; 27
	%struct.DSOCacheEntry {
		i64 75018296, ; hash 0x478b038, from name: libaot-System.Threading.Channels
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.149_name, ; name: libaot-System.Threading.Channels.dll.so
		ptr null; void* handle (0x0)
	}, ; 28
	%struct.DSOCacheEntry {
		i64 77343481, ; hash 0x49c2af9, from name: aot-System.Security.Principal.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.138_name, ; name: libaot-System.Security.Principal.dll.so
		ptr null; void* handle (0x0)
	}, ; 29
	%struct.DSOCacheEntry {
		i64 80209837, ; hash 0x4c7e7ad, from name: aot-System.Threading.Overlapped
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.150_name, ; name: libaot-System.Threading.Overlapped.dll.so
		ptr null; void* handle (0x0)
	}, ; 30
	%struct.DSOCacheEntry {
		i64 88243405, ; hash 0x5427ccd, from name: System.Private.DataContractSerialization.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.95_name, ; name: libaot-System.Private.DataContractSerialization.dll.so
		ptr null; void* handle (0x0)
	}, ; 31
	%struct.DSOCacheEntry {
		i64 89831780, ; hash 0x55ab964, from name: libaot-System.IO.Compression.FileSystem
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.54_name, ; name: libaot-System.IO.Compression.FileSystem.dll.so
		ptr null; void* handle (0x0)
	}, ; 32
	%struct.DSOCacheEntry {
		i64 94620481, ; hash 0x5a3cb41, from name: aot-netstandard
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.177_name, ; name: libaot-netstandard.dll.so
		ptr null; void* handle (0x0)
	}, ; 33
	%struct.DSOCacheEntry {
		i64 95742133, ; hash 0x5b4e8b5, from name: libaot-Xamarin.AndroidX.Lifecycle.Process.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.240_name, ; name: libaot-Xamarin.AndroidX.Lifecycle.Process.dll.so
		ptr null; void* handle (0x0)
	}, ; 34
	%struct.DSOCacheEntry {
		i64 98567696, ; hash 0x5e00610, from name: libxamarin-debug-app-helper.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.8_name, ; name: libxamarin-debug-app-helper.so
		ptr null; void* handle (0x0)
	}, ; 35
	%struct.DSOCacheEntry {
		i64 99048114, ; hash 0x5e75ab2, from name: aot-System.Resources.ResourceManager.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.109_name, ; name: libaot-System.Resources.ResourceManager.dll.so
		ptr null; void* handle (0x0)
	}, ; 36
	%struct.DSOCacheEntry {
		i64 101534019, ; hash 0x60d4943, from name: Xamarin.AndroidX.SlidingPaneLayout
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.259_name, ; name: libaot-Xamarin.AndroidX.SlidingPaneLayout.dll.so
		ptr null; void* handle (0x0)
	}, ; 37
	%struct.DSOCacheEntry {
		i64 103263224, ; hash 0x627abf8, from name: libaot-System.Net.NetworkInformation.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.78_name, ; name: libaot-System.Net.NetworkInformation.dll.so
		ptr null; void* handle (0x0)
	}, ; 38
	%struct.DSOCacheEntry {
		i64 112931486, ; hash 0x6bb329e, from name: System.Runtime.CompilerServices.Unsafe.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.111_name, ; name: libaot-System.Runtime.CompilerServices.Unsafe.dll.so
		ptr null; void* handle (0x0)
	}, ; 39
	%struct.DSOCacheEntry {
		i64 116541649, ; hash 0x6f248d1, from name: aot-Microsoft.Extensions.Logging.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.188_name, ; name: libaot-Microsoft.Extensions.Logging.dll.so
		ptr null; void* handle (0x0)
	}, ; 40
	%struct.DSOCacheEntry {
		i64 116972987, ; hash 0x6f8ddbb, from name: System.Text.Encoding.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.145_name, ; name: libaot-System.Text.Encoding.dll.so
		ptr null; void* handle (0x0)
	}, ; 41
	%struct.DSOCacheEntry {
		i64 117323195, ; hash 0x6fe35bb, from name: aot-Mono.Android.Export.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.179_name, ; name: libaot-Mono.Android.Export.dll.so
		ptr null; void* handle (0x0)
	}, ; 42
	%struct.DSOCacheEntry {
		i64 117431740, ; hash 0x6ffddbc, from name: System.Runtime.InteropServices
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.117_name, ; name: libaot-System.Runtime.InteropServices.dll.so
		ptr null; void* handle (0x0)
	}, ; 43
	%struct.DSOCacheEntry {
		i64 120434486, ; hash 0x72daf36, from name: aot-System.Security.AccessControl.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.127_name, ; name: libaot-System.Security.AccessControl.dll.so
		ptr null; void* handle (0x0)
	}, ; 44
	%struct.DSOCacheEntry {
		i64 132747680, ; hash 0x7e991a0, from name: libaot-Xamarin.AndroidX.Lifecycle.LiveData.Core
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.238_name, ; name: libaot-Xamarin.AndroidX.Lifecycle.LiveData.Core.dll.so
		ptr null; void* handle (0x0)
	}, ; 45
	%struct.DSOCacheEntry {
		i64 133558474, ; hash 0x7f5f0ca, from name: libaot-System.ComponentModel.DataAnnotations
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.24_name, ; name: libaot-System.ComponentModel.DataAnnotations.dll.so
		ptr null; void* handle (0x0)
	}, ; 46
	%struct.DSOCacheEntry {
		i64 135081502, ; hash 0x80d2e1e, from name: aot-System.Runtime.Serialization.Json
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.122_name, ; name: libaot-System.Runtime.Serialization.Json.dll.so
		ptr null; void* handle (0x0)
	}, ; 47
	%struct.DSOCacheEntry {
		i64 135821890, ; hash 0x8187a42, from name: aot-mscorlib
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.176_name, ; name: libaot-mscorlib.dll.so
		ptr null; void* handle (0x0)
	}, ; 48
	%struct.DSOCacheEntry {
		i64 142721839, ; hash 0x881c32f, from name: System.Net.WebHeaderCollection
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.87_name, ; name: libaot-System.Net.WebHeaderCollection.dll.so
		ptr null; void* handle (0x0)
	}, ; 49
	%struct.DSOCacheEntry {
		i64 144780357, ; hash 0x8a12c45, from name: libaot-System.Security.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.140_name, ; name: libaot-System.Security.dll.so
		ptr null; void* handle (0x0)
	}, ; 50
	%struct.DSOCacheEntry {
		i64 145109181, ; hash 0x8a630bd, from name: libaot-Xamarin.AndroidX.Tracing.Tracing.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.262_name, ; name: libaot-Xamarin.AndroidX.Tracing.Tracing.dll.so
		ptr null; void* handle (0x0)
	}, ; 51
	%struct.DSOCacheEntry {
		i64 152360278, ; hash 0x914d556, from name: libaot-System.Runtime.Serialization.Primitives
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.123_name, ; name: libaot-System.Runtime.Serialization.Primitives.dll.so
		ptr null; void* handle (0x0)
	}, ; 52
	%struct.DSOCacheEntry {
		i64 153552311, ; hash 0x92705b7, from name: aot-Xamarin.AndroidX.Lifecycle.LiveData.Core.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.238_name, ; name: libaot-Xamarin.AndroidX.Lifecycle.LiveData.Core.dll.so
		ptr null; void* handle (0x0)
	}, ; 53
	%struct.DSOCacheEntry {
		i64 154543565, ; hash 0x93625cd, from name: libSystem.Security.Cryptography.Native.Android
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.2_name, ; name: libSystem.Security.Cryptography.Native.Android.so
		ptr null; void* handle (0x0)
	}, ; 54
	%struct.DSOCacheEntry {
		i64 155166714, ; hash 0x93fa7fa, from name: aot-Xamarin.AndroidX.Navigation.Runtime.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.250_name, ; name: libaot-Xamarin.AndroidX.Navigation.Runtime.dll.so
		ptr null; void* handle (0x0)
	}, ; 55
	%struct.DSOCacheEntry {
		i64 155189489, ; hash 0x94000f1, from name: aot-System.Core
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.31_name, ; name: libaot-System.Core.dll.so
		ptr null; void* handle (0x0)
	}, ; 56
	%struct.DSOCacheEntry {
		i64 159306688, ; hash 0x97ed3c0, from name: System.ComponentModel.Annotations
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.23_name, ; name: libaot-System.ComponentModel.Annotations.dll.so
		ptr null; void* handle (0x0)
	}, ; 57
	%struct.DSOCacheEntry {
		i64 160724438, ; hash 0x99475d6, from name: libaot-Xamarin.AndroidX.Activity
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.204_name, ; name: libaot-Xamarin.AndroidX.Activity.dll.so
		ptr null; void* handle (0x0)
	}, ; 58
	%struct.DSOCacheEntry {
		i64 161874101, ; hash 0x9a600b5, from name: aot-System.Net.WebProxy
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.88_name, ; name: libaot-System.Net.WebProxy.dll.so
		ptr null; void* handle (0x0)
	}, ; 59
	%struct.DSOCacheEntry {
		i64 163276122, ; hash 0x9bb655a, from name: System.Runtime.Handles.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.114_name, ; name: libaot-System.Runtime.Handles.dll.so
		ptr null; void* handle (0x0)
	}, ; 60
	%struct.DSOCacheEntry {
		i64 163672870, ; hash 0x9c17326, from name: Jsr305Binding.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.272_name, ; name: libaot-Jsr305Binding.dll.so
		ptr null; void* handle (0x0)
	}, ; 61
	%struct.DSOCacheEntry {
		i64 163879434, ; hash 0x9c49a0a, from name: libaot-Xamarin.KotlinX.Coroutines.Android
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.281_name, ; name: libaot-Xamarin.KotlinX.Coroutines.Android.dll.so
		ptr null; void* handle (0x0)
	}, ; 62
	%struct.DSOCacheEntry {
		i64 165120050, ; hash 0x9d78832, from name: libaot-Xamarin.AndroidX.Lifecycle.Common
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.236_name, ; name: libaot-Xamarin.AndroidX.Lifecycle.Common.dll.so
		ptr null; void* handle (0x0)
	}, ; 63
	%struct.DSOCacheEntry {
		i64 176265551, ; hash 0xa81994f, from name: System.ServiceProcess
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.142_name, ; name: libaot-System.ServiceProcess.dll.so
		ptr null; void* handle (0x0)
	}, ; 64
	%struct.DSOCacheEntry {
		i64 176815410, ; hash 0xa89fd32, from name: Xamarin.AndroidX.Lifecycle.Common.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.236_name, ; name: libaot-Xamarin.AndroidX.Lifecycle.Common.dll.so
		ptr null; void* handle (0x0)
	}, ; 65
	%struct.DSOCacheEntry {
		i64 178651795, ; hash 0xaa60293, from name: libaot-System.Diagnostics.Tracing.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.44_name, ; name: libaot-System.Diagnostics.Tracing.dll.so
		ptr null; void* handle (0x0)
	}, ; 66
	%struct.DSOCacheEntry {
		i64 181198043, ; hash 0xaccdcdb, from name: libaot-Microsoft.Extensions.Logging.Debug.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.190_name, ; name: libaot-Microsoft.Extensions.Logging.Debug.dll.so
		ptr null; void* handle (0x0)
	}, ; 67
	%struct.DSOCacheEntry {
		i64 187781285, ; hash 0xb3150a5, from name: aot-System.Private.DataContractSerialization
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.95_name, ; name: libaot-System.Private.DataContractSerialization.dll.so
		ptr null; void* handle (0x0)
	}, ; 68
	%struct.DSOCacheEntry {
		i64 194426056, ; hash 0xb96b4c8, from name: aot-System.Xml.XmlSerializer.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.172_name, ; name: libaot-System.Xml.XmlSerializer.dll.so
		ptr null; void* handle (0x0)
	}, ; 69
	%struct.DSOCacheEntry {
		i64 195166226, ; hash 0xba20012, from name: libaot-Xamarin.AndroidX.CustomView
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.224_name, ; name: libaot-Xamarin.AndroidX.CustomView.dll.so
		ptr null; void* handle (0x0)
	}, ; 70
	%struct.DSOCacheEntry {
		i64 197501317, ; hash 0xbc5a185, from name: libaot-Microsoft.CSharp.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.11_name, ; name: libaot-Microsoft.CSharp.dll.so
		ptr null; void* handle (0x0)
	}, ; 71
	%struct.DSOCacheEntry {
		i64 200694997, ; hash 0xbf65cd5, from name: libaot-Xamarin.AndroidX.SavedState.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.256_name, ; name: libaot-Xamarin.AndroidX.SavedState.dll.so
		ptr null; void* handle (0x0)
	}, ; 72
	%struct.DSOCacheEntry {
		i64 205061960, ; hash 0xc38ff48, from name: System.ComponentModel
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.28_name, ; name: libaot-System.ComponentModel.dll.so
		ptr null; void* handle (0x0)
	}, ; 73
	%struct.DSOCacheEntry {
		i64 206071461, ; hash 0xc4866a5, from name: aot-System.Net.Requests
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.82_name, ; name: libaot-System.Net.Requests.dll.so
		ptr null; void* handle (0x0)
	}, ; 74
	%struct.DSOCacheEntry {
		i64 208299953, ; hash 0xc6a67b1, from name: aot-System.Runtime.Serialization.Json.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.122_name, ; name: libaot-System.Runtime.Serialization.Json.dll.so
		ptr null; void* handle (0x0)
	}, ; 75
	%struct.DSOCacheEntry {
		i64 215631971, ; hash 0xcda4863, from name: libaot-Xamarin.AndroidX.Lifecycle.ViewModel.Ktx
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.244_name, ; name: libaot-Xamarin.AndroidX.Lifecycle.ViewModel.Ktx.dll.so
		ptr null; void* handle (0x0)
	}, ; 76
	%struct.DSOCacheEntry {
		i64 220171995, ; hash 0xd1f8edb, from name: System.Diagnostics.Debug
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.36_name, ; name: libaot-System.Diagnostics.Debug.dll.so
		ptr null; void* handle (0x0)
	}, ; 77
	%struct.DSOCacheEntry {
		i64 222702931, ; hash 0xd462d53, from name: libaot-Xamarin.AndroidX.Lifecycle.Process
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.240_name, ; name: libaot-Xamarin.AndroidX.Lifecycle.Process.dll.so
		ptr null; void* handle (0x0)
	}, ; 78
	%struct.DSOCacheEntry {
		i64 226534500, ; hash 0xd80a464, from name: aot-System.Resources.Writer
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.110_name, ; name: libaot-System.Resources.Writer.dll.so
		ptr null; void* handle (0x0)
	}, ; 79
	%struct.DSOCacheEntry {
		i64 229294244, ; hash 0xdaac0a4, from name: monodroid.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.7_name, ; name: libmonodroid.so
		ptr null; void* handle (0x0)
	}, ; 80
	%struct.DSOCacheEntry {
		i64 231127510, ; hash 0xdc6b9d6, from name: libaot-Xamarin.AndroidX.Collection.Ktx.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.216_name, ; name: libaot-Xamarin.AndroidX.Collection.Ktx.dll.so
		ptr null; void* handle (0x0)
	}, ; 81
	%struct.DSOCacheEntry {
		i64 231409092, ; hash 0xdcb05c4, from name: System.Linq.Parallel
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.69_name, ; name: libaot-System.Linq.Parallel.dll.so
		ptr null; void* handle (0x0)
	}, ; 82
	%struct.DSOCacheEntry {
		i64 231814094, ; hash 0xdd133ce, from name: System.Globalization
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.52_name, ; name: libaot-System.Globalization.dll.so
		ptr null; void* handle (0x0)
	}, ; 83
	%struct.DSOCacheEntry {
		i64 231913179, ; hash 0xdd2b6db, from name: libaot-System.Collections.Concurrent
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.18_name, ; name: libaot-System.Collections.Concurrent.dll.so
		ptr null; void* handle (0x0)
	}, ; 84
	%struct.DSOCacheEntry {
		i64 234893954, ; hash 0xe003282, from name: libaot-Xamarin.Kotlin.StdLib.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.277_name, ; name: libaot-Xamarin.Kotlin.StdLib.dll.so
		ptr null; void* handle (0x0)
	}, ; 85
	%struct.DSOCacheEntry {
		i64 241552641, ; hash 0xe65cd01, from name: libaot-System.Runtime.Loader.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.119_name, ; name: libaot-System.Runtime.Loader.dll.so
		ptr null; void* handle (0x0)
	}, ; 86
	%struct.DSOCacheEntry {
		i64 242656290, ; hash 0xe76a422, from name: aot-System.IO.FileSystem.DriveInfo
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.58_name, ; name: libaot-System.IO.FileSystem.DriveInfo.dll.so
		ptr null; void* handle (0x0)
	}, ; 87
	%struct.DSOCacheEntry {
		i64 244483190, ; hash 0xe928476, from name: libaot-System.AppContext.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.16_name, ; name: libaot-System.AppContext.dll.so
		ptr null; void* handle (0x0)
	}, ; 88
	%struct.DSOCacheEntry {
		i64 246610117, ; hash 0xeb2f8c5, from name: System.Reflection.Emit.Lightweight
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.101_name, ; name: libaot-System.Reflection.Emit.Lightweight.dll.so
		ptr null; void* handle (0x0)
	}, ; 89
	%struct.DSOCacheEntry {
		i64 246921316, ; hash 0xeb7b864, from name: libaot-System.Text.RegularExpressions.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.148_name, ; name: libaot-System.Text.RegularExpressions.dll.so
		ptr null; void* handle (0x0)
	}, ; 90
	%struct.DSOCacheEntry {
		i64 248611060, ; hash 0xed180f4, from name: aot-Xamarin.Android.Glide.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.200_name, ; name: libaot-Xamarin.Android.Glide.dll.so
		ptr null; void* handle (0x0)
	}, ; 91
	%struct.DSOCacheEntry {
		i64 251011664, ; hash 0xef62250, from name: aot-System.Resources.Reader.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.108_name, ; name: libaot-System.Resources.Reader.dll.so
		ptr null; void* handle (0x0)
	}, ; 92
	%struct.DSOCacheEntry {
		i64 254718238, ; hash 0xf2eb11e, from name: libaot-Microsoft.Extensions.DependencyInjection
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.186_name, ; name: libaot-Microsoft.Extensions.DependencyInjection.dll.so
		ptr null; void* handle (0x0)
	}, ; 93
	%struct.DSOCacheEntry {
		i64 256041548, ; hash 0xf42e24c, from name: libaot-System.IO.UnmanagedMemoryStream
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.66_name, ; name: libaot-System.IO.UnmanagedMemoryStream.dll.so
		ptr null; void* handle (0x0)
	}, ; 94
	%struct.DSOCacheEntry {
		i64 256159533, ; hash 0xf44af2d, from name: aot-System.Runtime.Handles.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.114_name, ; name: libaot-System.Runtime.Handles.dll.so
		ptr null; void* handle (0x0)
	}, ; 95
	%struct.DSOCacheEntry {
		i64 256301664, ; hash 0xf46da60, from name: aot-Xamarin.AndroidX.Transition
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.263_name, ; name: libaot-Xamarin.AndroidX.Transition.dll.so
		ptr null; void* handle (0x0)
	}, ; 96
	%struct.DSOCacheEntry {
		i64 257906758, ; hash 0xf5f5846, from name: libaot-Xamarin.AndroidX.CoordinatorLayout
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.220_name, ; name: libaot-Xamarin.AndroidX.CoordinatorLayout.dll.so
		ptr null; void* handle (0x0)
	}, ; 97
	%struct.DSOCacheEntry {
		i64 258230989, ; hash 0xf644acd, from name: Xamarin.Kotlin.StdLib.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.277_name, ; name: libaot-Xamarin.Kotlin.StdLib.dll.so
		ptr null; void* handle (0x0)
	}, ; 98
	%struct.DSOCacheEntry {
		i64 258804407, ; hash 0xf6d0ab7, from name: aot-Xamarin.AndroidX.DocumentFile.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.226_name, ; name: libaot-Xamarin.AndroidX.DocumentFile.dll.so
		ptr null; void* handle (0x0)
	}, ; 99
	%struct.DSOCacheEntry {
		i64 260112272, ; hash 0xf80ff90, from name: libaot-System.Reflection.DispatchProxy.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.99_name, ; name: libaot-System.Reflection.DispatchProxy.dll.so
		ptr null; void* handle (0x0)
	}, ; 100
	%struct.DSOCacheEntry {
		i64 263077002, ; hash 0xfae3c8a, from name: libaot-Xamarin.AndroidX.Browser.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.213_name, ; name: libaot-Xamarin.AndroidX.Browser.dll.so
		ptr null; void* handle (0x0)
	}, ; 101
	%struct.DSOCacheEntry {
		i64 269261427, ; hash 0x100c9a73, from name: libaot-Xamarin.AndroidX.Emoji2
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.229_name, ; name: libaot-Xamarin.AndroidX.Emoji2.dll.so
		ptr null; void* handle (0x0)
	}, ; 102
	%struct.DSOCacheEntry {
		i64 270150149, ; hash 0x101a2a05, from name: System.Xml.ReaderWriter.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.166_name, ; name: libaot-System.Xml.ReaderWriter.dll.so
		ptr null; void* handle (0x0)
	}, ; 103
	%struct.DSOCacheEntry {
		i64 271750801, ; hash 0x10329691, from name: libaot-System.Security.Cryptography.X509Certificates
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.135_name, ; name: libaot-System.Security.Cryptography.X509Certificates.dll.so
		ptr null; void* handle (0x0)
	}, ; 104
	%struct.DSOCacheEntry {
		i64 272901006, ; hash 0x1044238e, from name: aot-Microsoft.Extensions.Logging.Debug
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.190_name, ; name: libaot-Microsoft.Extensions.Logging.Debug.dll.so
		ptr null; void* handle (0x0)
	}, ; 105
	%struct.DSOCacheEntry {
		i64 274845747, ; hash 0x1061d033, from name: System.Runtime.Serialization.Formatters.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.121_name, ; name: libaot-System.Runtime.Serialization.Formatters.dll.so
		ptr null; void* handle (0x0)
	}, ; 106
	%struct.DSOCacheEntry {
		i64 277114177, ; hash 0x10846d41, from name: libaot-System.Globalization.Extensions.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.51_name, ; name: libaot-System.Globalization.Extensions.dll.so
		ptr null; void* handle (0x0)
	}, ; 107
	%struct.DSOCacheEntry {
		i64 278844578, ; hash 0x109ed4a2, from name: aot-Xamarin.AndroidX.Navigation.Runtime
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.250_name, ; name: libaot-Xamarin.AndroidX.Navigation.Runtime.dll.so
		ptr null; void* handle (0x0)
	}, ; 108
	%struct.DSOCacheEntry {
		i64 280482487, ; hash 0x10b7d2b7, from name: Xamarin.AndroidX.Interpolator
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.234_name, ; name: libaot-Xamarin.AndroidX.Interpolator.dll.so
		ptr null; void* handle (0x0)
	}, ; 109
	%struct.DSOCacheEntry {
		i64 282800165, ; hash 0x10db3025, from name: System.Text.Json.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.147_name, ; name: libaot-System.Text.Json.dll.so
		ptr null; void* handle (0x0)
	}, ; 110
	%struct.DSOCacheEntry {
		i64 288807075, ; hash 0x1136d8a3, from name: libaot-System.AppContext
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.16_name, ; name: libaot-System.AppContext.dll.so
		ptr null; void* handle (0x0)
	}, ; 111
	%struct.DSOCacheEntry {
		i64 289063585, ; hash 0x113ac2a1, from name: libmono-component-debugger
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.3_name, ; name: libmono-component-debugger.so
		ptr null; void* handle (0x0)
	}, ; 112
	%struct.DSOCacheEntry {
		i64 290902364, ; hash 0x1156d15c, from name: libaot-System.Net.Quic.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.81_name, ; name: libaot-System.Net.Quic.dll.so
		ptr null; void* handle (0x0)
	}, ; 113
	%struct.DSOCacheEntry {
		i64 291265470, ; hash 0x115c5bbe, from name: libaot-Xamarin.AndroidX.Lifecycle.ViewModel.Ktx.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.244_name, ; name: libaot-Xamarin.AndroidX.Lifecycle.ViewModel.Ktx.dll.so
		ptr null; void* handle (0x0)
	}, ; 114
	%struct.DSOCacheEntry {
		i64 291348661, ; hash 0x115da0b5, from name: aot-System.Xml.ReaderWriter
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.166_name, ; name: libaot-System.Xml.ReaderWriter.dll.so
		ptr null; void* handle (0x0)
	}, ; 115
	%struct.DSOCacheEntry {
		i64 292529153, ; hash 0x116fa401, from name: libaot-Mono.Android.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.181_name, ; name: libaot-Mono.Android.dll.so
		ptr null; void* handle (0x0)
	}, ; 116
	%struct.DSOCacheEntry {
		i64 293424713, ; hash 0x117d4e49, from name: aot-System.Diagnostics.TextWriterTraceListener
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.41_name, ; name: libaot-System.Diagnostics.TextWriterTraceListener.dll.so
		ptr null; void* handle (0x0)
	}, ; 117
	%struct.DSOCacheEntry {
		i64 295725305, ; hash 0x11a068f9, from name: libaot-System.Configuration.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.29_name, ; name: libaot-System.Configuration.dll.so
		ptr null; void* handle (0x0)
	}, ; 118
	%struct.DSOCacheEntry {
		i64 300158802, ; hash 0x11e40f52, from name: aot-System.Text.Encoding.Extensions
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.144_name, ; name: libaot-System.Text.Encoding.Extensions.dll.so
		ptr null; void* handle (0x0)
	}, ; 119
	%struct.DSOCacheEntry {
		i64 315333590, ; hash 0x12cb9bd6, from name: aot-System.Text.Json
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.147_name, ; name: libaot-System.Text.Json.dll.so
		ptr null; void* handle (0x0)
	}, ; 120
	%struct.DSOCacheEntry {
		i64 318522638, ; hash 0x12fc450e, from name: Xamarin.AndroidX.Activity.Ktx.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.205_name, ; name: libaot-Xamarin.AndroidX.Activity.Ktx.dll.so
		ptr null; void* handle (0x0)
	}, ; 121
	%struct.DSOCacheEntry {
		i64 319734269, ; hash 0x130ec1fd, from name: libaot-System.Web.HttpUtility
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.162_name, ; name: libaot-System.Web.HttpUtility.dll.so
		ptr null; void* handle (0x0)
	}, ; 122
	%struct.DSOCacheEntry {
		i64 320042402, ; hash 0x131375a2, from name: aot-System.Runtime.Extensions
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.113_name, ; name: libaot-System.Runtime.Extensions.dll.so
		ptr null; void* handle (0x0)
	}, ; 123
	%struct.DSOCacheEntry {
		i64 321003452, ; hash 0x13221fbc, from name: libaot-System.ComponentModel.Primitives.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.26_name, ; name: libaot-System.ComponentModel.Primitives.dll.so
		ptr null; void* handle (0x0)
	}, ; 124
	%struct.DSOCacheEntry {
		i64 321597661, ; hash 0x132b30dd, from name: System.Numerics
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.93_name, ; name: libaot-System.Numerics.dll.so
		ptr null; void* handle (0x0)
	}, ; 125
	%struct.DSOCacheEntry {
		i64 321703249, ; hash 0x132ccd51, from name: libaot-System.Net
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.91_name, ; name: libaot-System.Net.dll.so
		ptr null; void* handle (0x0)
	}, ; 126
	%struct.DSOCacheEntry {
		i64 322645766, ; hash 0x133b2f06, from name: System.Runtime.Serialization.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.125_name, ; name: libaot-System.Runtime.Serialization.dll.so
		ptr null; void* handle (0x0)
	}, ; 127
	%struct.DSOCacheEntry {
		i64 323716037, ; hash 0x134b83c5, from name: libaot-System.Threading.ThreadPool
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.156_name, ; name: libaot-System.Threading.ThreadPool.dll.so
		ptr null; void* handle (0x0)
	}, ; 128
	%struct.DSOCacheEntry {
		i64 332565853, ; hash 0x13d28d5d, from name: libaot-System.Diagnostics.TextWriterTraceListener.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.41_name, ; name: libaot-System.Diagnostics.TextWriterTraceListener.dll.so
		ptr null; void* handle (0x0)
	}, ; 129
	%struct.DSOCacheEntry {
		i64 334172448, ; hash 0x13eb1120, from name: aot-System.ComponentModel.Primitives
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.26_name, ; name: libaot-System.ComponentModel.Primitives.dll.so
		ptr null; void* handle (0x0)
	}, ; 130
	%struct.DSOCacheEntry {
		i64 337425530, ; hash 0x141cb47a, from name: libaot-Xamarin.AndroidX.Navigation.UI.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.251_name, ; name: libaot-Xamarin.AndroidX.Navigation.UI.dll.so
		ptr null; void* handle (0x0)
	}, ; 131
	%struct.DSOCacheEntry {
		i64 338267972, ; hash 0x14298f44, from name: aot-System.Security.Cryptography.X509Certificates
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.135_name, ; name: libaot-System.Security.Cryptography.X509Certificates.dll.so
		ptr null; void* handle (0x0)
	}, ; 132
	%struct.DSOCacheEntry {
		i64 341082126, ; hash 0x1454800e, from name: libaot-Microsoft.Extensions.Logging.Abstractions
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.189_name, ; name: libaot-Microsoft.Extensions.Logging.Abstractions.dll.so
		ptr null; void* handle (0x0)
	}, ; 133
	%struct.DSOCacheEntry {
		i64 342366114, ; hash 0x146817a2, from name: Xamarin.AndroidX.Lifecycle.Common
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.236_name, ; name: libaot-Xamarin.AndroidX.Lifecycle.Common.dll.so
		ptr null; void* handle (0x0)
	}, ; 134
	%struct.DSOCacheEntry {
		i64 343631732, ; hash 0x147b6774, from name: aot-System.Security.Cryptography.Primitives.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.134_name, ; name: libaot-System.Security.Cryptography.Primitives.dll.so
		ptr null; void* handle (0x0)
	}, ; 135
	%struct.DSOCacheEntry {
		i64 344210569, ; hash 0x14843c89, from name: aot-Xamarin.AndroidX.SlidingPaneLayout
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.259_name, ; name: libaot-Xamarin.AndroidX.SlidingPaneLayout.dll.so
		ptr null; void* handle (0x0)
	}, ; 136
	%struct.DSOCacheEntry {
		i64 344938492, ; hash 0x148f57fc, from name: libaot-System.Linq.Parallel.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.69_name, ; name: libaot-System.Linq.Parallel.dll.so
		ptr null; void* handle (0x0)
	}, ; 137
	%struct.DSOCacheEntry {
		i64 348682705, ; hash 0x14c879d1, from name: libaot-Xamarin.AndroidX.Interpolator.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.234_name, ; name: libaot-Xamarin.AndroidX.Interpolator.dll.so
		ptr null; void* handle (0x0)
	}, ; 138
	%struct.DSOCacheEntry {
		i64 349605155, ; hash 0x14d68d23, from name: Xamarin.AndroidX.AppCompat.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.209_name, ; name: libaot-Xamarin.AndroidX.AppCompat.dll.so
		ptr null; void* handle (0x0)
	}, ; 139
	%struct.DSOCacheEntry {
		i64 358961578, ; hash 0x156551aa, from name: System.Transactions.Local.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.159_name, ; name: libaot-System.Transactions.Local.dll.so
		ptr null; void* handle (0x0)
	}, ; 140
	%struct.DSOCacheEntry {
		i64 359463689, ; hash 0x156cfb09, from name: libaot-System.Collections
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.22_name, ; name: libaot-System.Collections.dll.so
		ptr null; void* handle (0x0)
	}, ; 141
	%struct.DSOCacheEntry {
		i64 360082299, ; hash 0x15766b7b, from name: System.ServiceModel.Web
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.141_name, ; name: libaot-System.ServiceModel.Web.dll.so
		ptr null; void* handle (0x0)
	}, ; 142
	%struct.DSOCacheEntry {
		i64 360555245, ; hash 0x157da2ed, from name: aot-System.IO.FileSystem.AccessControl.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.57_name, ; name: libaot-System.IO.FileSystem.AccessControl.dll.so
		ptr null; void* handle (0x0)
	}, ; 143
	%struct.DSOCacheEntry {
		i64 361808798, ; hash 0x1590c39e, from name: aot-System.Diagnostics.Debug.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.36_name, ; name: libaot-System.Diagnostics.Debug.dll.so
		ptr null; void* handle (0x0)
	}, ; 144
	%struct.DSOCacheEntry {
		i64 362642348, ; hash 0x159d7bac, from name: aot-Microsoft.Win32.Registry.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.15_name, ; name: libaot-Microsoft.Win32.Registry.dll.so
		ptr null; void* handle (0x0)
	}, ; 145
	%struct.DSOCacheEntry {
		i64 367117185, ; hash 0x15e1c381, from name: aot-Microsoft.Extensions.DependencyInjection.Abstractions
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.187_name, ; name: libaot-Microsoft.Extensions.DependencyInjection.Abstractions.dll.so
		ptr null; void* handle (0x0)
	}, ; 146
	%struct.DSOCacheEntry {
		i64 367780167, ; hash 0x15ebe147, from name: System.IO.Pipes
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.65_name, ; name: libaot-System.IO.Pipes.dll.so
		ptr null; void* handle (0x0)
	}, ; 147
	%struct.DSOCacheEntry {
		i64 368543857, ; hash 0x15f78871, from name: aot-System.Threading.Tasks.Extensions
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.152_name, ; name: libaot-System.Threading.Tasks.Extensions.dll.so
		ptr null; void* handle (0x0)
	}, ; 148
	%struct.DSOCacheEntry {
		i64 369872811, ; hash 0x160bcfab, from name: System.Memory.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.72_name, ; name: libaot-System.Memory.dll.so
		ptr null; void* handle (0x0)
	}, ; 149
	%struct.DSOCacheEntry {
		i64 370456273, ; hash 0x1614b6d1, from name: libaot-Xamarin.Android.Glide.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.200_name, ; name: libaot-Xamarin.Android.Glide.dll.so
		ptr null; void* handle (0x0)
	}, ; 150
	%struct.DSOCacheEntry {
		i64 373174037, ; hash 0x163e2f15, from name: Xamarin.AndroidX.Startup.StartupRuntime.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.260_name, ; name: libaot-Xamarin.AndroidX.Startup.StartupRuntime.dll.so
		ptr null; void* handle (0x0)
	}, ; 151
	%struct.DSOCacheEntry {
		i64 373418536, ; hash 0x1641ea28, from name: libaot-Xamarin.AndroidX.ViewPager2.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.268_name, ; name: libaot-Xamarin.AndroidX.ViewPager2.dll.so
		ptr null; void* handle (0x0)
	}, ; 152
	%struct.DSOCacheEntry {
		i64 374914964, ; hash 0x1658bf94, from name: System.Transactions.Local
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.159_name, ; name: libaot-System.Transactions.Local.dll.so
		ptr null; void* handle (0x0)
	}, ; 153
	%struct.DSOCacheEntry {
		i64 376197646, ; hash 0x166c520e, from name: System.Security.Cryptography.OpenSsl.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.133_name, ; name: libaot-System.Security.Cryptography.OpenSsl.dll.so
		ptr null; void* handle (0x0)
	}, ; 154
	%struct.DSOCacheEntry {
		i64 380613663, ; hash 0x16afb41f, from name: Xamarin.AndroidX.CustomView.PoolingContainer.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.225_name, ; name: libaot-Xamarin.AndroidX.CustomView.PoolingContainer.dll.so
		ptr null; void* handle (0x0)
	}, ; 155
	%struct.DSOCacheEntry {
		i64 382319162, ; hash 0x16c9ba3a, from name: Xamarin.Android.Glide.Annotations.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.201_name, ; name: libaot-Xamarin.Android.Glide.Annotations.dll.so
		ptr null; void* handle (0x0)
	}, ; 156
	%struct.DSOCacheEntry {
		i64 385859456, ; hash 0x16ffbf80, from name: libaot-System.Xml.Serialization.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.167_name, ; name: libaot-System.Xml.Serialization.dll.so
		ptr null; void* handle (0x0)
	}, ; 157
	%struct.DSOCacheEntry {
		i64 390538561, ; hash 0x17472541, from name: aot-Microsoft.Maui.Controls.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.194_name, ; name: libaot-Microsoft.Maui.Controls.dll.so
		ptr null; void* handle (0x0)
	}, ; 158
	%struct.DSOCacheEntry {
		i64 391820838, ; hash 0x175ab626, from name: libaot-System.ServiceModel.Web
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.141_name, ; name: libaot-System.ServiceModel.Web.dll.so
		ptr null; void* handle (0x0)
	}, ; 159
	%struct.DSOCacheEntry {
		i64 391888984, ; hash 0x175bc058, from name: mono-component-marshal-ilgen.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.5_name, ; name: libmono-component-marshal-ilgen.so
		ptr null; void* handle (0x0)
	}, ; 160
	%struct.DSOCacheEntry {
		i64 392066202, ; hash 0x175e749a, from name: libaot-Xamarin.AndroidX.Lifecycle.LiveData.Core.Ktx
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.239_name, ; name: libaot-Xamarin.AndroidX.Lifecycle.LiveData.Core.Ktx.dll.so
		ptr null; void* handle (0x0)
	}, ; 161
	%struct.DSOCacheEntry {
		i64 395744057, ; hash 0x17969339, from name: _Microsoft.Android.Resource.Designer
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.10_name, ; name: libaot-_Microsoft.Android.Resource.Designer.dll.so
		ptr null; void* handle (0x0)
	}, ; 162
	%struct.DSOCacheEntry {
		i64 399735549, ; hash 0x17d37afd, from name: Xamarin.AndroidX.Lifecycle.Runtime.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.241_name, ; name: libaot-Xamarin.AndroidX.Lifecycle.Runtime.dll.so
		ptr null; void* handle (0x0)
	}, ; 163
	%struct.DSOCacheEntry {
		i64 400507790, ; hash 0x17df438e, from name: aot-System.Threading.Channels
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.149_name, ; name: libaot-System.Threading.Channels.dll.so
		ptr null; void* handle (0x0)
	}, ; 164
	%struct.DSOCacheEntry {
		i64 403441872, ; hash 0x180c08d0, from name: WindowsBase
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.175_name, ; name: libaot-WindowsBase.dll.so
		ptr null; void* handle (0x0)
	}, ; 165
	%struct.DSOCacheEntry {
		i64 407227773, ; hash 0x1845cd7d, from name: System.Net.NameResolution.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.77_name, ; name: libaot-System.Net.NameResolution.dll.so
		ptr null; void* handle (0x0)
	}, ; 166
	%struct.DSOCacheEntry {
		i64 412333082, ; hash 0x1893b41a, from name: System.Security.Cryptography.Primitives.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.134_name, ; name: libaot-System.Security.Cryptography.Primitives.dll.so
		ptr null; void* handle (0x0)
	}, ; 167
	%struct.DSOCacheEntry {
		i64 416086010, ; hash 0x18ccf7fa, from name: aot-System.IO.Pipes.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.65_name, ; name: libaot-System.IO.Pipes.dll.so
		ptr null; void* handle (0x0)
	}, ; 168
	%struct.DSOCacheEntry {
		i64 416958118, ; hash 0x18da46a6, from name: libaot-System.Xml.XPath.XDocument.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.169_name, ; name: libaot-System.Xml.XPath.XDocument.dll.so
		ptr null; void* handle (0x0)
	}, ; 169
	%struct.DSOCacheEntry {
		i64 424625646, ; hash 0x194f45ee, from name: System.Threading.Overlapped.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.150_name, ; name: libaot-System.Threading.Overlapped.dll.so
		ptr null; void* handle (0x0)
	}, ; 170
	%struct.DSOCacheEntry {
		i64 426289886, ; hash 0x1968aade, from name: aot-System.Net.WebHeaderCollection.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.87_name, ; name: libaot-System.Net.WebHeaderCollection.dll.so
		ptr null; void* handle (0x0)
	}, ; 171
	%struct.DSOCacheEntry {
		i64 426763054, ; hash 0x196fe32e, from name: aot-Xamarin.AndroidX.Navigation.UI
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.251_name, ; name: libaot-Xamarin.AndroidX.Navigation.UI.dll.so
		ptr null; void* handle (0x0)
	}, ; 172
	%struct.DSOCacheEntry {
		i64 427882388, ; hash 0x1980f794, from name: libaot-System.Threading.Timer
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.157_name, ; name: libaot-System.Threading.Timer.dll.so
		ptr null; void* handle (0x0)
	}, ; 173
	%struct.DSOCacheEntry {
		i64 428806289, ; hash 0x198f1091, from name: libaot-System.ComponentModel.EventBasedAsync.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.25_name, ; name: libaot-System.ComponentModel.EventBasedAsync.dll.so
		ptr null; void* handle (0x0)
	}, ; 174
	%struct.DSOCacheEntry {
		i64 434472748, ; hash 0x19e5872c, from name: System.Diagnostics.Contracts.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.35_name, ; name: libaot-System.Diagnostics.Contracts.dll.so
		ptr null; void* handle (0x0)
	}, ; 175
	%struct.DSOCacheEntry {
		i64 438393095, ; hash 0x1a215907, from name: aot-System.Data
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.34_name, ; name: libaot-System.Data.dll.so
		ptr null; void* handle (0x0)
	}, ; 176
	%struct.DSOCacheEntry {
		i64 441335492, ; hash 0x1a4e3ec4, from name: Xamarin.AndroidX.ConstraintLayout.Core
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.219_name, ; name: libaot-Xamarin.AndroidX.ConstraintLayout.Core.dll.so
		ptr null; void* handle (0x0)
	}, ; 177
	%struct.DSOCacheEntry {
		i64 442565967, ; hash 0x1a61054f, from name: System.Collections
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.22_name, ; name: libaot-System.Collections.dll.so
		ptr null; void* handle (0x0)
	}, ; 178
	%struct.DSOCacheEntry {
		i64 451504562, ; hash 0x1ae969b2, from name: System.Security.Cryptography.X509Certificates
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.135_name, ; name: libaot-System.Security.Cryptography.X509Certificates.dll.so
		ptr null; void* handle (0x0)
	}, ; 179
	%struct.DSOCacheEntry {
		i64 451696200, ; hash 0x1aec5648, from name: libaot-System.IO.Compression
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.56_name, ; name: libaot-System.IO.Compression.dll.so
		ptr null; void* handle (0x0)
	}, ; 180
	%struct.DSOCacheEntry {
		i64 459786305, ; hash 0x1b67c841, from name: Xamarin.AndroidX.AppCompat.AppCompatResources.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.210_name, ; name: libaot-Xamarin.AndroidX.AppCompat.AppCompatResources.dll.so
		ptr null; void* handle (0x0)
	}, ; 181
	%struct.DSOCacheEntry {
		i64 463154707, ; hash 0x1b9b2e13, from name: aot-System.Memory.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.72_name, ; name: libaot-System.Memory.dll.so
		ptr null; void* handle (0x0)
	}, ; 182
	%struct.DSOCacheEntry {
		i64 465846621, ; hash 0x1bc4415d, from name: mscorlib
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.176_name, ; name: libaot-mscorlib.dll.so
		ptr null; void* handle (0x0)
	}, ; 183
	%struct.DSOCacheEntry {
		i64 467362390, ; hash 0x1bdb6256, from name: aot-Xamarin.Kotlin.StdLib
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.277_name, ; name: libaot-Xamarin.Kotlin.StdLib.dll.so
		ptr null; void* handle (0x0)
	}, ; 184
	%struct.DSOCacheEntry {
		i64 467725327, ; hash 0x1be0ec0f, from name: aot-Xamarin.AndroidX.Loader
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.246_name, ; name: libaot-Xamarin.AndroidX.Loader.dll.so
		ptr null; void* handle (0x0)
	}, ; 185
	%struct.DSOCacheEntry {
		i64 468077253, ; hash 0x1be64ac5, from name: aot-Xamarin.AndroidX.Fragment.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.232_name, ; name: libaot-Xamarin.AndroidX.Fragment.dll.so
		ptr null; void* handle (0x0)
	}, ; 186
	%struct.DSOCacheEntry {
		i64 470576266, ; hash 0x1c0c6c8a, from name: aot-Xamarin.AndroidX.Lifecycle.LiveData.Core.Ktx
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.239_name, ; name: libaot-Xamarin.AndroidX.Lifecycle.LiveData.Core.Ktx.dll.so
		ptr null; void* handle (0x0)
	}, ; 187
	%struct.DSOCacheEntry {
		i64 472815995, ; hash 0x1c2e997b, from name: libaot-System.Reflection.Extensions
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.103_name, ; name: libaot-System.Reflection.Extensions.dll.so
		ptr null; void* handle (0x0)
	}, ; 188
	%struct.DSOCacheEntry {
		i64 483581099, ; hash 0x1cd2dcab, from name: libaot-Xamarin.AndroidX.Activity.Ktx
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.205_name, ; name: libaot-Xamarin.AndroidX.Activity.Ktx.dll.so
		ptr null; void* handle (0x0)
	}, ; 189
	%struct.DSOCacheEntry {
		i64 490025168, ; hash 0x1d3530d0, from name: System.Net.NetworkInformation.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.78_name, ; name: libaot-System.Net.NetworkInformation.dll.so
		ptr null; void* handle (0x0)
	}, ; 190
	%struct.DSOCacheEntry {
		i64 491107342, ; hash 0x1d45b40e, from name: libaot-System.Threading.Tasks.Dataflow
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.151_name, ; name: libaot-System.Threading.Tasks.Dataflow.dll.so
		ptr null; void* handle (0x0)
	}, ; 191
	%struct.DSOCacheEntry {
		i64 492719914, ; hash 0x1d5e4f2a, from name: aot-System.Text.Json.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.147_name, ; name: libaot-System.Text.Json.dll.so
		ptr null; void* handle (0x0)
	}, ; 192
	%struct.DSOCacheEntry {
		i64 495949708, ; hash 0x1d8f978c, from name: aot-Xamarin.Kotlin.StdLib.Jdk8.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.280_name, ; name: libaot-Xamarin.Kotlin.StdLib.Jdk8.dll.so
		ptr null; void* handle (0x0)
	}, ; 193
	%struct.DSOCacheEntry {
		i64 497888664, ; hash 0x1dad2d98, from name: aot-System.Linq.Queryable.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.70_name, ; name: libaot-System.Linq.Queryable.dll.so
		ptr null; void* handle (0x0)
	}, ; 194
	%struct.DSOCacheEntry {
		i64 498788369, ; hash 0x1dbae811, from name: System.ObjectModel
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.94_name, ; name: libaot-System.ObjectModel.dll.so
		ptr null; void* handle (0x0)
	}, ; 195
	%struct.DSOCacheEntry {
		i64 500609955, ; hash 0x1dd6b3a3, from name: System.Native.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.1_name, ; name: libSystem.Native.so
		ptr null; void* handle (0x0)
	}, ; 196
	%struct.DSOCacheEntry {
		i64 507570963, ; hash 0x1e40eb13, from name: libaot-Xamarin.AndroidX.Fragment.Ktx.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.233_name, ; name: libaot-Xamarin.AndroidX.Fragment.Ktx.dll.so
		ptr null; void* handle (0x0)
	}, ; 197
	%struct.DSOCacheEntry {
		i64 513641783, ; hash 0x1e9d8d37, from name: aot-Xamarin.AndroidX.Annotation.Jvm.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.208_name, ; name: libaot-Xamarin.AndroidX.Annotation.Jvm.dll.so
		ptr null; void* handle (0x0)
	}, ; 198
	%struct.DSOCacheEntry {
		i64 524128216, ; hash 0x1f3d8fd8, from name: libaot-System.Dynamic.Runtime
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.47_name, ; name: libaot-System.Dynamic.Runtime.dll.so
		ptr null; void* handle (0x0)
	}, ; 199
	%struct.DSOCacheEntry {
		i64 526937330, ; hash 0x1f686cf2, from name: aot-System.IO.FileSystem.Watcher
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.60_name, ; name: libaot-System.IO.FileSystem.Watcher.dll.so
		ptr null; void* handle (0x0)
	}, ; 200
	%struct.DSOCacheEntry {
		i64 527452488, ; hash 0x1f704948, from name: Xamarin.Kotlin.StdLib.Jdk7
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.279_name, ; name: libaot-Xamarin.Kotlin.StdLib.Jdk7.dll.so
		ptr null; void* handle (0x0)
	}, ; 201
	%struct.DSOCacheEntry {
		i64 528615781, ; hash 0x1f820965, from name: libaot-System.ServiceModel.Web.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.141_name, ; name: libaot-System.ServiceModel.Web.dll.so
		ptr null; void* handle (0x0)
	}, ; 202
	%struct.DSOCacheEntry {
		i64 530272170, ; hash 0x1f9b4faa, from name: System.Linq.Queryable
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.70_name, ; name: libaot-System.Linq.Queryable.dll.so
		ptr null; void* handle (0x0)
	}, ; 203
	%struct.DSOCacheEntry {
		i64 530432528, ; hash 0x1f9dc210, from name: System.IO.Pipes.AccessControl.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.64_name, ; name: libaot-System.IO.Pipes.AccessControl.dll.so
		ptr null; void* handle (0x0)
	}, ; 204
	%struct.DSOCacheEntry {
		i64 531025907, ; hash 0x1fa6cff3, from name: aot-System.Data.DataSetExtensions
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.33_name, ; name: libaot-System.Data.DataSetExtensions.dll.so
		ptr null; void* handle (0x0)
	}, ; 205
	%struct.DSOCacheEntry {
		i64 539058512, ; hash 0x20216150, from name: Microsoft.Extensions.Logging
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.188_name, ; name: libaot-Microsoft.Extensions.Logging.dll.so
		ptr null; void* handle (0x0)
	}, ; 206
	%struct.DSOCacheEntry {
		i64 542686644, ; hash 0x2058bdb4, from name: libaot-Microsoft.Maui.Controls.Compatibility
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.193_name, ; name: libaot-Microsoft.Maui.Controls.Compatibility.dll.so
		ptr null; void* handle (0x0)
	}, ; 207
	%struct.DSOCacheEntry {
		i64 545304856, ; hash 0x2080b118, from name: System.Runtime.Extensions
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.113_name, ; name: libaot-System.Runtime.Extensions.dll.so
		ptr null; void* handle (0x0)
	}, ; 208
	%struct.DSOCacheEntry {
		i64 546455878, ; hash 0x20924146, from name: System.Runtime.Serialization.Xml
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.124_name, ; name: libaot-System.Runtime.Serialization.Xml.dll.so
		ptr null; void* handle (0x0)
	}, ; 209
	%struct.DSOCacheEntry {
		i64 549171840, ; hash 0x20bbb280, from name: System.Globalization.Calendars
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.50_name, ; name: libaot-System.Globalization.Calendars.dll.so
		ptr null; void* handle (0x0)
	}, ; 210
	%struct.DSOCacheEntry {
		i64 550368715, ; hash 0x20cdf5cb, from name: System.Core.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.31_name, ; name: libaot-System.Core.dll.so
		ptr null; void* handle (0x0)
	}, ; 211
	%struct.DSOCacheEntry {
		i64 551043094, ; hash 0x20d84016, from name: System.Diagnostics.Process.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.39_name, ; name: libaot-System.Diagnostics.Process.dll.so
		ptr null; void* handle (0x0)
	}, ; 212
	%struct.DSOCacheEntry {
		i64 553863972, ; hash 0x21034b24, from name: aot-System.Collections
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.22_name, ; name: libaot-System.Collections.dll.so
		ptr null; void* handle (0x0)
	}, ; 213
	%struct.DSOCacheEntry {
		i64 553997983, ; hash 0x2105569f, from name: aot-System.Data.DataSetExtensions.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.33_name, ; name: libaot-System.Data.DataSetExtensions.dll.so
		ptr null; void* handle (0x0)
	}, ; 214
	%struct.DSOCacheEntry {
		i64 554840301, ; hash 0x211230ed, from name: aot-System.Net.Requests.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.82_name, ; name: libaot-System.Net.Requests.dll.so
		ptr null; void* handle (0x0)
	}, ; 215
	%struct.DSOCacheEntry {
		i64 555045780, ; hash 0x21155394, from name: aot-Xamarin.Android.Glide.DiskLruCache.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.202_name, ; name: libaot-Xamarin.Android.Glide.DiskLruCache.dll.so
		ptr null; void* handle (0x0)
	}, ; 216
	%struct.DSOCacheEntry {
		i64 557405415, ; hash 0x213954e7, from name: Jsr305Binding
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.272_name, ; name: libaot-Jsr305Binding.dll.so
		ptr null; void* handle (0x0)
	}, ; 217
	%struct.DSOCacheEntry {
		i64 563700166, ; hash 0x219961c6, from name: libaot-Xamarin.AndroidX.AppCompat
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.209_name, ; name: libaot-Xamarin.AndroidX.AppCompat.dll.so
		ptr null; void* handle (0x0)
	}, ; 218
	%struct.DSOCacheEntry {
		i64 569601784, ; hash 0x21f36ef8, from name: Xamarin.AndroidX.Window.Extensions.Core.Core
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.270_name, ; name: libaot-Xamarin.AndroidX.Window.Extensions.Core.Core.dll.so
		ptr null; void* handle (0x0)
	}, ; 219
	%struct.DSOCacheEntry {
		i64 570161168, ; hash 0x21fbf810, from name: System.Security.Cryptography.Encoding.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.132_name, ; name: libaot-System.Security.Cryptography.Encoding.dll.so
		ptr null; void* handle (0x0)
	}, ; 220
	%struct.DSOCacheEntry {
		i64 577261146, ; hash 0x22684e5a, from name: aot-Microsoft.VisualBasic.Core
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.12_name, ; name: libaot-Microsoft.VisualBasic.Core.dll.so
		ptr null; void* handle (0x0)
	}, ; 221
	%struct.DSOCacheEntry {
		i64 577335427, ; hash 0x22697083, from name: System.Security.Cryptography.Cng
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.130_name, ; name: libaot-System.Security.Cryptography.Cng.dll.so
		ptr null; void* handle (0x0)
	}, ; 222
	%struct.DSOCacheEntry {
		i64 578054144, ; hash 0x22746800, from name: aot-CommunityToolkit.Mvvm.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.182_name, ; name: libaot-CommunityToolkit.Mvvm.dll.so
		ptr null; void* handle (0x0)
	}, ; 223
	%struct.DSOCacheEntry {
		i64 578112595, ; hash 0x22754c53, from name: System.Threading.Tasks.Dataflow.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.151_name, ; name: libaot-System.Threading.Tasks.Dataflow.dll.so
		ptr null; void* handle (0x0)
	}, ; 224
	%struct.DSOCacheEntry {
		i64 584914887, ; hash 0x22dd17c7, from name: aot-System.Runtime.Numerics
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.120_name, ; name: libaot-System.Runtime.Numerics.dll.so
		ptr null; void* handle (0x0)
	}, ; 225
	%struct.DSOCacheEntry {
		i64 586519728, ; hash 0x22f594b0, from name: libaot-System.Data.DataSetExtensions.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.33_name, ; name: libaot-System.Data.DataSetExtensions.dll.so
		ptr null; void* handle (0x0)
	}, ; 226
	%struct.DSOCacheEntry {
		i64 589015362, ; hash 0x231ba942, from name: aot-System.AppContext.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.16_name, ; name: libaot-System.AppContext.dll.so
		ptr null; void* handle (0x0)
	}, ; 227
	%struct.DSOCacheEntry {
		i64 589614471, ; hash 0x2324cd87, from name: libaot-Mono.Android.Export.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.179_name, ; name: libaot-Mono.Android.Export.dll.so
		ptr null; void* handle (0x0)
	}, ; 228
	%struct.DSOCacheEntry {
		i64 592553766, ; hash 0x2351a726, from name: libaot-System.Diagnostics.Tracing
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.44_name, ; name: libaot-System.Diagnostics.Tracing.dll.so
		ptr null; void* handle (0x0)
	}, ; 229
	%struct.DSOCacheEntry {
		i64 595217260, ; hash 0x237a4b6c, from name: Xamarin.AndroidX.Navigation.UI.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.251_name, ; name: libaot-Xamarin.AndroidX.Navigation.UI.dll.so
		ptr null; void* handle (0x0)
	}, ; 230
	%struct.DSOCacheEntry {
		i64 599423409, ; hash 0x23ba79b1, from name: aot-System.Buffers
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.17_name, ; name: libaot-System.Buffers.dll.so
		ptr null; void* handle (0x0)
	}, ; 231
	%struct.DSOCacheEntry {
		i64 599950454, ; hash 0x23c28476, from name: aot-Xamarin.AndroidX.Lifecycle.ViewModelSavedState
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.245_name, ; name: libaot-Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll.so
		ptr null; void* handle (0x0)
	}, ; 232
	%struct.DSOCacheEntry {
		i64 602566721, ; hash 0x23ea7041, from name: aot-System.Text.Encodings.Web.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.146_name, ; name: libaot-System.Text.Encodings.Web.dll.so
		ptr null; void* handle (0x0)
	}, ; 233
	%struct.DSOCacheEntry {
		i64 605376203, ; hash 0x24154ecb, from name: System.IO.Compression.FileSystem
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.54_name, ; name: libaot-System.IO.Compression.FileSystem.dll.so
		ptr null; void* handle (0x0)
	}, ; 234
	%struct.DSOCacheEntry {
		i64 607445614, ; hash 0x2434e26e, from name: System.IO.FileSystem.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.61_name, ; name: libaot-System.IO.FileSystem.dll.so
		ptr null; void* handle (0x0)
	}, ; 235
	%struct.DSOCacheEntry {
		i64 611185113, ; hash 0x246df1d9, from name: libaot-Xamarin.AndroidX.ConstraintLayout
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.218_name, ; name: libaot-Xamarin.AndroidX.ConstraintLayout.dll.so
		ptr null; void* handle (0x0)
	}, ; 236
	%struct.DSOCacheEntry {
		i64 612093922, ; hash 0x247bcfe2, from name: aot-Xamarin.AndroidX.Startup.StartupRuntime.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.260_name, ; name: libaot-Xamarin.AndroidX.Startup.StartupRuntime.dll.so
		ptr null; void* handle (0x0)
	}, ; 237
	%struct.DSOCacheEntry {
		i64 613407657, ; hash 0x248fdba9, from name: aot-Xamarin.Google.Crypto.Tink.Android.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.273_name, ; name: libaot-Xamarin.Google.Crypto.Tink.Android.dll.so
		ptr null; void* handle (0x0)
	}, ; 238
	%struct.DSOCacheEntry {
		i64 613668793, ; hash 0x2493d7b9, from name: System.Security.Cryptography.Algorithms
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.129_name, ; name: libaot-System.Security.Cryptography.Algorithms.dll.so
		ptr null; void* handle (0x0)
	}, ; 239
	%struct.DSOCacheEntry {
		i64 619290284, ; hash 0x24e99eac, from name: Xamarin.AndroidX.Collection.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.215_name, ; name: libaot-Xamarin.AndroidX.Collection.dll.so
		ptr null; void* handle (0x0)
	}, ; 240
	%struct.DSOCacheEntry {
		i64 622561209, ; hash 0x251b87b9, from name: aot-System.Drawing.Primitives
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.45_name, ; name: libaot-System.Drawing.Primitives.dll.so
		ptr null; void* handle (0x0)
	}, ; 241
	%struct.DSOCacheEntry {
		i64 627609679, ; hash 0x2568904f, from name: Xamarin.AndroidX.CustomView
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.224_name, ; name: libaot-Xamarin.AndroidX.CustomView.dll.so
		ptr null; void* handle (0x0)
	}, ; 242
	%struct.DSOCacheEntry {
		i64 629828598, ; hash 0x258a6bf6, from name: Microsoft.Maui.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.196_name, ; name: libaot-Microsoft.Maui.dll.so
		ptr null; void* handle (0x0)
	}, ; 243
	%struct.DSOCacheEntry {
		i64 629899221, ; hash 0x258b7fd5, from name: aot-System.IO.Pipes.AccessControl.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.64_name, ; name: libaot-System.IO.Pipes.AccessControl.dll.so
		ptr null; void* handle (0x0)
	}, ; 244
	%struct.DSOCacheEntry {
		i64 632434087, ; hash 0x25b22da7, from name: aot-System.IO.Compression.FileSystem
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.54_name, ; name: libaot-System.IO.Compression.FileSystem.dll.so
		ptr null; void* handle (0x0)
	}, ; 245
	%struct.DSOCacheEntry {
		i64 635990061, ; hash 0x25e8702d, from name: aot-System.Runtime.Serialization
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.125_name, ; name: libaot-System.Runtime.Serialization.dll.so
		ptr null; void* handle (0x0)
	}, ; 246
	%struct.DSOCacheEntry {
		i64 641004454, ; hash 0x2634f3a6, from name: aot-Xamarin.AndroidX.Arch.Core.Runtime.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.212_name, ; name: libaot-Xamarin.AndroidX.Arch.Core.Runtime.dll.so
		ptr null; void* handle (0x0)
	}, ; 247
	%struct.DSOCacheEntry {
		i64 641360513, ; hash 0x263a6281, from name: aot-System.Numerics.Vectors.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.92_name, ; name: libaot-System.Numerics.Vectors.dll.so
		ptr null; void* handle (0x0)
	}, ; 248
	%struct.DSOCacheEntry {
		i64 643868501, ; hash 0x2660a755, from name: System.Net
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.91_name, ; name: libaot-System.Net.dll.so
		ptr null; void* handle (0x0)
	}, ; 249
	%struct.DSOCacheEntry {
		i64 643988587, ; hash 0x26627c6b, from name: libaot-System.Reflection.Emit.ILGeneration
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.100_name, ; name: libaot-System.Reflection.Emit.ILGeneration.dll.so
		ptr null; void* handle (0x0)
	}, ; 250
	%struct.DSOCacheEntry {
		i64 644399814, ; hash 0x2668c2c6, from name: libaot-System.Net.WebHeaderCollection.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.87_name, ; name: libaot-System.Net.WebHeaderCollection.dll.so
		ptr null; void* handle (0x0)
	}, ; 251
	%struct.DSOCacheEntry {
		i64 644653072, ; hash 0x266ca010, from name: System.Net.HttpListener.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.75_name, ; name: libaot-System.Net.HttpListener.dll.so
		ptr null; void* handle (0x0)
	}, ; 252
	%struct.DSOCacheEntry {
		i64 645288582, ; hash 0x26765286, from name: libaot-Xamarin.AndroidX.CardView
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.214_name, ; name: libaot-Xamarin.AndroidX.CardView.dll.so
		ptr null; void* handle (0x0)
	}, ; 253
	%struct.DSOCacheEntry {
		i64 657767393, ; hash 0x2734bbe1, from name: aot-System.Collections.Specialized
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.21_name, ; name: libaot-System.Collections.Specialized.dll.so
		ptr null; void* handle (0x0)
	}, ; 254
	%struct.DSOCacheEntry {
		i64 660366738, ; hash 0x275c6592, from name: aot-Xamarin.Google.Android.Material.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.271_name, ; name: libaot-Xamarin.Google.Android.Material.dll.so
		ptr null; void* handle (0x0)
	}, ; 255
	%struct.DSOCacheEntry {
		i64 663228267, ; hash 0x27880f6b, from name: aot-System.Reflection.TypeExtensions
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.106_name, ; name: libaot-System.Reflection.TypeExtensions.dll.so
		ptr null; void* handle (0x0)
	}, ; 256
	%struct.DSOCacheEntry {
		i64 663517072, ; hash 0x278c7790, from name: Xamarin.AndroidX.VersionedParcelable
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.266_name, ; name: libaot-Xamarin.AndroidX.VersionedParcelable.dll.so
		ptr null; void* handle (0x0)
	}, ; 257
	%struct.DSOCacheEntry {
		i64 664190568, ; hash 0x2796be68, from name: aot-System.Data.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.34_name, ; name: libaot-System.Data.dll.so
		ptr null; void* handle (0x0)
	}, ; 258
	%struct.DSOCacheEntry {
		i64 665595669, ; hash 0x27ac2f15, from name: System.Globalization.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.52_name, ; name: libaot-System.Globalization.dll.so
		ptr null; void* handle (0x0)
	}, ; 259
	%struct.DSOCacheEntry {
		i64 668577687, ; hash 0x27d9af97, from name: aot-System.Reflection.Primitives.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.105_name, ; name: libaot-System.Reflection.Primitives.dll.so
		ptr null; void* handle (0x0)
	}, ; 260
	%struct.DSOCacheEntry {
		i64 672442732, ; hash 0x2814a96c, from name: System.Collections.Concurrent
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.18_name, ; name: libaot-System.Collections.Concurrent.dll.so
		ptr null; void* handle (0x0)
	}, ; 261
	%struct.DSOCacheEntry {
		i64 674191088, ; hash 0x282f56f0, from name: aot-Xamarin.Google.Crypto.Tink.Android
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.273_name, ; name: libaot-Xamarin.Google.Crypto.Tink.Android.dll.so
		ptr null; void* handle (0x0)
	}, ; 262
	%struct.DSOCacheEntry {
		i64 675365894, ; hash 0x28414406, from name: libaot-Xamarin.AndroidX.Lifecycle.LiveData
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.237_name, ; name: libaot-Xamarin.AndroidX.Lifecycle.LiveData.dll.so
		ptr null; void* handle (0x0)
	}, ; 263
	%struct.DSOCacheEntry {
		i64 675916518, ; hash 0x2849aae6, from name: System.Net.Mail.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.76_name, ; name: libaot-System.Net.Mail.dll.so
		ptr null; void* handle (0x0)
	}, ; 264
	%struct.DSOCacheEntry {
		i64 675936804, ; hash 0x2849fa24, from name: System.Net.Requests.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.82_name, ; name: libaot-System.Net.Requests.dll.so
		ptr null; void* handle (0x0)
	}, ; 265
	%struct.DSOCacheEntry {
		i64 676732119, ; hash 0x28561cd7, from name: libaot-CommunityToolkit.Mvvm
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.182_name, ; name: libaot-CommunityToolkit.Mvvm.dll.so
		ptr null; void* handle (0x0)
	}, ; 266
	%struct.DSOCacheEntry {
		i64 679430739, ; hash 0x287f4a53, from name: libaot-Xamarin.AndroidX.SlidingPaneLayout
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.259_name, ; name: libaot-Xamarin.AndroidX.SlidingPaneLayout.dll.so
		ptr null; void* handle (0x0)
	}, ; 267
	%struct.DSOCacheEntry {
		i64 679655364, ; hash 0x2882b7c4, from name: aot-System.Runtime.InteropServices
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.117_name, ; name: libaot-System.Runtime.InteropServices.dll.so
		ptr null; void* handle (0x0)
	}, ; 268
	%struct.DSOCacheEntry {
		i64 683518922, ; hash 0x28bdabca, from name: System.Net.Security
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.83_name, ; name: libaot-System.Net.Security.dll.so
		ptr null; void* handle (0x0)
	}, ; 269
	%struct.DSOCacheEntry {
		i64 692657350, ; hash 0x29491cc6, from name: Xamarin.Android.Glide.GifDecoder.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.203_name, ; name: libaot-Xamarin.Android.Glide.GifDecoder.dll.so
		ptr null; void* handle (0x0)
	}, ; 270
	%struct.DSOCacheEntry {
		i64 693804605, ; hash 0x295a9e3d, from name: System.Windows
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.164_name, ; name: libaot-System.Windows.dll.so
		ptr null; void* handle (0x0)
	}, ; 271
	%struct.DSOCacheEntry {
		i64 696486905, ; hash 0x29838bf9, from name: Xamarin.AndroidX.DocumentFile.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.226_name, ; name: libaot-Xamarin.AndroidX.DocumentFile.dll.so
		ptr null; void* handle (0x0)
	}, ; 272
	%struct.DSOCacheEntry {
		i64 699345723, ; hash 0x29af2b3b, from name: System.Reflection.Emit
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.102_name, ; name: libaot-System.Reflection.Emit.dll.so
		ptr null; void* handle (0x0)
	}, ; 273
	%struct.DSOCacheEntry {
		i64 700284507, ; hash 0x29bd7e5b, from name: Xamarin.Jetbrains.Annotations
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.276_name, ; name: libaot-Xamarin.Jetbrains.Annotations.dll.so
		ptr null; void* handle (0x0)
	}, ; 274
	%struct.DSOCacheEntry {
		i64 700358131, ; hash 0x29be9df3, from name: System.IO.Compression.ZipFile
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.55_name, ; name: libaot-System.IO.Compression.ZipFile.dll.so
		ptr null; void* handle (0x0)
	}, ; 275
	%struct.DSOCacheEntry {
		i64 702190984, ; hash 0x29da9588, from name: libaot-System.Runtime.Intrinsics.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.118_name, ; name: libaot-System.Runtime.Intrinsics.dll.so
		ptr null; void* handle (0x0)
	}, ; 276
	%struct.DSOCacheEntry {
		i64 707830176, ; hash 0x2a30a1a0, from name: libaot-Xamarin.AndroidX.Concurrent.Futures
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.217_name, ; name: libaot-Xamarin.AndroidX.Concurrent.Futures.dll.so
		ptr null; void* handle (0x0)
	}, ; 277
	%struct.DSOCacheEntry {
		i64 711626695, ; hash 0x2a6a8fc7, from name: aot-Xamarin.AndroidX.Legacy.Support.Core.Utils
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.235_name, ; name: libaot-Xamarin.AndroidX.Legacy.Support.Core.Utils.dll.so
		ptr null; void* handle (0x0)
	}, ; 278
	%struct.DSOCacheEntry {
		i64 713144928, ; hash 0x2a81ba60, from name: libaot-System.Net.Sockets.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.85_name, ; name: libaot-System.Net.Sockets.dll.so
		ptr null; void* handle (0x0)
	}, ; 279
	%struct.DSOCacheEntry {
		i64 713151617, ; hash 0x2a81d481, from name: libxamarin-debug-app-helper
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.8_name, ; name: libxamarin-debug-app-helper.so
		ptr null; void* handle (0x0)
	}, ; 280
	%struct.DSOCacheEntry {
		i64 720342549, ; hash 0x2aef8e15, from name: System.Threading.Timer.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.157_name, ; name: libaot-System.Threading.Timer.dll.so
		ptr null; void* handle (0x0)
	}, ; 281
	%struct.DSOCacheEntry {
		i64 720511267, ; hash 0x2af22123, from name: Xamarin.Kotlin.StdLib.Jdk8
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.280_name, ; name: libaot-Xamarin.Kotlin.StdLib.Jdk8.dll.so
		ptr null; void* handle (0x0)
	}, ; 282
	%struct.DSOCacheEntry {
		i64 724168210, ; hash 0x2b29ee12, from name: aot-System.Web.HttpUtility.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.162_name, ; name: libaot-System.Web.HttpUtility.dll.so
		ptr null; void* handle (0x0)
	}, ; 283
	%struct.DSOCacheEntry {
		i64 725055421, ; hash 0x2b3777bd, from name: libaot-System.Security.Cryptography.Algorithms.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.129_name, ; name: libaot-System.Security.Cryptography.Algorithms.dll.so
		ptr null; void* handle (0x0)
	}, ; 284
	%struct.DSOCacheEntry {
		i64 733245994, ; hash 0x2bb4722a, from name: System.Diagnostics.Tools.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.42_name, ; name: libaot-System.Diagnostics.Tools.dll.so
		ptr null; void* handle (0x0)
	}, ; 285
	%struct.DSOCacheEntry {
		i64 738487011, ; hash 0x2c046ae3, from name: aot-System.Memory
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.72_name, ; name: libaot-System.Memory.dll.so
		ptr null; void* handle (0x0)
	}, ; 286
	%struct.DSOCacheEntry {
		i64 739913497, ; hash 0x2c1a2f19, from name: libaot-Xamarin.Kotlin.StdLib.Jdk7
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.279_name, ; name: libaot-Xamarin.Kotlin.StdLib.Jdk7.dll.so
		ptr null; void* handle (0x0)
	}, ; 287
	%struct.DSOCacheEntry {
		i64 740429482, ; hash 0x2c220eaa, from name: aot-System.Net.Security
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.83_name, ; name: libaot-System.Net.Security.dll.so
		ptr null; void* handle (0x0)
	}, ; 288
	%struct.DSOCacheEntry {
		i64 741800292, ; hash 0x2c36f964, from name: libaot-System.Security.Cryptography.Cng.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.130_name, ; name: libaot-System.Security.Cryptography.Cng.dll.so
		ptr null; void* handle (0x0)
	}, ; 289
	%struct.DSOCacheEntry {
		i64 748366034, ; hash 0x2c9b28d2, from name: monodroid
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.7_name, ; name: libmonodroid.so
		ptr null; void* handle (0x0)
	}, ; 290
	%struct.DSOCacheEntry {
		i64 759120139, ; hash 0x2d3f410b, from name: aot-Xamarin.AndroidX.ConstraintLayout.Core
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.219_name, ; name: libaot-Xamarin.AndroidX.ConstraintLayout.Core.dll.so
		ptr null; void* handle (0x0)
	}, ; 291
	%struct.DSOCacheEntry {
		i64 759156225, ; hash 0x2d3fce01, from name: aot-Xamarin.AndroidX.Collection.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.215_name, ; name: libaot-Xamarin.AndroidX.Collection.dll.so
		ptr null; void* handle (0x0)
	}, ; 292
	%struct.DSOCacheEntry {
		i64 759454413, ; hash 0x2d445acd, from name: System.Net.Requests
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.82_name, ; name: libaot-System.Net.Requests.dll.so
		ptr null; void* handle (0x0)
	}, ; 293
	%struct.DSOCacheEntry {
		i64 761332650, ; hash 0x2d6103aa, from name: libaot-Microsoft.Maui.Controls.Xaml.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.195_name, ; name: libaot-Microsoft.Maui.Controls.Xaml.dll.so
		ptr null; void* handle (0x0)
	}, ; 294
	%struct.DSOCacheEntry {
		i64 762524354, ; hash 0x2d7332c2, from name: libaot-System.Threading.Tasks.Dataflow.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.151_name, ; name: libaot-System.Threading.Tasks.Dataflow.dll.so
		ptr null; void* handle (0x0)
	}, ; 295
	%struct.DSOCacheEntry {
		i64 764502439, ; hash 0x2d9161a7, from name: System.Dynamic.Runtime.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.47_name, ; name: libaot-System.Dynamic.Runtime.dll.so
		ptr null; void* handle (0x0)
	}, ; 296
	%struct.DSOCacheEntry {
		i64 764711598, ; hash 0x2d9492ae, from name: aot-Microsoft.VisualBasic
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.13_name, ; name: libaot-Microsoft.VisualBasic.dll.so
		ptr null; void* handle (0x0)
	}, ; 297
	%struct.DSOCacheEntry {
		i64 772210761, ; hash 0x2e070049, from name: System.Resources.ResourceManager.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.109_name, ; name: libaot-System.Resources.ResourceManager.dll.so
		ptr null; void* handle (0x0)
	}, ; 298
	%struct.DSOCacheEntry {
		i64 772696399, ; hash 0x2e0e694f, from name: aot-System.Data.Common
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.32_name, ; name: libaot-System.Data.Common.dll.so
		ptr null; void* handle (0x0)
	}, ; 299
	%struct.DSOCacheEntry {
		i64 775507847, ; hash 0x2e394f87, from name: System.IO.Compression
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.56_name, ; name: libaot-System.IO.Compression.dll.so
		ptr null; void* handle (0x0)
	}, ; 300
	%struct.DSOCacheEntry {
		i64 776241880, ; hash 0x2e4482d8, from name: aot-System.Reflection.Primitives
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.105_name, ; name: libaot-System.Reflection.Primitives.dll.so
		ptr null; void* handle (0x0)
	}, ; 301
	%struct.DSOCacheEntry {
		i64 780517479, ; hash 0x2e85c067, from name: aot-System.Net.WebSockets.Client.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.89_name, ; name: libaot-System.Net.WebSockets.Client.dll.so
		ptr null; void* handle (0x0)
	}, ; 302
	%struct.DSOCacheEntry {
		i64 789074706, ; hash 0x2f085312, from name: aot-System.Threading.Thread
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.155_name, ; name: libaot-System.Threading.Thread.dll.so
		ptr null; void* handle (0x0)
	}, ; 303
	%struct.DSOCacheEntry {
		i64 789151979, ; hash 0x2f0980eb, from name: Microsoft.Extensions.Options
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.191_name, ; name: libaot-Microsoft.Extensions.Options.dll.so
		ptr null; void* handle (0x0)
	}, ; 304
	%struct.DSOCacheEntry {
		i64 790849498, ; hash 0x2f2367da, from name: aot-System.Dynamic.Runtime.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.47_name, ; name: libaot-System.Dynamic.Runtime.dll.so
		ptr null; void* handle (0x0)
	}, ; 305
	%struct.DSOCacheEntry {
		i64 800893181, ; hash 0x2fbca8fd, from name: libaot-System.Net.Ping
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.79_name, ; name: libaot-System.Net.Ping.dll.so
		ptr null; void* handle (0x0)
	}, ; 306
	%struct.DSOCacheEntry {
		i64 802286629, ; hash 0x2fd1ec25, from name: aot-Xamarin.AndroidX.DrawerLayout.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.227_name, ; name: libaot-Xamarin.AndroidX.DrawerLayout.dll.so
		ptr null; void* handle (0x0)
	}, ; 307
	%struct.DSOCacheEntry {
		i64 804715423, ; hash 0x2ff6fb9f, from name: System.Data.Common
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.32_name, ; name: libaot-System.Data.Common.dll.so
		ptr null; void* handle (0x0)
	}, ; 308
	%struct.DSOCacheEntry {
		i64 806746267, ; hash 0x3015f89b, from name: aot-System.Private.Xml.Linq
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.97_name, ; name: libaot-System.Private.Xml.Linq.dll.so
		ptr null; void* handle (0x0)
	}, ; 309
	%struct.DSOCacheEntry {
		i64 808332795, ; hash 0x302e2dfb, from name: aot-Microsoft.VisualBasic.Core.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.12_name, ; name: libaot-Microsoft.VisualBasic.Core.dll.so
		ptr null; void* handle (0x0)
	}, ; 310
	%struct.DSOCacheEntry {
		i64 808873553, ; hash 0x30366e51, from name: libmono-component-hot_reload.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.4_name, ; name: libmono-component-hot_reload.so
		ptr null; void* handle (0x0)
	}, ; 311
	%struct.DSOCacheEntry {
		i64 811095842, ; hash 0x30585722, from name: aot-_Microsoft.Android.Resource.Designer
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.10_name, ; name: libaot-_Microsoft.Android.Resource.Designer.dll.so
		ptr null; void* handle (0x0)
	}, ; 312
	%struct.DSOCacheEntry {
		i64 825453070, ; hash 0x31336a0e, from name: aot-System.Net.WebClient
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.86_name, ; name: libaot-System.Net.WebClient.dll.so
		ptr null; void* handle (0x0)
	}, ; 313
	%struct.DSOCacheEntry {
		i64 826035354, ; hash 0x313c4c9a, from name: libaot-Microsoft.Maui.Graphics.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.198_name, ; name: libaot-Microsoft.Maui.Graphics.dll.so
		ptr null; void* handle (0x0)
	}, ; 314
	%struct.DSOCacheEntry {
		i64 830298997, ; hash 0x317d5b75, from name: System.IO.Compression.Brotli
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.53_name, ; name: libaot-System.IO.Compression.Brotli.dll.so
		ptr null; void* handle (0x0)
	}, ; 315
	%struct.DSOCacheEntry {
		i64 834051424, ; hash 0x31b69d60, from name: System.Net.Quic
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.81_name, ; name: libaot-System.Net.Quic.dll.so
		ptr null; void* handle (0x0)
	}, ; 316
	%struct.DSOCacheEntry {
		i64 837478634, ; hash 0x31eae8ea, from name: libaot-System.Linq.Expressions
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.68_name, ; name: libaot-System.Linq.Expressions.dll.so
		ptr null; void* handle (0x0)
	}, ; 317
	%struct.DSOCacheEntry {
		i64 838232158, ; hash 0x31f6685e, from name: aot-Xamarin.AndroidX.Lifecycle.Common.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.236_name, ; name: libaot-Xamarin.AndroidX.Lifecycle.Common.dll.so
		ptr null; void* handle (0x0)
	}, ; 318
	%struct.DSOCacheEntry {
		i64 843511501, ; hash 0x3246f6cd, from name: Xamarin.AndroidX.Print
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.252_name, ; name: libaot-Xamarin.AndroidX.Print.dll.so
		ptr null; void* handle (0x0)
	}, ; 319
	%struct.DSOCacheEntry {
		i64 845085588, ; hash 0x325efb94, from name: aot-System.IO.Compression.ZipFile.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.55_name, ; name: libaot-System.IO.Compression.ZipFile.dll.so
		ptr null; void* handle (0x0)
	}, ; 320
	%struct.DSOCacheEntry {
		i64 845614355, ; hash 0x32670d13, from name: aot-System.Collections.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.22_name, ; name: libaot-System.Collections.dll.so
		ptr null; void* handle (0x0)
	}, ; 321
	%struct.DSOCacheEntry {
		i64 846646212, ; hash 0x3276cbc4, from name: aot-System.Collections.Concurrent.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.18_name, ; name: libaot-System.Collections.Concurrent.dll.so
		ptr null; void* handle (0x0)
	}, ; 322
	%struct.DSOCacheEntry {
		i64 850113928, ; hash 0x32abb588, from name: libaot-Xamarin.AndroidX.AppCompat.AppCompatResources.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.210_name, ; name: libaot-Xamarin.AndroidX.AppCompat.AppCompatResources.dll.so
		ptr null; void* handle (0x0)
	}, ; 323
	%struct.DSOCacheEntry {
		i64 853304349, ; hash 0x32dc641d, from name: System.Security.SecureString.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.139_name, ; name: libaot-System.Security.SecureString.dll.so
		ptr null; void* handle (0x0)
	}, ; 324
	%struct.DSOCacheEntry {
		i64 854961858, ; hash 0x32f5aec2, from name: libaot-System.Reflection.Primitives
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.105_name, ; name: libaot-System.Reflection.Primitives.dll.so
		ptr null; void* handle (0x0)
	}, ; 325
	%struct.DSOCacheEntry {
		i64 855129724, ; hash 0x32f83e7c, from name: libaot-System.Private.Xml.Linq.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.97_name, ; name: libaot-System.Private.Xml.Linq.dll.so
		ptr null; void* handle (0x0)
	}, ; 326
	%struct.DSOCacheEntry {
		i64 855910803, ; hash 0x33042993, from name: aot-System.Threading.Thread.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.155_name, ; name: libaot-System.Threading.Thread.dll.so
		ptr null; void* handle (0x0)
	}, ; 327
	%struct.DSOCacheEntry {
		i64 859233046, ; hash 0x3336db16, from name: libaot-Xamarin.AndroidX.Emoji2.ViewsHelper.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.230_name, ; name: libaot-Xamarin.AndroidX.Emoji2.ViewsHelper.dll.so
		ptr null; void* handle (0x0)
	}, ; 328
	%struct.DSOCacheEntry {
		i64 860903827, ; hash 0x33505993, from name: aot-System.Transactions.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.160_name, ; name: libaot-System.Transactions.dll.so
		ptr null; void* handle (0x0)
	}, ; 329
	%struct.DSOCacheEntry {
		i64 862126818, ; hash 0x336302e2, from name: libaot-Xamarin.AndroidX.CoordinatorLayout.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.220_name, ; name: libaot-Xamarin.AndroidX.CoordinatorLayout.dll.so
		ptr null; void* handle (0x0)
	}, ; 330
	%struct.DSOCacheEntry {
		i64 866894703, ; hash 0x33abc36f, from name: System.Net.Security.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.83_name, ; name: libaot-System.Net.Security.dll.so
		ptr null; void* handle (0x0)
	}, ; 331
	%struct.DSOCacheEntry {
		i64 869473018, ; hash 0x33d31afa, from name: aot-System.Threading.Tasks.Parallel.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.153_name, ; name: libaot-System.Threading.Tasks.Parallel.dll.so
		ptr null; void* handle (0x0)
	}, ; 332
	%struct.DSOCacheEntry {
		i64 870587408, ; hash 0x33e41c10, from name: System.Security.Cryptography.Native.Android.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.2_name, ; name: libSystem.Security.Cryptography.Native.Android.so
		ptr null; void* handle (0x0)
	}, ; 333
	%struct.DSOCacheEntry {
		i64 872661821, ; hash 0x3403c33d, from name: aot-Xamarin.Jetbrains.Annotations.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.276_name, ; name: libaot-Xamarin.Jetbrains.Annotations.dll.so
		ptr null; void* handle (0x0)
	}, ; 334
	%struct.DSOCacheEntry {
		i64 873119928, ; hash 0x340ac0b8, from name: Microsoft.VisualBasic
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.13_name, ; name: libaot-Microsoft.VisualBasic.dll.so
		ptr null; void* handle (0x0)
	}, ; 335
	%struct.DSOCacheEntry {
		i64 874318146, ; hash 0x341d0942, from name: libaot-System.IO.Compression.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.56_name, ; name: libaot-System.IO.Compression.dll.so
		ptr null; void* handle (0x0)
	}, ; 336
	%struct.DSOCacheEntry {
		i64 876853269, ; hash 0x3443b815, from name: libaot-System.Net.Primitives
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.80_name, ; name: libaot-System.Net.Primitives.dll.so
		ptr null; void* handle (0x0)
	}, ; 337
	%struct.DSOCacheEntry {
		i64 878954865, ; hash 0x3463c971, from name: System.Net.Http.Json
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.73_name, ; name: libaot-System.Net.Http.Json.dll.so
		ptr null; void* handle (0x0)
	}, ; 338
	%struct.DSOCacheEntry {
		i64 879326708, ; hash 0x346975f4, from name: libaot-MauiApp1.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.9_name, ; name: libaot-MauiApp1.dll.so
		ptr null; void* handle (0x0)
	}, ; 339
	%struct.DSOCacheEntry {
		i64 880254817, ; hash 0x34779f61, from name: Microsoft.Extensions.DependencyInjection.Abstractions.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.187_name, ; name: libaot-Microsoft.Extensions.DependencyInjection.Abstractions.dll.so
		ptr null; void* handle (0x0)
	}, ; 340
	%struct.DSOCacheEntry {
		i64 880916400, ; hash 0x3481b7b0, from name: libaot-System.ServiceProcess.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.142_name, ; name: libaot-System.ServiceProcess.dll.so
		ptr null; void* handle (0x0)
	}, ; 341
	%struct.DSOCacheEntry {
		i64 881313881, ; hash 0x3487c859, from name: aot-Xamarin.AndroidX.Security.SecurityCrypto.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.258_name, ; name: libaot-Xamarin.AndroidX.Security.SecurityCrypto.dll.so
		ptr null; void* handle (0x0)
	}, ; 342
	%struct.DSOCacheEntry {
		i64 884884248, ; hash 0x34be4318, from name: aot-Xamarin.AndroidX.Collection
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.215_name, ; name: libaot-Xamarin.AndroidX.Collection.dll.so
		ptr null; void* handle (0x0)
	}, ; 343
	%struct.DSOCacheEntry {
		i64 885110798, ; hash 0x34c1b80e, from name: System.Diagnostics.Debug.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.36_name, ; name: libaot-System.Diagnostics.Debug.dll.so
		ptr null; void* handle (0x0)
	}, ; 344
	%struct.DSOCacheEntry {
		i64 885184054, ; hash 0x34c2d636, from name: aot-System.Collections.Immutable.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.19_name, ; name: libaot-System.Collections.Immutable.dll.so
		ptr null; void* handle (0x0)
	}, ; 345
	%struct.DSOCacheEntry {
		i64 895392114, ; hash 0x355e9972, from name: libaot-Xamarin.AndroidX.Lifecycle.LiveData.Core.Ktx.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.239_name, ; name: libaot-Xamarin.AndroidX.Lifecycle.LiveData.Core.Ktx.dll.so
		ptr null; void* handle (0x0)
	}, ; 346
	%struct.DSOCacheEntry {
		i64 898980406, ; hash 0x35955a36, from name: libaot-System.IO.FileSystem.AccessControl
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.57_name, ; name: libaot-System.IO.FileSystem.AccessControl.dll.so
		ptr null; void* handle (0x0)
	}, ; 347
	%struct.DSOCacheEntry {
		i64 899702261, ; hash 0x35a05df5, from name: aot-Microsoft.Extensions.Primitives.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.192_name, ; name: libaot-Microsoft.Extensions.Primitives.dll.so
		ptr null; void* handle (0x0)
	}, ; 348
	%struct.DSOCacheEntry {
		i64 905680937, ; hash 0x35fb9829, from name: aot-mscorlib.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.176_name, ; name: libaot-mscorlib.dll.so
		ptr null; void* handle (0x0)
	}, ; 349
	%struct.DSOCacheEntry {
		i64 907714710, ; hash 0x361aa096, from name: libaot-System.Security.Cryptography
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.136_name, ; name: libaot-System.Security.Cryptography.dll.so
		ptr null; void* handle (0x0)
	}, ; 350
	%struct.DSOCacheEntry {
		i64 909296778, ; hash 0x3632c48a, from name: libaot-Xamarin.AndroidX.Emoji2.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.229_name, ; name: libaot-Xamarin.AndroidX.Emoji2.dll.so
		ptr null; void* handle (0x0)
	}, ; 351
	%struct.DSOCacheEntry {
		i64 923301681, ; hash 0x37087731, from name: aot-System.Xml.XmlDocument
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.171_name, ; name: libaot-System.Xml.XmlDocument.dll.so
		ptr null; void* handle (0x0)
	}, ; 352
	%struct.DSOCacheEntry {
		i64 923738899, ; hash 0x370f2313, from name: libaot-Xamarin.AndroidX.ResourceInspection.Annotation.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.255_name, ; name: libaot-Xamarin.AndroidX.ResourceInspection.Annotation.dll.so
		ptr null; void* handle (0x0)
	}, ; 353
	%struct.DSOCacheEntry {
		i64 926837294, ; hash 0x373e6a2e, from name: Xamarin.AndroidX.Interpolator.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.234_name, ; name: libaot-Xamarin.AndroidX.Interpolator.dll.so
		ptr null; void* handle (0x0)
	}, ; 354
	%struct.DSOCacheEntry {
		i64 928116545, ; hash 0x3751ef41, from name: Xamarin.Google.Guava.ListenableFuture
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.275_name, ; name: libaot-Xamarin.Google.Guava.ListenableFuture.dll.so
		ptr null; void* handle (0x0)
	}, ; 355
	%struct.DSOCacheEntry {
		i64 935544344, ; hash 0x37c34618, from name: aot-Xamarin.AndroidX.Print
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.252_name, ; name: libaot-Xamarin.AndroidX.Print.dll.so
		ptr null; void* handle (0x0)
	}, ; 356
	%struct.DSOCacheEntry {
		i64 940742254, ; hash 0x3812966e, from name: libaot-System.Linq.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.71_name, ; name: libaot-System.Linq.dll.so
		ptr null; void* handle (0x0)
	}, ; 357
	%struct.DSOCacheEntry {
		i64 941324169, ; hash 0x381b7789, from name: aot-System.Globalization.Extensions.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.51_name, ; name: libaot-System.Globalization.Extensions.dll.so
		ptr null; void* handle (0x0)
	}, ; 358
	%struct.DSOCacheEntry {
		i64 948077769, ; hash 0x388284c9, from name: aot-System.Xml.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.173_name, ; name: libaot-System.Xml.dll.so
		ptr null; void* handle (0x0)
	}, ; 359
	%struct.DSOCacheEntry {
		i64 950134675, ; hash 0x38a1e793, from name: libaot-System.Drawing.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.46_name, ; name: libaot-System.Drawing.dll.so
		ptr null; void* handle (0x0)
	}, ; 360
	%struct.DSOCacheEntry {
		i64 955402788, ; hash 0x38f24a24, from name: Newtonsoft.Json
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.199_name, ; name: libaot-Newtonsoft.Json.dll.so
		ptr null; void* handle (0x0)
	}, ; 361
	%struct.DSOCacheEntry {
		i64 956022431, ; hash 0x38fbbe9f, from name: aot-System.Text.Encodings.Web
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.146_name, ; name: libaot-System.Text.Encodings.Web.dll.so
		ptr null; void* handle (0x0)
	}, ; 362
	%struct.DSOCacheEntry {
		i64 957967543, ; hash 0x39196cb7, from name: Xamarin.AndroidX.Annotation.Experimental.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.207_name, ; name: libaot-Xamarin.AndroidX.Annotation.Experimental.dll.so
		ptr null; void* handle (0x0)
	}, ; 363
	%struct.DSOCacheEntry {
		i64 958697939, ; hash 0x392491d3, from name: libaot-System.Runtime.Extensions.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.113_name, ; name: libaot-System.Runtime.Extensions.dll.so
		ptr null; void* handle (0x0)
	}, ; 364
	%struct.DSOCacheEntry {
		i64 960258385, ; hash 0x393c6151, from name: libaot-Xamarin.AndroidX.Print
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.252_name, ; name: libaot-Xamarin.AndroidX.Print.dll.so
		ptr null; void* handle (0x0)
	}, ; 365
	%struct.DSOCacheEntry {
		i64 964743262, ; hash 0x3980d05e, from name: libaot-System.Threading.Tasks.Extensions.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.152_name, ; name: libaot-System.Threading.Tasks.Extensions.dll.so
		ptr null; void* handle (0x0)
	}, ; 366
	%struct.DSOCacheEntry {
		i64 965570903, ; hash 0x398d7157, from name: libaot-System
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.174_name, ; name: libaot-System.dll.so
		ptr null; void* handle (0x0)
	}, ; 367
	%struct.DSOCacheEntry {
		i64 966729478, ; hash 0x399f1f06, from name: Xamarin.Google.Crypto.Tink.Android
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.273_name, ; name: libaot-Xamarin.Google.Crypto.Tink.Android.dll.so
		ptr null; void* handle (0x0)
	}, ; 368
	%struct.DSOCacheEntry {
		i64 970896636, ; hash 0x39deb4fc, from name: libaot-Xamarin.AndroidX.Lifecycle.ViewModel.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.243_name, ; name: libaot-Xamarin.AndroidX.Lifecycle.ViewModel.dll.so
		ptr null; void* handle (0x0)
	}, ; 369
	%struct.DSOCacheEntry {
		i64 975236339, ; hash 0x3a20ecf3, from name: System.Diagnostics.Tracing
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.44_name, ; name: libaot-System.Diagnostics.Tracing.dll.so
		ptr null; void* handle (0x0)
	}, ; 370
	%struct.DSOCacheEntry {
		i64 975874589, ; hash 0x3a2aaa1d, from name: System.Xml.XDocument
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.168_name, ; name: libaot-System.Xml.XDocument.dll.so
		ptr null; void* handle (0x0)
	}, ; 371
	%struct.DSOCacheEntry {
		i64 981249547, ; hash 0x3a7cae0b, from name: Xamarin.AndroidX.Browser.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.213_name, ; name: libaot-Xamarin.AndroidX.Browser.dll.so
		ptr null; void* handle (0x0)
	}, ; 372
	%struct.DSOCacheEntry {
		i64 983724495, ; hash 0x3aa271cf, from name: libaot-System.Private.Xml.Linq
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.97_name, ; name: libaot-System.Private.Xml.Linq.dll.so
		ptr null; void* handle (0x0)
	}, ; 373
	%struct.DSOCacheEntry {
		i64 984588788, ; hash 0x3aafa1f4, from name: aot-Xamarin.AndroidX.ConstraintLayout.Core.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.219_name, ; name: libaot-Xamarin.AndroidX.ConstraintLayout.Core.dll.so
		ptr null; void* handle (0x0)
	}, ; 374
	%struct.DSOCacheEntry {
		i64 987214855, ; hash 0x3ad7b407, from name: System.Diagnostics.Tools
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.42_name, ; name: libaot-System.Diagnostics.Tools.dll.so
		ptr null; void* handle (0x0)
	}, ; 375
	%struct.DSOCacheEntry {
		i64 988090461, ; hash 0x3ae5105d, from name: aot-System.Threading.Timer.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.157_name, ; name: libaot-System.Threading.Timer.dll.so
		ptr null; void* handle (0x0)
	}, ; 376
	%struct.DSOCacheEntry {
		i64 991024368, ; hash 0x3b11d4f0, from name: aot-System.ComponentModel.TypeConverter
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.27_name, ; name: libaot-System.ComponentModel.TypeConverter.dll.so
		ptr null; void* handle (0x0)
	}, ; 377
	%struct.DSOCacheEntry {
		i64 991370235, ; hash 0x3b171bfb, from name: libaot-Xamarin.AndroidX.Loader.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.246_name, ; name: libaot-Xamarin.AndroidX.Loader.dll.so
		ptr null; void* handle (0x0)
	}, ; 378
	%struct.DSOCacheEntry {
		i64 992239438, ; hash 0x3b245f4e, from name: aot-Newtonsoft.Json
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.199_name, ; name: libaot-Newtonsoft.Json.dll.so
		ptr null; void* handle (0x0)
	}, ; 379
	%struct.DSOCacheEntry {
		i64 994442037, ; hash 0x3b45fb35, from name: System.IO.FileSystem
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.61_name, ; name: libaot-System.IO.FileSystem.dll.so
		ptr null; void* handle (0x0)
	}, ; 380
	%struct.DSOCacheEntry {
		i64 999798238, ; hash 0x3b97b5de, from name: libaot-Xamarin.Google.Guava.ListenableFuture
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.275_name, ; name: libaot-Xamarin.Google.Guava.ListenableFuture.dll.so
		ptr null; void* handle (0x0)
	}, ; 381
	%struct.DSOCacheEntry {
		i64 999807200, ; hash 0x3b97d8e0, from name: Xamarin.AndroidX.SwipeRefreshLayout.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.261_name, ; name: libaot-Xamarin.AndroidX.SwipeRefreshLayout.dll.so
		ptr null; void* handle (0x0)
	}, ; 382
	%struct.DSOCacheEntry {
		i64 1000172987, ; hash 0x3b9d6dbb, from name: libaot-System.Xml.ReaderWriter
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.166_name, ; name: libaot-System.Xml.ReaderWriter.dll.so
		ptr null; void* handle (0x0)
	}, ; 383
	%struct.DSOCacheEntry {
		i64 1000318620, ; hash 0x3b9fa69c, from name: libaot-System.Net.Http.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.74_name, ; name: libaot-System.Net.Http.dll.so
		ptr null; void* handle (0x0)
	}, ; 384
	%struct.DSOCacheEntry {
		i64 1001112537, ; hash 0x3babc3d9, from name: aot-System.Linq.Parallel.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.69_name, ; name: libaot-System.Linq.Parallel.dll.so
		ptr null; void* handle (0x0)
	}, ; 385
	%struct.DSOCacheEntry {
		i64 1008245420, ; hash 0x3c189aac, from name: System.ServiceProcess.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.142_name, ; name: libaot-System.ServiceProcess.dll.so
		ptr null; void* handle (0x0)
	}, ; 386
	%struct.DSOCacheEntry {
		i64 1014632550, ; hash 0x3c7a1066, from name: Microsoft.Maui.Essentials.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.197_name, ; name: libaot-Microsoft.Maui.Essentials.dll.so
		ptr null; void* handle (0x0)
	}, ; 387
	%struct.DSOCacheEntry {
		i64 1017891626, ; hash 0x3cabcb2a, from name: aot-System.ValueTuple
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.161_name, ; name: libaot-System.ValueTuple.dll.so
		ptr null; void* handle (0x0)
	}, ; 388
	%struct.DSOCacheEntry {
		i64 1019214401, ; hash 0x3cbffa41, from name: System.Drawing
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.46_name, ; name: libaot-System.Drawing.dll.so
		ptr null; void* handle (0x0)
	}, ; 389
	%struct.DSOCacheEntry {
		i64 1020599761, ; hash 0x3cd51dd1, from name: libaot-Microsoft.Maui.Controls.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.194_name, ; name: libaot-Microsoft.Maui.Controls.dll.so
		ptr null; void* handle (0x0)
	}, ; 390
	%struct.DSOCacheEntry {
		i64 1021628303, ; hash 0x3ce4cf8f, from name: libaot-Microsoft.Extensions.Options.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.191_name, ; name: libaot-Microsoft.Extensions.Options.dll.so
		ptr null; void* handle (0x0)
	}, ; 391
	%struct.DSOCacheEntry {
		i64 1021973924, ; hash 0x3cea15a4, from name: libaot-System.Net.Quic
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.81_name, ; name: libaot-System.Net.Quic.dll.so
		ptr null; void* handle (0x0)
	}, ; 392
	%struct.DSOCacheEntry {
		i64 1022524935, ; hash 0x3cf27e07, from name: System.Linq.Parallel.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.69_name, ; name: libaot-System.Linq.Parallel.dll.so
		ptr null; void* handle (0x0)
	}, ; 393
	%struct.DSOCacheEntry {
		i64 1027261693, ; hash 0x3d3ac4fd, from name: aot-Xamarin.AndroidX.DrawerLayout
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.227_name, ; name: libaot-Xamarin.AndroidX.DrawerLayout.dll.so
		ptr null; void* handle (0x0)
	}, ; 394
	%struct.DSOCacheEntry {
		i64 1028951442, ; hash 0x3d548d92, from name: Microsoft.Extensions.DependencyInjection.Abstractions
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.187_name, ; name: libaot-Microsoft.Extensions.DependencyInjection.Abstractions.dll.so
		ptr null; void* handle (0x0)
	}, ; 395
	%struct.DSOCacheEntry {
		i64 1032907180, ; hash 0x3d90e9ac, from name: libaot-System.Resources.ResourceManager
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.109_name, ; name: libaot-System.Resources.ResourceManager.dll.so
		ptr null; void* handle (0x0)
	}, ; 396
	%struct.DSOCacheEntry {
		i64 1035325757, ; hash 0x3db5d13d, from name: aot-Xamarin.AndroidX.SlidingPaneLayout.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.259_name, ; name: libaot-Xamarin.AndroidX.SlidingPaneLayout.dll.so
		ptr null; void* handle (0x0)
	}, ; 397
	%struct.DSOCacheEntry {
		i64 1035644815, ; hash 0x3dbaaf8f, from name: Xamarin.AndroidX.AppCompat
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.209_name, ; name: libaot-Xamarin.AndroidX.AppCompat.dll.so
		ptr null; void* handle (0x0)
	}, ; 398
	%struct.DSOCacheEntry {
		i64 1039941999, ; hash 0x3dfc416f, from name: libaot-System.Threading.Tasks.Parallel
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.153_name, ; name: libaot-System.Threading.Tasks.Parallel.dll.so
		ptr null; void* handle (0x0)
	}, ; 399
	%struct.DSOCacheEntry {
		i64 1042862183, ; hash 0x3e28d067, from name: libaot-Xamarin.AndroidX.Print.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.252_name, ; name: libaot-Xamarin.AndroidX.Print.dll.so
		ptr null; void* handle (0x0)
	}, ; 400
	%struct.DSOCacheEntry {
		i64 1048484821, ; hash 0x3e7e9bd5, from name: System.Reflection.TypeExtensions.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.106_name, ; name: libaot-System.Reflection.TypeExtensions.dll.so
		ptr null; void* handle (0x0)
	}, ; 401
	%struct.DSOCacheEntry {
		i64 1053990498, ; hash 0x3ed29e62, from name: aot-System.Security.Cryptography.OpenSsl
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.133_name, ; name: libaot-System.Security.Cryptography.OpenSsl.dll.so
		ptr null; void* handle (0x0)
	}, ; 402
	%struct.DSOCacheEntry {
		i64 1054437010, ; hash 0x3ed96e92, from name: libaot-System.Runtime.Serialization
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.125_name, ; name: libaot-System.Runtime.Serialization.dll.so
		ptr null; void* handle (0x0)
	}, ; 403
	%struct.DSOCacheEntry {
		i64 1056647825, ; hash 0x3efb2a91, from name: System.Net.WebProxy.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.88_name, ; name: libaot-System.Net.WebProxy.dll.so
		ptr null; void* handle (0x0)
	}, ; 404
	%struct.DSOCacheEntry {
		i64 1064597976, ; hash 0x3f7479d8, from name: Xamarin.AndroidX.Fragment.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.232_name, ; name: libaot-Xamarin.AndroidX.Fragment.dll.so
		ptr null; void* handle (0x0)
	}, ; 405
	%struct.DSOCacheEntry {
		i64 1066952943, ; hash 0x3f9868ef, from name: aot-Xamarin.AndroidX.ResourceInspection.Annotation.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.255_name, ; name: libaot-Xamarin.AndroidX.ResourceInspection.Annotation.dll.so
		ptr null; void* handle (0x0)
	}, ; 406
	%struct.DSOCacheEntry {
		i64 1067306892, ; hash 0x3f9dcf8c, from name: GoogleGson
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.183_name, ; name: libaot-GoogleGson.dll.so
		ptr null; void* handle (0x0)
	}, ; 407
	%struct.DSOCacheEntry {
		i64 1070384468, ; hash 0x3fccc554, from name: aot-Xamarin.AndroidX.Concurrent.Futures.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.217_name, ; name: libaot-Xamarin.AndroidX.Concurrent.Futures.dll.so
		ptr null; void* handle (0x0)
	}, ; 408
	%struct.DSOCacheEntry {
		i64 1070600820, ; hash 0x3fd01274, from name: Xamarin.AndroidX.VersionedParcelable.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.266_name, ; name: libaot-Xamarin.AndroidX.VersionedParcelable.dll.so
		ptr null; void* handle (0x0)
	}, ; 409
	%struct.DSOCacheEntry {
		i64 1074670799, ; hash 0x400e2ccf, from name: Microsoft.Maui.Controls.Xaml.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.195_name, ; name: libaot-Microsoft.Maui.Controls.Xaml.dll.so
		ptr null; void* handle (0x0)
	}, ; 410
	%struct.DSOCacheEntry {
		i64 1076071578, ; hash 0x40238c9a, from name: libaot-Microsoft.CSharp
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.11_name, ; name: libaot-Microsoft.CSharp.dll.so
		ptr null; void* handle (0x0)
	}, ; 411
	%struct.DSOCacheEntry {
		i64 1076575855, ; hash 0x402b3e6f, from name: aot-System.IO
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.67_name, ; name: libaot-System.IO.dll.so
		ptr null; void* handle (0x0)
	}, ; 412
	%struct.DSOCacheEntry {
		i64 1077946076, ; hash 0x404026dc, from name: libaot-Xamarin.AndroidX.Startup.StartupRuntime
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.260_name, ; name: libaot-Xamarin.AndroidX.Startup.StartupRuntime.dll.so
		ptr null; void* handle (0x0)
	}, ; 413
	%struct.DSOCacheEntry {
		i64 1079503280, ; hash 0x4057e9b0, from name: libaot-Xamarin.AndroidX.CursorAdapter.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.223_name, ; name: libaot-Xamarin.AndroidX.CursorAdapter.dll.so
		ptr null; void* handle (0x0)
	}, ; 414
	%struct.DSOCacheEntry {
		i64 1082857460, ; hash 0x408b17f4, from name: System.ComponentModel.TypeConverter
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.27_name, ; name: libaot-System.ComponentModel.TypeConverter.dll.so
		ptr null; void* handle (0x0)
	}, ; 415
	%struct.DSOCacheEntry {
		i64 1084122840, ; hash 0x409e66d8, from name: Xamarin.Kotlin.StdLib
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.277_name, ; name: libaot-Xamarin.Kotlin.StdLib.dll.so
		ptr null; void* handle (0x0)
	}, ; 416
	%struct.DSOCacheEntry {
		i64 1097466424, ; hash 0x416a0238, from name: libaot-Xamarin.AndroidX.Transition.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.263_name, ; name: libaot-Xamarin.AndroidX.Transition.dll.so
		ptr null; void* handle (0x0)
	}, ; 417
	%struct.DSOCacheEntry {
		i64 1097779820, ; hash 0x416eca6c, from name: Xamarin.AndroidX.Tracing.Tracing.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.262_name, ; name: libaot-Xamarin.AndroidX.Tracing.Tracing.dll.so
		ptr null; void* handle (0x0)
	}, ; 418
	%struct.DSOCacheEntry {
		i64 1098259244, ; hash 0x41761b2c, from name: System
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.174_name, ; name: libaot-System.dll.so
		ptr null; void* handle (0x0)
	}, ; 419
	%struct.DSOCacheEntry {
		i64 1106174644, ; hash 0x41eee2b4, from name: libaot-System.IO.Compression.FileSystem.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.54_name, ; name: libaot-System.IO.Compression.FileSystem.dll.so
		ptr null; void* handle (0x0)
	}, ; 420
	%struct.DSOCacheEntry {
		i64 1107286201, ; hash 0x41ffd8b9, from name: libaot-System.Formats.Asn1
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.48_name, ; name: libaot-System.Formats.Asn1.dll.so
		ptr null; void* handle (0x0)
	}, ; 421
	%struct.DSOCacheEntry {
		i64 1107655280, ; hash 0x42057a70, from name: Xamarin.AndroidX.Window.Extensions.Core.Core.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.270_name, ; name: libaot-Xamarin.AndroidX.Window.Extensions.Core.Core.dll.so
		ptr null; void* handle (0x0)
	}, ; 422
	%struct.DSOCacheEntry {
		i64 1113091682, ; hash 0x42586e62, from name: libaot-System.Runtime.Serialization.Xml
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.124_name, ; name: libaot-System.Runtime.Serialization.Xml.dll.so
		ptr null; void* handle (0x0)
	}, ; 423
	%struct.DSOCacheEntry {
		i64 1116556213, ; hash 0x428d4bb5, from name: aot-Xamarin.AndroidX.VectorDrawable.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.264_name, ; name: libaot-Xamarin.AndroidX.VectorDrawable.dll.so
		ptr null; void* handle (0x0)
	}, ; 424
	%struct.DSOCacheEntry {
		i64 1116585629, ; hash 0x428dbe9d, from name: aot-System.Diagnostics.Tracing.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.44_name, ; name: libaot-System.Diagnostics.Tracing.dll.so
		ptr null; void* handle (0x0)
	}, ; 425
	%struct.DSOCacheEntry {
		i64 1121069432, ; hash 0x42d22978, from name: libaot-Microsoft.Extensions.DependencyInjection.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.186_name, ; name: libaot-Microsoft.Extensions.DependencyInjection.dll.so
		ptr null; void* handle (0x0)
	}, ; 426
	%struct.DSOCacheEntry {
		i64 1127624469, ; hash 0x43362f15, from name: Microsoft.Extensions.Logging.Debug
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.190_name, ; name: libaot-Microsoft.Extensions.Logging.Debug.dll.so
		ptr null; void* handle (0x0)
	}, ; 427
	%struct.DSOCacheEntry {
		i64 1129958758, ; hash 0x4359cd66, from name: libaot-System.Net.HttpListener.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.75_name, ; name: libaot-System.Net.HttpListener.dll.so
		ptr null; void* handle (0x0)
	}, ; 428
	%struct.DSOCacheEntry {
		i64 1131138577, ; hash 0x436bce11, from name: libaot-Xamarin.AndroidX.Annotation
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.206_name, ; name: libaot-Xamarin.AndroidX.Annotation.dll.so
		ptr null; void* handle (0x0)
	}, ; 429
	%struct.DSOCacheEntry {
		i64 1134457611, ; hash 0x439e730b, from name: aot-Xamarin.AndroidX.Interpolator.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.234_name, ; name: libaot-Xamarin.AndroidX.Interpolator.dll.so
		ptr null; void* handle (0x0)
	}, ; 430
	%struct.DSOCacheEntry {
		i64 1135989743, ; hash 0x43b5d3ef, from name: aot-System.Security.Cryptography.Csp
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.131_name, ; name: libaot-System.Security.Cryptography.Csp.dll.so
		ptr null; void* handle (0x0)
	}, ; 431
	%struct.DSOCacheEntry {
		i64 1136326207, ; hash 0x43baf63f, from name: libaot-Xamarin.AndroidX.Navigation.Common
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.248_name, ; name: libaot-Xamarin.AndroidX.Navigation.Common.dll.so
		ptr null; void* handle (0x0)
	}, ; 432
	%struct.DSOCacheEntry {
		i64 1141279138, ; hash 0x440689a2, from name: libaot-System.Core
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.31_name, ; name: libaot-System.Core.dll.so
		ptr null; void* handle (0x0)
	}, ; 433
	%struct.DSOCacheEntry {
		i64 1144657884, ; hash 0x443a17dc, from name: aot-System.Diagnostics.DiagnosticSource
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.37_name, ; name: libaot-System.Diagnostics.DiagnosticSource.dll.so
		ptr null; void* handle (0x0)
	}, ; 434
	%struct.DSOCacheEntry {
		i64 1145849530, ; hash 0x444c46ba, from name: libaot-System.Runtime.InteropServices.JavaScript
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.115_name, ; name: libaot-System.Runtime.InteropServices.JavaScript.dll.so
		ptr null; void* handle (0x0)
	}, ; 435
	%struct.DSOCacheEntry {
		i64 1146066326, ; hash 0x444f9596, from name: Xamarin.AndroidX.Emoji2.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.229_name, ; name: libaot-Xamarin.AndroidX.Emoji2.dll.so
		ptr null; void* handle (0x0)
	}, ; 436
	%struct.DSOCacheEntry {
		i64 1149092582, ; hash 0x447dc2e6, from name: Xamarin.AndroidX.Window
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.269_name, ; name: libaot-Xamarin.AndroidX.Window.dll.so
		ptr null; void* handle (0x0)
	}, ; 437
	%struct.DSOCacheEntry {
		i64 1158083819, ; hash 0x4506f4eb, from name: libaot-System.Net.Requests.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.82_name, ; name: libaot-System.Net.Requests.dll.so
		ptr null; void* handle (0x0)
	}, ; 438
	%struct.DSOCacheEntry {
		i64 1158840373, ; hash 0x45128035, from name: libaot-System.Threading.Overlapped.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.150_name, ; name: libaot-System.Threading.Overlapped.dll.so
		ptr null; void* handle (0x0)
	}, ; 439
	%struct.DSOCacheEntry {
		i64 1162145747, ; hash 0x4544efd3, from name: aot-Xamarin.AndroidX.Activity.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.204_name, ; name: libaot-Xamarin.AndroidX.Activity.dll.so
		ptr null; void* handle (0x0)
	}, ; 440
	%struct.DSOCacheEntry {
		i64 1163002600, ; hash 0x455202e8, from name: libaot-System.Collections.Specialized
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.21_name, ; name: libaot-System.Collections.Specialized.dll.so
		ptr null; void* handle (0x0)
	}, ; 441
	%struct.DSOCacheEntry {
		i64 1166279424, ; hash 0x45840300, from name: libaot-Microsoft.Extensions.Primitives.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.192_name, ; name: libaot-Microsoft.Extensions.Primitives.dll.so
		ptr null; void* handle (0x0)
	}, ; 442
	%struct.DSOCacheEntry {
		i64 1166903420, ; hash 0x458d887c, from name: System.Collections.Concurrent.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.18_name, ; name: libaot-System.Collections.Concurrent.dll.so
		ptr null; void* handle (0x0)
	}, ; 443
	%struct.DSOCacheEntry {
		i64 1167819601, ; hash 0x459b8351, from name: libaot-System.IO.FileSystem.DriveInfo.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.58_name, ; name: libaot-System.IO.FileSystem.DriveInfo.dll.so
		ptr null; void* handle (0x0)
	}, ; 444
	%struct.DSOCacheEntry {
		i64 1168283859, ; hash 0x45a298d3, from name: libaot-System.Collections.NonGeneric.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.20_name, ; name: libaot-System.Collections.NonGeneric.dll.so
		ptr null; void* handle (0x0)
	}, ; 445
	%struct.DSOCacheEntry {
		i64 1169748878, ; hash 0x45b8f38e, from name: libaot-System.Net.Sockets
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.85_name, ; name: libaot-System.Net.Sockets.dll.so
		ptr null; void* handle (0x0)
	}, ; 446
	%struct.DSOCacheEntry {
		i64 1173940943, ; hash 0x45f8eacf, from name: libaot-Xamarin.AndroidX.Window
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.269_name, ; name: libaot-Xamarin.AndroidX.Window.dll.so
		ptr null; void* handle (0x0)
	}, ; 447
	%struct.DSOCacheEntry {
		i64 1175144683, ; hash 0x460b48eb, from name: Xamarin.AndroidX.VectorDrawable.Animated
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.265_name, ; name: libaot-Xamarin.AndroidX.VectorDrawable.Animated.dll.so
		ptr null; void* handle (0x0)
	}, ; 448
	%struct.DSOCacheEntry {
		i64 1180449965, ; hash 0x465c3cad, from name: aot-System.ComponentModel.DataAnnotations
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.24_name, ; name: libaot-System.ComponentModel.DataAnnotations.dll.so
		ptr null; void* handle (0x0)
	}, ; 449
	%struct.DSOCacheEntry {
		i64 1185547529, ; hash 0x46aa0509, from name: aot-System.Xml.XmlDocument.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.171_name, ; name: libaot-System.Xml.XmlDocument.dll.so
		ptr null; void* handle (0x0)
	}, ; 450
	%struct.DSOCacheEntry {
		i64 1189105934, ; hash 0x46e0510e, from name: libaot-System.Diagnostics.Debug
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.36_name, ; name: libaot-System.Diagnostics.Debug.dll.so
		ptr null; void* handle (0x0)
	}, ; 451
	%struct.DSOCacheEntry {
		i64 1191093733, ; hash 0x46fea5e5, from name: libaot-Xamarin.Kotlin.StdLib.Common
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.278_name, ; name: libaot-Xamarin.Kotlin.StdLib.Common.dll.so
		ptr null; void* handle (0x0)
	}, ; 452
	%struct.DSOCacheEntry {
		i64 1194435441, ; hash 0x4731a371, from name: libaot-Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.245_name, ; name: libaot-Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll.so
		ptr null; void* handle (0x0)
	}, ; 453
	%struct.DSOCacheEntry {
		i64 1196134873, ; hash 0x474b91d9, from name: System.Reflection.Extensions.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.103_name, ; name: libaot-System.Reflection.Extensions.dll.so
		ptr null; void* handle (0x0)
	}, ; 454
	%struct.DSOCacheEntry {
		i64 1197858586, ; hash 0x4765df1a, from name: libaot-System.Drawing
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.46_name, ; name: libaot-System.Drawing.dll.so
		ptr null; void* handle (0x0)
	}, ; 455
	%struct.DSOCacheEntry {
		i64 1198481334, ; hash 0x476f5fb6, from name: aot-Xamarin.Google.Guava.ListenableFuture.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.275_name, ; name: libaot-Xamarin.Google.Guava.ListenableFuture.dll.so
		ptr null; void* handle (0x0)
	}, ; 456
	%struct.DSOCacheEntry {
		i64 1198981621, ; hash 0x477701f5, from name: aot-System.IO.FileSystem.Watcher.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.60_name, ; name: libaot-System.IO.FileSystem.Watcher.dll.so
		ptr null; void* handle (0x0)
	}, ; 457
	%struct.DSOCacheEntry {
		i64 1202528835, ; hash 0x47ad2243, from name: libaot-System.Net.Http.Json
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.73_name, ; name: libaot-System.Net.Http.Json.dll.so
		ptr null; void* handle (0x0)
	}, ; 458
	%struct.DSOCacheEntry {
		i64 1203263500, ; hash 0x47b8580c, from name: System.Text.Encoding.CodePages.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.143_name, ; name: libaot-System.Text.Encoding.CodePages.dll.so
		ptr null; void* handle (0x0)
	}, ; 459
	%struct.DSOCacheEntry {
		i64 1203671022, ; hash 0x47be8fee, from name: aot-Xamarin.Google.ErrorProne.Annotations
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.274_name, ; name: libaot-Xamarin.Google.ErrorProne.Annotations.dll.so
		ptr null; void* handle (0x0)
	}, ; 460
	%struct.DSOCacheEntry {
		i64 1204270330, ; hash 0x47c7b4fa, from name: Xamarin.AndroidX.Arch.Core.Common
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.211_name, ; name: libaot-Xamarin.AndroidX.Arch.Core.Common.dll.so
		ptr null; void* handle (0x0)
	}, ; 461
	%struct.DSOCacheEntry {
		i64 1204477115, ; hash 0x47cadcbb, from name: aot-Xamarin.Google.Guava.ListenableFuture
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.275_name, ; name: libaot-Xamarin.Google.Guava.ListenableFuture.dll.so
		ptr null; void* handle (0x0)
	}, ; 462
	%struct.DSOCacheEntry {
		i64 1205455730, ; hash 0x47d9cb72, from name: Xamarin.AndroidX.ExifInterface.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.231_name, ; name: libaot-Xamarin.AndroidX.ExifInterface.dll.so
		ptr null; void* handle (0x0)
	}, ; 463
	%struct.DSOCacheEntry {
		i64 1208029921, ; hash 0x480112e1, from name: libaot-System.Windows
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.164_name, ; name: libaot-System.Windows.dll.so
		ptr null; void* handle (0x0)
	}, ; 464
	%struct.DSOCacheEntry {
		i64 1208641965, ; hash 0x480a69ad, from name: System.Diagnostics.Process
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.39_name, ; name: libaot-System.Diagnostics.Process.dll.so
		ptr null; void* handle (0x0)
	}, ; 465
	%struct.DSOCacheEntry {
		i64 1214827643, ; hash 0x4868cc7b, from name: CommunityToolkit.Mvvm
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.182_name, ; name: libaot-CommunityToolkit.Mvvm.dll.so
		ptr null; void* handle (0x0)
	}, ; 466
	%struct.DSOCacheEntry {
		i64 1215177351, ; hash 0x486e2287, from name: aot-System.Runtime.CompilerServices.Unsafe.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.111_name, ; name: libaot-System.Runtime.CompilerServices.Unsafe.dll.so
		ptr null; void* handle (0x0)
	}, ; 467
	%struct.DSOCacheEntry {
		i64 1216888235, ; hash 0x48883dab, from name: aot-System.Buffers.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.17_name, ; name: libaot-System.Buffers.dll.so
		ptr null; void* handle (0x0)
	}, ; 468
	%struct.DSOCacheEntry {
		i64 1217307485, ; hash 0x488ea35d, from name: Xamarin.AndroidX.Collection.Ktx.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.216_name, ; name: libaot-Xamarin.AndroidX.Collection.Ktx.dll.so
		ptr null; void* handle (0x0)
	}, ; 469
	%struct.DSOCacheEntry {
		i64 1217853959, ; hash 0x4896fa07, from name: aot-System.Runtime.Extensions.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.113_name, ; name: libaot-System.Runtime.Extensions.dll.so
		ptr null; void* handle (0x0)
	}, ; 470
	%struct.DSOCacheEntry {
		i64 1218265601, ; hash 0x489d4201, from name: aot-Xamarin.AndroidX.Startup.StartupRuntime
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.260_name, ; name: libaot-Xamarin.AndroidX.Startup.StartupRuntime.dll.so
		ptr null; void* handle (0x0)
	}, ; 471
	%struct.DSOCacheEntry {
		i64 1219128291, ; hash 0x48aa6be3, from name: System.IO.IsolatedStorage
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.62_name, ; name: libaot-System.IO.IsolatedStorage.dll.so
		ptr null; void* handle (0x0)
	}, ; 472
	%struct.DSOCacheEntry {
		i64 1219286154, ; hash 0x48acd48a, from name: libaot-System.Threading.Overlapped
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.150_name, ; name: libaot-System.Threading.Overlapped.dll.so
		ptr null; void* handle (0x0)
	}, ; 473
	%struct.DSOCacheEntry {
		i64 1221399229, ; hash 0x48cd12bd, from name: netstandard.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.177_name, ; name: libaot-netstandard.dll.so
		ptr null; void* handle (0x0)
	}, ; 474
	%struct.DSOCacheEntry {
		i64 1233284482, ; hash 0x49826d82, from name: aot-Xamarin.Android.Glide.GifDecoder
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.203_name, ; name: libaot-Xamarin.Android.Glide.GifDecoder.dll.so
		ptr null; void* handle (0x0)
	}, ; 475
	%struct.DSOCacheEntry {
		i64 1239876156, ; hash 0x49e7023c, from name: libaot-System.Reflection.Emit.Lightweight
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.101_name, ; name: libaot-System.Reflection.Emit.Lightweight.dll.so
		ptr null; void* handle (0x0)
	}, ; 476
	%struct.DSOCacheEntry {
		i64 1248415137, ; hash 0x4a694da1, from name: aot-System.Runtime.Loader
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.119_name, ; name: libaot-System.Runtime.Loader.dll.so
		ptr null; void* handle (0x0)
	}, ; 477
	%struct.DSOCacheEntry {
		i64 1248505390, ; hash 0x4a6aae2e, from name: libaot-System.Diagnostics.TraceSource
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.43_name, ; name: libaot-System.Diagnostics.TraceSource.dll.so
		ptr null; void* handle (0x0)
	}, ; 478
	%struct.DSOCacheEntry {
		i64 1249626734, ; hash 0x4a7bca6e, from name: Xamarin.AndroidX.CoordinatorLayout.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.220_name, ; name: libaot-Xamarin.AndroidX.CoordinatorLayout.dll.so
		ptr null; void* handle (0x0)
	}, ; 479
	%struct.DSOCacheEntry {
		i64 1251805992, ; hash 0x4a9d0b28, from name: aot-System.Net.NetworkInformation.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.78_name, ; name: libaot-System.Net.NetworkInformation.dll.so
		ptr null; void* handle (0x0)
	}, ; 480
	%struct.DSOCacheEntry {
		i64 1253011324, ; hash 0x4aaf6f7c, from name: Microsoft.Win32.Registry
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.15_name, ; name: libaot-Microsoft.Win32.Registry.dll.so
		ptr null; void* handle (0x0)
	}, ; 481
	%struct.DSOCacheEntry {
		i64 1264007745, ; hash 0x4b573a41, from name: aot-Xamarin.AndroidX.CustomView
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.224_name, ; name: libaot-Xamarin.AndroidX.CustomView.dll.so
		ptr null; void* handle (0x0)
	}, ; 482
	%struct.DSOCacheEntry {
		i64 1264963479, ; hash 0x4b65cf97, from name: aot-System.Net.Mail.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.76_name, ; name: libaot-System.Net.Mail.dll.so
		ptr null; void* handle (0x0)
	}, ; 483
	%struct.DSOCacheEntry {
		i64 1267360935, ; hash 0x4b8a64a7, from name: Xamarin.AndroidX.VectorDrawable
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.264_name, ; name: libaot-Xamarin.AndroidX.VectorDrawable.dll.so
		ptr null; void* handle (0x0)
	}, ; 484
	%struct.DSOCacheEntry {
		i64 1268771501, ; hash 0x4b9feaad, from name: aot-System.Diagnostics.DiagnosticSource.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.37_name, ; name: libaot-System.Diagnostics.DiagnosticSource.dll.so
		ptr null; void* handle (0x0)
	}, ; 485
	%struct.DSOCacheEntry {
		i64 1270657563, ; hash 0x4bbcb21b, from name: System.Runtime.Serialization.Primitives.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.123_name, ; name: libaot-System.Runtime.Serialization.Primitives.dll.so
		ptr null; void* handle (0x0)
	}, ; 486
	%struct.DSOCacheEntry {
		i64 1271014665, ; hash 0x4bc22509, from name: libaot-System.Runtime.InteropServices.RuntimeInformation
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.116_name, ; name: libaot-System.Runtime.InteropServices.RuntimeInformation.dll.so
		ptr null; void* handle (0x0)
	}, ; 487
	%struct.DSOCacheEntry {
		i64 1271329452, ; hash 0x4bc6f2ac, from name: libaot-Xamarin.AndroidX.CustomView.PoolingContainer.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.225_name, ; name: libaot-Xamarin.AndroidX.CustomView.PoolingContainer.dll.so
		ptr null; void* handle (0x0)
	}, ; 488
	%struct.DSOCacheEntry {
		i64 1271447617, ; hash 0x4bc8c041, from name: System.ServiceModel.Web.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.141_name, ; name: libaot-System.ServiceModel.Web.dll.so
		ptr null; void* handle (0x0)
	}, ; 489
	%struct.DSOCacheEntry {
		i64 1273260888, ; hash 0x4be46b58, from name: Xamarin.AndroidX.Collection.Ktx
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.216_name, ; name: libaot-Xamarin.AndroidX.Collection.Ktx.dll.so
		ptr null; void* handle (0x0)
	}, ; 490
	%struct.DSOCacheEntry {
		i64 1275534314, ; hash 0x4c071bea, from name: Xamarin.KotlinX.Coroutines.Android
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.281_name, ; name: libaot-Xamarin.KotlinX.Coroutines.Android.dll.so
		ptr null; void* handle (0x0)
	}, ; 491
	%struct.DSOCacheEntry {
		i64 1276123925, ; hash 0x4c101b15, from name: libaot-System.Xml.XmlDocument.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.171_name, ; name: libaot-System.Xml.XmlDocument.dll.so
		ptr null; void* handle (0x0)
	}, ; 492
	%struct.DSOCacheEntry {
		i64 1277412854, ; hash 0x4c23c5f6, from name: libaot-System.Core.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.31_name, ; name: libaot-System.Core.dll.so
		ptr null; void* handle (0x0)
	}, ; 493
	%struct.DSOCacheEntry {
		i64 1278448581, ; hash 0x4c3393c5, from name: Xamarin.AndroidX.Annotation.Jvm
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.208_name, ; name: libaot-Xamarin.AndroidX.Annotation.Jvm.dll.so
		ptr null; void* handle (0x0)
	}, ; 494
	%struct.DSOCacheEntry {
		i64 1279652645, ; hash 0x4c45f325, from name: libaot-System.Private.DataContractSerialization.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.95_name, ; name: libaot-System.Private.DataContractSerialization.dll.so
		ptr null; void* handle (0x0)
	}, ; 495
	%struct.DSOCacheEntry {
		i64 1281955724, ; hash 0x4c69178c, from name: libaot-Microsoft.Maui.Controls.Xaml
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.195_name, ; name: libaot-Microsoft.Maui.Controls.Xaml.dll.so
		ptr null; void* handle (0x0)
	}, ; 496
	%struct.DSOCacheEntry {
		i64 1285465351, ; hash 0x4c9ea507, from name: aot-System.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.174_name, ; name: libaot-System.dll.so
		ptr null; void* handle (0x0)
	}, ; 497
	%struct.DSOCacheEntry {
		i64 1288551859, ; hash 0x4ccdbdb3, from name: libaot-System.Security.Cryptography.OpenSsl.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.133_name, ; name: libaot-System.Security.Cryptography.OpenSsl.dll.so
		ptr null; void* handle (0x0)
	}, ; 498
	%struct.DSOCacheEntry {
		i64 1290546461, ; hash 0x4cec2d1d, from name: libaot-Xamarin.Android.Glide.DiskLruCache
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.202_name, ; name: libaot-Xamarin.Android.Glide.DiskLruCache.dll.so
		ptr null; void* handle (0x0)
	}, ; 499
	%struct.DSOCacheEntry {
		i64 1293582060, ; hash 0x4d1a7eec, from name: libaot-Xamarin.Kotlin.StdLib.Jdk8.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.280_name, ; name: libaot-Xamarin.Kotlin.StdLib.Jdk8.dll.so
		ptr null; void* handle (0x0)
	}, ; 500
	%struct.DSOCacheEntry {
		i64 1303476924, ; hash 0x4db17abc, from name: libaot-System.Security.Cryptography.Primitives.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.134_name, ; name: libaot-System.Security.Cryptography.Primitives.dll.so
		ptr null; void* handle (0x0)
	}, ; 501
	%struct.DSOCacheEntry {
		i64 1303631868, ; hash 0x4db3d7fc, from name: libaot-Microsoft.Maui.Graphics
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.198_name, ; name: libaot-Microsoft.Maui.Graphics.dll.so
		ptr null; void* handle (0x0)
	}, ; 502
	%struct.DSOCacheEntry {
		i64 1307770172, ; hash 0x4df2fd3c, from name: System.ValueTuple.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.161_name, ; name: libaot-System.ValueTuple.dll.so
		ptr null; void* handle (0x0)
	}, ; 503
	%struct.DSOCacheEntry {
		i64 1309188875, ; hash 0x4e08a30b, from name: System.Private.DataContractSerialization
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.95_name, ; name: libaot-System.Private.DataContractSerialization.dll.so
		ptr null; void* handle (0x0)
	}, ; 504
	%struct.DSOCacheEntry {
		i64 1311869325, ; hash 0x4e31898d, from name: libaot-System.Threading.Tasks.Extensions
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.152_name, ; name: libaot-System.Threading.Tasks.Extensions.dll.so
		ptr null; void* handle (0x0)
	}, ; 505
	%struct.DSOCacheEntry {
		i64 1316622651, ; hash 0x4e7a113b, from name: System.Net.Quic.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.81_name, ; name: libaot-System.Net.Quic.dll.so
		ptr null; void* handle (0x0)
	}, ; 506
	%struct.DSOCacheEntry {
		i64 1318013593, ; hash 0x4e8f4a99, from name: aot-System.ComponentModel.EventBasedAsync
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.25_name, ; name: libaot-System.ComponentModel.EventBasedAsync.dll.so
		ptr null; void* handle (0x0)
	}, ; 507
	%struct.DSOCacheEntry {
		i64 1322266167, ; hash 0x4ed02e37, from name: aot-WindowsBase
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.175_name, ; name: libaot-WindowsBase.dll.so
		ptr null; void* handle (0x0)
	}, ; 508
	%struct.DSOCacheEntry {
		i64 1324164729, ; hash 0x4eed2679, from name: System.Linq
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.71_name, ; name: libaot-System.Linq.dll.so
		ptr null; void* handle (0x0)
	}, ; 509
	%struct.DSOCacheEntry {
		i64 1326422064, ; hash 0x4f0f9830, from name: libaot-System.ObjectModel.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.94_name, ; name: libaot-System.ObjectModel.dll.so
		ptr null; void* handle (0x0)
	}, ; 510
	%struct.DSOCacheEntry {
		i64 1330538025, ; hash 0x4f4e6629, from name: libaot-System.ObjectModel
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.94_name, ; name: libaot-System.ObjectModel.dll.so
		ptr null; void* handle (0x0)
	}, ; 511
	%struct.DSOCacheEntry {
		i64 1331715804, ; hash 0x4f605edc, from name: aot-Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.245_name, ; name: libaot-Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll.so
		ptr null; void* handle (0x0)
	}, ; 512
	%struct.DSOCacheEntry {
		i64 1335605085, ; hash 0x4f9bb75d, from name: aot-System.Net.WebSockets
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.90_name, ; name: libaot-System.Net.WebSockets.dll.so
		ptr null; void* handle (0x0)
	}, ; 513
	%struct.DSOCacheEntry {
		i64 1341712041, ; hash 0x4ff8e6a9, from name: System.Reflection.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.107_name, ; name: libaot-System.Reflection.dll.so
		ptr null; void* handle (0x0)
	}, ; 514
	%struct.DSOCacheEntry {
		i64 1341817829, ; hash 0x4ffa83e5, from name: Xamarin.AndroidX.Security.SecurityCrypto.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.258_name, ; name: libaot-Xamarin.AndroidX.Security.SecurityCrypto.dll.so
		ptr null; void* handle (0x0)
	}, ; 515
	%struct.DSOCacheEntry {
		i64 1351248141, ; hash 0x508a690d, from name: libaot-System.Drawing.Primitives.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.45_name, ; name: libaot-System.Drawing.Primitives.dll.so
		ptr null; void* handle (0x0)
	}, ; 516
	%struct.DSOCacheEntry {
		i64 1354195601, ; hash 0x50b76291, from name: aot-Xamarin.AndroidX.SavedState.SavedState.Ktx.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.257_name, ; name: libaot-Xamarin.AndroidX.SavedState.SavedState.Ktx.dll.so
		ptr null; void* handle (0x0)
	}, ; 517
	%struct.DSOCacheEntry {
		i64 1356877886, ; hash 0x50e0503e, from name: aot-System.Threading.ThreadPool
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.156_name, ; name: libaot-System.Threading.ThreadPool.dll.so
		ptr null; void* handle (0x0)
	}, ; 518
	%struct.DSOCacheEntry {
		i64 1356916091, ; hash 0x50e0e57b, from name: Microsoft.Maui.Controls.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.194_name, ; name: libaot-Microsoft.Maui.Controls.dll.so
		ptr null; void* handle (0x0)
	}, ; 519
	%struct.DSOCacheEntry {
		i64 1358324080, ; hash 0x50f66170, from name: mono-component-hot_reload
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.4_name, ; name: libmono-component-hot_reload.so
		ptr null; void* handle (0x0)
	}, ; 520
	%struct.DSOCacheEntry {
		i64 1360868007, ; hash 0x511d32a7, from name: libaot-Xamarin.Google.Android.Material
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.271_name, ; name: libaot-Xamarin.Google.Android.Material.dll.so
		ptr null; void* handle (0x0)
	}, ; 521
	%struct.DSOCacheEntry {
		i64 1363166739, ; hash 0x51404613, from name: libaot-Xamarin.AndroidX.Navigation.Fragment
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.249_name, ; name: libaot-Xamarin.AndroidX.Navigation.Fragment.dll.so
		ptr null; void* handle (0x0)
	}, ; 522
	%struct.DSOCacheEntry {
		i64 1364015309, ; hash 0x514d38cd, from name: System.IO
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.67_name, ; name: libaot-System.IO.dll.so
		ptr null; void* handle (0x0)
	}, ; 523
	%struct.DSOCacheEntry {
		i64 1364629429, ; hash 0x515697b5, from name: System.Linq.Expressions.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.68_name, ; name: libaot-System.Linq.Expressions.dll.so
		ptr null; void* handle (0x0)
	}, ; 524
	%struct.DSOCacheEntry {
		i64 1365166481, ; hash 0x515ec991, from name: libaot-Xamarin.AndroidX.Fragment.Ktx
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.233_name, ; name: libaot-Xamarin.AndroidX.Fragment.Ktx.dll.so
		ptr null; void* handle (0x0)
	}, ; 525
	%struct.DSOCacheEntry {
		i64 1369292404, ; hash 0x519dbe74, from name: aot-Xamarin.AndroidX.ViewPager2
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.268_name, ; name: libaot-Xamarin.AndroidX.ViewPager2.dll.so
		ptr null; void* handle (0x0)
	}, ; 526
	%struct.DSOCacheEntry {
		i64 1369565496, ; hash 0x51a1e938, from name: System.Drawing.Primitives.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.45_name, ; name: libaot-System.Drawing.Primitives.dll.so
		ptr null; void* handle (0x0)
	}, ; 527
	%struct.DSOCacheEntry {
		i64 1369635430, ; hash 0x51a2fa66, from name: aot-Xamarin.AndroidX.Window
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.269_name, ; name: libaot-Xamarin.AndroidX.Window.dll.so
		ptr null; void* handle (0x0)
	}, ; 528
	%struct.DSOCacheEntry {
		i64 1370211191, ; hash 0x51abc377, from name: Xamarin.AndroidX.ConstraintLayout.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.218_name, ; name: libaot-Xamarin.AndroidX.ConstraintLayout.dll.so
		ptr null; void* handle (0x0)
	}, ; 529
	%struct.DSOCacheEntry {
		i64 1371532172, ; hash 0x51bfeb8c, from name: System.Transactions.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.160_name, ; name: libaot-System.Transactions.dll.so
		ptr null; void* handle (0x0)
	}, ; 530
	%struct.DSOCacheEntry {
		i64 1372062315, ; hash 0x51c8026b, from name: libaot-System.IO.FileSystem.Primitives
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.59_name, ; name: libaot-System.IO.FileSystem.Primitives.dll.so
		ptr null; void* handle (0x0)
	}, ; 531
	%struct.DSOCacheEntry {
		i64 1373613485, ; hash 0x51dfadad, from name: libaot-Microsoft.Maui.Essentials
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.197_name, ; name: libaot-Microsoft.Maui.Essentials.dll.so
		ptr null; void* handle (0x0)
	}, ; 532
	%struct.DSOCacheEntry {
		i64 1376113003, ; hash 0x5205d16b, from name: aot-Microsoft.CSharp.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.11_name, ; name: libaot-Microsoft.CSharp.dll.so
		ptr null; void* handle (0x0)
	}, ; 533
	%struct.DSOCacheEntry {
		i64 1376238345, ; hash 0x5207bb09, from name: aot-System.Private.CoreLib.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.283_name, ; name: libaot-System.Private.CoreLib.dll.so
		ptr null; void* handle (0x0)
	}, ; 534
	%struct.DSOCacheEntry {
		i64 1376866003, ; hash 0x52114ed3, from name: Xamarin.AndroidX.SavedState
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.256_name, ; name: libaot-Xamarin.AndroidX.SavedState.dll.so
		ptr null; void* handle (0x0)
	}, ; 535
	%struct.DSOCacheEntry {
		i64 1378375328, ; hash 0x522856a0, from name: System.IO.FileSystem.DriveInfo.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.58_name, ; name: libaot-System.IO.FileSystem.DriveInfo.dll.so
		ptr null; void* handle (0x0)
	}, ; 536
	%struct.DSOCacheEntry {
		i64 1379779777, ; hash 0x523dc4c1, from name: System.Resources.ResourceManager
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.109_name, ; name: libaot-System.Resources.ResourceManager.dll.so
		ptr null; void* handle (0x0)
	}, ; 537
	%struct.DSOCacheEntry {
		i64 1383009688, ; hash 0x526f0d98, from name: aot-System.Net.Http.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.74_name, ; name: libaot-System.Net.Http.dll.so
		ptr null; void* handle (0x0)
	}, ; 538
	%struct.DSOCacheEntry {
		i64 1383267250, ; hash 0x5272fbb2, from name: aot-System.ObjectModel
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.94_name, ; name: libaot-System.ObjectModel.dll.so
		ptr null; void* handle (0x0)
	}, ; 539
	%struct.DSOCacheEntry {
		i64 1386166540, ; hash 0x529f390c, from name: libaot-System.Threading
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.158_name, ; name: libaot-System.Threading.dll.so
		ptr null; void* handle (0x0)
	}, ; 540
	%struct.DSOCacheEntry {
		i64 1387503972, ; hash 0x52b3a164, from name: System.Net.WebClient.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.86_name, ; name: libaot-System.Net.WebClient.dll.so
		ptr null; void* handle (0x0)
	}, ; 541
	%struct.DSOCacheEntry {
		i64 1388636356, ; hash 0x52c4e8c4, from name: aot-Microsoft.Extensions.DependencyInjection.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.186_name, ; name: libaot-Microsoft.Extensions.DependencyInjection.dll.so
		ptr null; void* handle (0x0)
	}, ; 542
	%struct.DSOCacheEntry {
		i64 1388714662, ; hash 0x52c61aa6, from name: libaot-Xamarin.AndroidX.VectorDrawable.Animated
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.265_name, ; name: libaot-Xamarin.AndroidX.VectorDrawable.Animated.dll.so
		ptr null; void* handle (0x0)
	}, ; 543
	%struct.DSOCacheEntry {
		i64 1390172878, ; hash 0x52dc5ace, from name: aot-System.Text.Encoding.CodePages.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.143_name, ; name: libaot-System.Text.Encoding.CodePages.dll.so
		ptr null; void* handle (0x0)
	}, ; 544
	%struct.DSOCacheEntry {
		i64 1395919151, ; hash 0x5334092f, from name: libaot-System.ComponentModel.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.28_name, ; name: libaot-System.ComponentModel.dll.so
		ptr null; void* handle (0x0)
	}, ; 545
	%struct.DSOCacheEntry {
		i64 1396668899, ; hash 0x533f79e3, from name: libaot-Xamarin.AndroidX.RecyclerView.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.254_name, ; name: libaot-Xamarin.AndroidX.RecyclerView.dll.so
		ptr null; void* handle (0x0)
	}, ; 546
	%struct.DSOCacheEntry {
		i64 1398864029, ; hash 0x5360f89d, from name: System.Security.Cryptography.Native.Android
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.2_name, ; name: libSystem.Security.Cryptography.Native.Android.so
		ptr null; void* handle (0x0)
	}, ; 547
	%struct.DSOCacheEntry {
		i64 1401242606, ; hash 0x538543ee, from name: libaot-Xamarin.AndroidX.Transition
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.263_name, ; name: libaot-Xamarin.AndroidX.Transition.dll.so
		ptr null; void* handle (0x0)
	}, ; 548
	%struct.DSOCacheEntry {
		i64 1401968973, ; hash 0x5390594d, from name: System.Collections.Specialized.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.21_name, ; name: libaot-System.Collections.Specialized.dll.so
		ptr null; void* handle (0x0)
	}, ; 549
	%struct.DSOCacheEntry {
		i64 1402588487, ; hash 0x5399cd47, from name: aot-Xamarin.AndroidX.VectorDrawable.Animated.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.265_name, ; name: libaot-Xamarin.AndroidX.VectorDrawable.Animated.dll.so
		ptr null; void* handle (0x0)
	}, ; 550
	%struct.DSOCacheEntry {
		i64 1404838337, ; hash 0x53bc21c1, from name: aot-Xamarin.KotlinX.Coroutines.Android
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.281_name, ; name: libaot-Xamarin.KotlinX.Coroutines.Android.dll.so
		ptr null; void* handle (0x0)
	}, ; 551
	%struct.DSOCacheEntry {
		i64 1406073936, ; hash 0x53cefc50, from name: Xamarin.AndroidX.CoordinatorLayout
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.220_name, ; name: libaot-Xamarin.AndroidX.CoordinatorLayout.dll.so
		ptr null; void* handle (0x0)
	}, ; 552
	%struct.DSOCacheEntry {
		i64 1409736290, ; hash 0x5406de62, from name: aot-Xamarin.AndroidX.AppCompat.AppCompatResources.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.210_name, ; name: libaot-Xamarin.AndroidX.AppCompat.AppCompatResources.dll.so
		ptr null; void* handle (0x0)
	}, ; 553
	%struct.DSOCacheEntry {
		i64 1410379835, ; hash 0x5410b03b, from name: libaot-Microsoft.VisualBasic
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.13_name, ; name: libaot-Microsoft.VisualBasic.dll.so
		ptr null; void* handle (0x0)
	}, ; 554
	%struct.DSOCacheEntry {
		i64 1411362248, ; hash 0x541fadc8, from name: libaot-Xamarin.AndroidX.Annotation.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.206_name, ; name: libaot-Xamarin.AndroidX.Annotation.dll.so
		ptr null; void* handle (0x0)
	}, ; 555
	%struct.DSOCacheEntry {
		i64 1411638395, ; hash 0x5423e47b, from name: System.Runtime.CompilerServices.Unsafe
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.111_name, ; name: libaot-System.Runtime.CompilerServices.Unsafe.dll.so
		ptr null; void* handle (0x0)
	}, ; 556
	%struct.DSOCacheEntry {
		i64 1414194455, ; hash 0x544ae517, from name: System.Threading.Tasks.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.154_name, ; name: libaot-System.Threading.Tasks.dll.so
		ptr null; void* handle (0x0)
	}, ; 557
	%struct.DSOCacheEntry {
		i64 1414487693, ; hash 0x544f5e8d, from name: aot-Xamarin.AndroidX.VectorDrawable.Animated
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.265_name, ; name: libaot-Xamarin.AndroidX.VectorDrawable.Animated.dll.so
		ptr null; void* handle (0x0)
	}, ; 558
	%struct.DSOCacheEntry {
		i64 1422545099, ; hash 0x54ca50cb, from name: System.Runtime.CompilerServices.VisualC
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.112_name, ; name: libaot-System.Runtime.CompilerServices.VisualC.dll.so
		ptr null; void* handle (0x0)
	}, ; 559
	%struct.DSOCacheEntry {
		i64 1422642860, ; hash 0x54cbceac, from name: System.Security.Cryptography.Csp.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.131_name, ; name: libaot-System.Security.Cryptography.Csp.dll.so
		ptr null; void* handle (0x0)
	}, ; 560
	%struct.DSOCacheEntry {
		i64 1425408702, ; hash 0x54f602be, from name: libaot-System.Globalization
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.52_name, ; name: libaot-System.Globalization.dll.so
		ptr null; void* handle (0x0)
	}, ; 561
	%struct.DSOCacheEntry {
		i64 1427200648, ; hash 0x55115a88, from name: aot-Microsoft.Extensions.Logging
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.188_name, ; name: libaot-Microsoft.Extensions.Logging.dll.so
		ptr null; void* handle (0x0)
	}, ; 562
	%struct.DSOCacheEntry {
		i64 1433100572, ; hash 0x556b611c, from name: System.Security.AccessControl.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.127_name, ; name: libaot-System.Security.AccessControl.dll.so
		ptr null; void* handle (0x0)
	}, ; 563
	%struct.DSOCacheEntry {
		i64 1434145427, ; hash 0x557b5293, from name: System.Runtime.Handles
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.114_name, ; name: libaot-System.Runtime.Handles.dll.so
		ptr null; void* handle (0x0)
	}, ; 564
	%struct.DSOCacheEntry {
		i64 1437873632, ; hash 0x55b435e0, from name: libaot-System.Runtime.Extensions
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.113_name, ; name: libaot-System.Runtime.Extensions.dll.so
		ptr null; void* handle (0x0)
	}, ; 565
	%struct.DSOCacheEntry {
		i64 1443565528, ; hash 0x560b0fd8, from name: aot-System.Drawing
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.46_name, ; name: libaot-System.Drawing.dll.so
		ptr null; void* handle (0x0)
	}, ; 566
	%struct.DSOCacheEntry {
		i64 1445980684, ; hash 0x562fea0c, from name: System.Reflection.Primitives.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.105_name, ; name: libaot-System.Reflection.Primitives.dll.so
		ptr null; void* handle (0x0)
	}, ; 567
	%struct.DSOCacheEntry {
		i64 1450763449, ; hash 0x5678e4b9, from name: aot-System.Diagnostics.TraceSource.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.43_name, ; name: libaot-System.Diagnostics.TraceSource.dll.so
		ptr null; void* handle (0x0)
	}, ; 568
	%struct.DSOCacheEntry {
		i64 1452208284, ; hash 0x568ef09c, from name: libaot-Xamarin.AndroidX.Loader
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.246_name, ; name: libaot-Xamarin.AndroidX.Loader.dll.so
		ptr null; void* handle (0x0)
	}, ; 569
	%struct.DSOCacheEntry {
		i64 1457035958, ; hash 0x56d89ab6, from name: libaot-netstandard.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.177_name, ; name: libaot-netstandard.dll.so
		ptr null; void* handle (0x0)
	}, ; 570
	%struct.DSOCacheEntry {
		i64 1457202274, ; hash 0x56db2462, from name: aot-System.Collections.NonGeneric
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.20_name, ; name: libaot-System.Collections.NonGeneric.dll.so
		ptr null; void* handle (0x0)
	}, ; 571
	%struct.DSOCacheEntry {
		i64 1461719063, ; hash 0x57201017, from name: System.Security.Cryptography.OpenSsl
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.133_name, ; name: libaot-System.Security.Cryptography.OpenSsl.dll.so
		ptr null; void* handle (0x0)
	}, ; 572
	%struct.DSOCacheEntry {
		i64 1461965545, ; hash 0x5723d2e9, from name: aot-System.Runtime.InteropServices.JavaScript.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.115_name, ; name: libaot-System.Runtime.InteropServices.JavaScript.dll.so
		ptr null; void* handle (0x0)
	}, ; 573
	%struct.DSOCacheEntry {
		i64 1464096805, ; hash 0x57445825, from name: aot-System.Net.Quic
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.81_name, ; name: libaot-System.Net.Quic.dll.so
		ptr null; void* handle (0x0)
	}, ; 574
	%struct.DSOCacheEntry {
		i64 1469204771, ; hash 0x57924923, from name: Xamarin.AndroidX.AppCompat.AppCompatResources
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.210_name, ; name: libaot-Xamarin.AndroidX.AppCompat.AppCompatResources.dll.so
		ptr null; void* handle (0x0)
	}, ; 575
	%struct.DSOCacheEntry {
		i64 1470490898, ; hash 0x57a5e912, from name: Microsoft.Extensions.Primitives
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.192_name, ; name: libaot-Microsoft.Extensions.Primitives.dll.so
		ptr null; void* handle (0x0)
	}, ; 576
	%struct.DSOCacheEntry {
		i64 1478410651, ; hash 0x581ec19b, from name: libaot-_Microsoft.Android.Resource.Designer
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.10_name, ; name: libaot-_Microsoft.Android.Resource.Designer.dll.so
		ptr null; void* handle (0x0)
	}, ; 577
	%struct.DSOCacheEntry {
		i64 1478865992, ; hash 0x5825b448, from name: libmono-component-marshal-ilgen
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.5_name, ; name: libmono-component-marshal-ilgen.so
		ptr null; void* handle (0x0)
	}, ; 578
	%struct.DSOCacheEntry {
		i64 1479771757, ; hash 0x5833866d, from name: System.Collections.Immutable
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.19_name, ; name: libaot-System.Collections.Immutable.dll.so
		ptr null; void* handle (0x0)
	}, ; 579
	%struct.DSOCacheEntry {
		i64 1480146353, ; hash 0x58393db1, from name: libaot-Xamarin.AndroidX.Fragment
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.232_name, ; name: libaot-Xamarin.AndroidX.Fragment.dll.so
		ptr null; void* handle (0x0)
	}, ; 580
	%struct.DSOCacheEntry {
		i64 1482974588, ; hash 0x5864657c, from name: aot-System.Reflection.Emit.Lightweight.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.101_name, ; name: libaot-System.Reflection.Emit.Lightweight.dll.so
		ptr null; void* handle (0x0)
	}, ; 581
	%struct.DSOCacheEntry {
		i64 1483886350, ; hash 0x58724f0e, from name: System.Runtime.Numerics.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.120_name, ; name: libaot-System.Runtime.Numerics.dll.so
		ptr null; void* handle (0x0)
	}, ; 582
	%struct.DSOCacheEntry {
		i64 1485787675, ; hash 0x588f521b, from name: System.Threading.Tasks.Parallel.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.153_name, ; name: libaot-System.Threading.Tasks.Parallel.dll.so
		ptr null; void* handle (0x0)
	}, ; 583
	%struct.DSOCacheEntry {
		i64 1486689160, ; hash 0x589d1388, from name: aot-Xamarin.Google.ErrorProne.Annotations.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.274_name, ; name: libaot-Xamarin.Google.ErrorProne.Annotations.dll.so
		ptr null; void* handle (0x0)
	}, ; 584
	%struct.DSOCacheEntry {
		i64 1486731907, ; hash 0x589dba83, from name: System.Security.Claims.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.128_name, ; name: libaot-System.Security.Claims.dll.so
		ptr null; void* handle (0x0)
	}, ; 585
	%struct.DSOCacheEntry {
		i64 1487239319, ; hash 0x58a57897, from name: Microsoft.Win32.Primitives
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.14_name, ; name: libaot-Microsoft.Win32.Primitives.dll.so
		ptr null; void* handle (0x0)
	}, ; 586
	%struct.DSOCacheEntry {
		i64 1488589746, ; hash 0x58ba13b2, from name: aot-Xamarin.AndroidX.AppCompat
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.209_name, ; name: libaot-Xamarin.AndroidX.AppCompat.dll.so
		ptr null; void* handle (0x0)
	}, ; 587
	%struct.DSOCacheEntry {
		i64 1490124334, ; hash 0x58d17e2e, from name: libaot-Xamarin.AndroidX.Core.Core.Ktx.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.222_name, ; name: libaot-Xamarin.AndroidX.Core.Core.Ktx.dll.so
		ptr null; void* handle (0x0)
	}, ; 588
	%struct.DSOCacheEntry {
		i64 1494319972, ; hash 0x59118364, from name: libaot-Xamarin.AndroidX.Lifecycle.Runtime.Ktx
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.242_name, ; name: libaot-Xamarin.AndroidX.Lifecycle.Runtime.Ktx.dll.so
		ptr null; void* handle (0x0)
	}, ; 589
	%struct.DSOCacheEntry {
		i64 1495143643, ; hash 0x591e14db, from name: System.Security.Cryptography.Cng.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.130_name, ; name: libaot-System.Security.Cryptography.Cng.dll.so
		ptr null; void* handle (0x0)
	}, ; 590
	%struct.DSOCacheEntry {
		i64 1497180988, ; hash 0x593d2b3c, from name: Xamarin.AndroidX.Core.Core.Ktx.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.222_name, ; name: libaot-Xamarin.AndroidX.Core.Core.Ktx.dll.so
		ptr null; void* handle (0x0)
	}, ; 591
	%struct.DSOCacheEntry {
		i64 1497619753, ; hash 0x5943dd29, from name: libaot-System.Diagnostics.Tools.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.42_name, ; name: libaot-System.Diagnostics.Tools.dll.so
		ptr null; void* handle (0x0)
	}, ; 592
	%struct.DSOCacheEntry {
		i64 1498647657, ; hash 0x59538c69, from name: aot-Microsoft.Maui.Controls.Compatibility
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.193_name, ; name: libaot-Microsoft.Maui.Controls.Compatibility.dll.so
		ptr null; void* handle (0x0)
	}, ; 593
	%struct.DSOCacheEntry {
		i64 1503716941, ; hash 0x59a0e64d, from name: libaot-Xamarin.AndroidX.Security.SecurityCrypto.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.258_name, ; name: libaot-Xamarin.AndroidX.Security.SecurityCrypto.dll.so
		ptr null; void* handle (0x0)
	}, ; 594
	%struct.DSOCacheEntry {
		i64 1503765866, ; hash 0x59a1a56a, from name: aot-System.Runtime
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.126_name, ; name: libaot-System.Runtime.dll.so
		ptr null; void* handle (0x0)
	}, ; 595
	%struct.DSOCacheEntry {
		i64 1505467903, ; hash 0x59bb9dff, from name: aot-System.Xml.Linq
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.165_name, ; name: libaot-System.Xml.Linq.dll.so
		ptr null; void* handle (0x0)
	}, ; 596
	%struct.DSOCacheEntry {
		i64 1512975453, ; hash 0x5a2e2c5d, from name: aot-Microsoft.Extensions.Logging.Abstractions
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.189_name, ; name: libaot-Microsoft.Extensions.Logging.Abstractions.dll.so
		ptr null; void* handle (0x0)
	}, ; 597
	%struct.DSOCacheEntry {
		i64 1513346650, ; hash 0x5a33d65a, from name: aot-System.IO.FileSystem.Primitives
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.59_name, ; name: libaot-System.IO.FileSystem.Primitives.dll.so
		ptr null; void* handle (0x0)
	}, ; 598
	%struct.DSOCacheEntry {
		i64 1516058787, ; hash 0x5a5d38a3, from name: xamarin-debug-app-helper.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.8_name, ; name: libxamarin-debug-app-helper.so
		ptr null; void* handle (0x0)
	}, ; 599
	%struct.DSOCacheEntry {
		i64 1517641306, ; hash 0x5a755e5a, from name: libaot-System.Transactions
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.160_name, ; name: libaot-System.Transactions.dll.so
		ptr null; void* handle (0x0)
	}, ; 600
	%struct.DSOCacheEntry {
		i64 1518218766, ; hash 0x5a7e2e0e, from name: libaot-System.Collections.NonGeneric
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.20_name, ; name: libaot-System.Collections.NonGeneric.dll.so
		ptr null; void* handle (0x0)
	}, ; 601
	%struct.DSOCacheEntry {
		i64 1521110457, ; hash 0x5aaa4db9, from name: aot-Xamarin.AndroidX.Legacy.Support.Core.Utils.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.235_name, ; name: libaot-Xamarin.AndroidX.Legacy.Support.Core.Utils.dll.so
		ptr null; void* handle (0x0)
	}, ; 602
	%struct.DSOCacheEntry {
		i64 1522261449, ; hash 0x5abbddc9, from name: aot-System.Net.WebClient.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.86_name, ; name: libaot-System.Net.WebClient.dll.so
		ptr null; void* handle (0x0)
	}, ; 603
	%struct.DSOCacheEntry {
		i64 1525880992, ; hash 0x5af318a0, from name: aot-System.Net.ServicePoint.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.84_name, ; name: libaot-System.Net.ServicePoint.dll.so
		ptr null; void* handle (0x0)
	}, ; 604
	%struct.DSOCacheEntry {
		i64 1530074023, ; hash 0x5b3313a7, from name: aot-Xamarin.AndroidX.Lifecycle.Process.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.240_name, ; name: libaot-Xamarin.AndroidX.Lifecycle.Process.dll.so
		ptr null; void* handle (0x0)
	}, ; 605
	%struct.DSOCacheEntry {
		i64 1533886541, ; hash 0x5b6d404d, from name: aot-System.Text.Encoding
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.145_name, ; name: libaot-System.Text.Encoding.dll.so
		ptr null; void* handle (0x0)
	}, ; 606
	%struct.DSOCacheEntry {
		i64 1536373174, ; hash 0x5b9331b6, from name: System.Diagnostics.TextWriterTraceListener
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.41_name, ; name: libaot-System.Diagnostics.TextWriterTraceListener.dll.so
		ptr null; void* handle (0x0)
	}, ; 607
	%struct.DSOCacheEntry {
		i64 1536876128, ; hash 0x5b9ade60, from name: libSystem.Native
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.1_name, ; name: libSystem.Native.so
		ptr null; void* handle (0x0)
	}, ; 608
	%struct.DSOCacheEntry {
		i64 1538137317, ; hash 0x5bae1ce5, from name: libaot-System.Security.Cryptography.Cng
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.130_name, ; name: libaot-System.Security.Cryptography.Cng.dll.so
		ptr null; void* handle (0x0)
	}, ; 609
	%struct.DSOCacheEntry {
		i64 1540038978, ; hash 0x5bcb2142, from name: aot-Xamarin.AndroidX.SavedState.SavedState.Ktx
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.257_name, ; name: libaot-Xamarin.AndroidX.SavedState.SavedState.Ktx.dll.so
		ptr null; void* handle (0x0)
	}, ; 610
	%struct.DSOCacheEntry {
		i64 1540666863, ; hash 0x5bd4b5ef, from name: aot-System.Runtime.Serialization.Formatters
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.121_name, ; name: libaot-System.Runtime.Serialization.Formatters.dll.so
		ptr null; void* handle (0x0)
	}, ; 611
	%struct.DSOCacheEntry {
		i64 1544276992, ; hash 0x5c0bcc00, from name: aot-System.Runtime.CompilerServices.VisualC.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.112_name, ; name: libaot-System.Runtime.CompilerServices.VisualC.dll.so
		ptr null; void* handle (0x0)
	}, ; 612
	%struct.DSOCacheEntry {
		i64 1545652777, ; hash 0x5c20ca29, from name: libaot-System.Security.Cryptography.Encoding
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.132_name, ; name: libaot-System.Security.Cryptography.Encoding.dll.so
		ptr null; void* handle (0x0)
	}, ; 613
	%struct.DSOCacheEntry {
		i64 1551413141, ; hash 0x5c78af95, from name: libaot-System.Security.Cryptography.Algorithms
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.129_name, ; name: libaot-System.Security.Cryptography.Algorithms.dll.so
		ptr null; void* handle (0x0)
	}, ; 614
	%struct.DSOCacheEntry {
		i64 1554982747, ; hash 0x5caf275b, from name: libaot-System.IO
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.67_name, ; name: libaot-System.IO.dll.so
		ptr null; void* handle (0x0)
	}, ; 615
	%struct.DSOCacheEntry {
		i64 1555845740, ; hash 0x5cbc526c, from name: libaot-System.Runtime.CompilerServices.VisualC.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.112_name, ; name: libaot-System.Runtime.CompilerServices.VisualC.dll.so
		ptr null; void* handle (0x0)
	}, ; 616
	%struct.DSOCacheEntry {
		i64 1555998608, ; hash 0x5cbea790, from name: libaot-Xamarin.AndroidX.Emoji2.ViewsHelper
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.230_name, ; name: libaot-Xamarin.AndroidX.Emoji2.ViewsHelper.dll.so
		ptr null; void* handle (0x0)
	}, ; 617
	%struct.DSOCacheEntry {
		i64 1558985840, ; hash 0x5cec3c70, from name: libaot-System.Xml.XPath.XDocument
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.169_name, ; name: libaot-System.Xml.XPath.XDocument.dll.so
		ptr null; void* handle (0x0)
	}, ; 618
	%struct.DSOCacheEntry {
		i64 1565862583, ; hash 0x5d552ab7, from name: System.IO.FileSystem.Primitives
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.59_name, ; name: libaot-System.IO.FileSystem.Primitives.dll.so
		ptr null; void* handle (0x0)
	}, ; 619
	%struct.DSOCacheEntry {
		i64 1566308565, ; hash 0x5d5bf8d5, from name: System.Xml.XDocument.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.168_name, ; name: libaot-System.Xml.XDocument.dll.so
		ptr null; void* handle (0x0)
	}, ; 620
	%struct.DSOCacheEntry {
		i64 1573704789, ; hash 0x5dccd455, from name: System.Runtime.Serialization.Json
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.122_name, ; name: libaot-System.Runtime.Serialization.Json.dll.so
		ptr null; void* handle (0x0)
	}, ; 621
	%struct.DSOCacheEntry {
		i64 1575574972, ; hash 0x5de95dbc, from name: aot-System.Diagnostics.FileVersionInfo
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.38_name, ; name: libaot-System.Diagnostics.FileVersionInfo.dll.so
		ptr null; void* handle (0x0)
	}, ; 622
	%struct.DSOCacheEntry {
		i64 1580037396, ; hash 0x5e2d7514, from name: System.Threading.Overlapped
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.150_name, ; name: libaot-System.Threading.Overlapped.dll.so
		ptr null; void* handle (0x0)
	}, ; 623
	%struct.DSOCacheEntry {
		i64 1588853930, ; hash 0x5eb3fcaa, from name: System.Runtime.CompilerServices.VisualC.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.112_name, ; name: libaot-System.Runtime.CompilerServices.VisualC.dll.so
		ptr null; void* handle (0x0)
	}, ; 624
	%struct.DSOCacheEntry {
		i64 1591045299, ; hash 0x5ed56cb3, from name: aot-Xamarin.AndroidX.Tracing.Tracing.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.262_name, ; name: libaot-Xamarin.AndroidX.Tracing.Tracing.dll.so
		ptr null; void* handle (0x0)
	}, ; 625
	%struct.DSOCacheEntry {
		i64 1592665070, ; hash 0x5eee23ee, from name: aot-Xamarin.AndroidX.LocalBroadcastManager
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.247_name, ; name: libaot-Xamarin.AndroidX.LocalBroadcastManager.dll.so
		ptr null; void* handle (0x0)
	}, ; 626
	%struct.DSOCacheEntry {
		i64 1597949149, ; hash 0x5f3ec4dd, from name: Xamarin.Google.ErrorProne.Annotations
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.274_name, ; name: libaot-Xamarin.Google.ErrorProne.Annotations.dll.so
		ptr null; void* handle (0x0)
	}, ; 627
	%struct.DSOCacheEntry {
		i64 1599438076, ; hash 0x5f557cfc, from name: aot-System.Reflection.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.107_name, ; name: libaot-System.Reflection.dll.so
		ptr null; void* handle (0x0)
	}, ; 628
	%struct.DSOCacheEntry {
		i64 1601112923, ; hash 0x5f6f0b5b, from name: System.Xml.Serialization
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.167_name, ; name: libaot-System.Xml.Serialization.dll.so
		ptr null; void* handle (0x0)
	}, ; 629
	%struct.DSOCacheEntry {
		i64 1603265921, ; hash 0x5f8fe581, from name: aot-System.Web
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.163_name, ; name: libaot-System.Web.dll.so
		ptr null; void* handle (0x0)
	}, ; 630
	%struct.DSOCacheEntry {
		i64 1604248443, ; hash 0x5f9ee37b, from name: libaot-System.ComponentModel.DataAnnotations.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.24_name, ; name: libaot-System.ComponentModel.DataAnnotations.dll.so
		ptr null; void* handle (0x0)
	}, ; 631
	%struct.DSOCacheEntry {
		i64 1604827217, ; hash 0x5fa7b851, from name: System.Net.WebClient
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.86_name, ; name: libaot-System.Net.WebClient.dll.so
		ptr null; void* handle (0x0)
	}, ; 632
	%struct.DSOCacheEntry {
		i64 1607421123, ; hash 0x5fcf4cc3, from name: aot-Xamarin.AndroidX.Core.Core.Ktx
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.222_name, ; name: libaot-Xamarin.AndroidX.Core.Core.Ktx.dll.so
		ptr null; void* handle (0x0)
	}, ; 633
	%struct.DSOCacheEntry {
		i64 1616372010, ; hash 0x6057e12a, from name: Xamarin.AndroidX.Arch.Core.Runtime.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.212_name, ; name: libaot-Xamarin.AndroidX.Arch.Core.Runtime.dll.so
		ptr null; void* handle (0x0)
	}, ; 634
	%struct.DSOCacheEntry {
		i64 1619930123, ; hash 0x608e2c0b, from name: Xamarin.Kotlin.StdLib.Common.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.278_name, ; name: libaot-Xamarin.Kotlin.StdLib.Common.dll.so
		ptr null; void* handle (0x0)
	}, ; 635
	%struct.DSOCacheEntry {
		i64 1622358360, ; hash 0x60b33958, from name: System.Dynamic.Runtime
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.47_name, ; name: libaot-System.Dynamic.Runtime.dll.so
		ptr null; void* handle (0x0)
	}, ; 636
	%struct.DSOCacheEntry {
		i64 1623608841, ; hash 0x60c64e09, from name: System.Xml.XPath.XDocument.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.169_name, ; name: libaot-System.Xml.XPath.XDocument.dll.so
		ptr null; void* handle (0x0)
	}, ; 637
	%struct.DSOCacheEntry {
		i64 1624863272, ; hash 0x60d97228, from name: Xamarin.AndroidX.ViewPager2
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.268_name, ; name: libaot-Xamarin.AndroidX.ViewPager2.dll.so
		ptr null; void* handle (0x0)
	}, ; 638
	%struct.DSOCacheEntry {
		i64 1635184631, ; hash 0x6176eff7, from name: Xamarin.AndroidX.Emoji2.ViewsHelper
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.230_name, ; name: libaot-Xamarin.AndroidX.Emoji2.ViewsHelper.dll.so
		ptr null; void* handle (0x0)
	}, ; 639
	%struct.DSOCacheEntry {
		i64 1636331626, ; hash 0x6188706a, from name: System.Reflection.Emit.Lightweight.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.101_name, ; name: libaot-System.Reflection.Emit.Lightweight.dll.so
		ptr null; void* handle (0x0)
	}, ; 640
	%struct.DSOCacheEntry {
		i64 1636350590, ; hash 0x6188ba7e, from name: Xamarin.AndroidX.CursorAdapter
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.223_name, ; name: libaot-Xamarin.AndroidX.CursorAdapter.dll.so
		ptr null; void* handle (0x0)
	}, ; 641
	%struct.DSOCacheEntry {
		i64 1636385547, ; hash 0x6189430b, from name: Mono.Android.Runtime.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.180_name, ; name: libaot-Mono.Android.Runtime.dll.so
		ptr null; void* handle (0x0)
	}, ; 642
	%struct.DSOCacheEntry {
		i64 1637436415, ; hash 0x61994bff, from name: aot-System.Private.Xml.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.98_name, ; name: libaot-System.Private.Xml.dll.so
		ptr null; void* handle (0x0)
	}, ; 643
	%struct.DSOCacheEntry {
		i64 1639986890, ; hash 0x61c036ca, from name: System.Text.RegularExpressions
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.148_name, ; name: libaot-System.Text.RegularExpressions.dll.so
		ptr null; void* handle (0x0)
	}, ; 644
	%struct.DSOCacheEntry {
		i64 1640380604, ; hash 0x61c638bc, from name: aot-System.Security.Principal.Windows.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.137_name, ; name: libaot-System.Security.Principal.Windows.dll.so
		ptr null; void* handle (0x0)
	}, ; 645
	%struct.DSOCacheEntry {
		i64 1643369834, ; hash 0x61f3d56a, from name: aot-System.Linq.Expressions
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.68_name, ; name: libaot-System.Linq.Expressions.dll.so
		ptr null; void* handle (0x0)
	}, ; 646
	%struct.DSOCacheEntry {
		i64 1649235208, ; hash 0x624d5508, from name: System.IO.FileSystem.Primitives.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.59_name, ; name: libaot-System.IO.FileSystem.Primitives.dll.so
		ptr null; void* handle (0x0)
	}, ; 647
	%struct.DSOCacheEntry {
		i64 1651622786, ; hash 0x6271c382, from name: aot-Xamarin.AndroidX.Core
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.221_name, ; name: libaot-Xamarin.AndroidX.Core.dll.so
		ptr null; void* handle (0x0)
	}, ; 648
	%struct.DSOCacheEntry {
		i64 1652917273, ; hash 0x62858419, from name: libaot-System.Reflection.Extensions.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.103_name, ; name: libaot-System.Reflection.Extensions.dll.so
		ptr null; void* handle (0x0)
	}, ; 649
	%struct.DSOCacheEntry {
		i64 1655420349, ; hash 0x62abb5bd, from name: aot-Xamarin.AndroidX.ExifInterface
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.231_name, ; name: libaot-Xamarin.AndroidX.ExifInterface.dll.so
		ptr null; void* handle (0x0)
	}, ; 650
	%struct.DSOCacheEntry {
		i64 1655644717, ; hash 0x62af222d, from name: libaot-System.Runtime.Serialization.Json
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.122_name, ; name: libaot-System.Runtime.Serialization.Json.dll.so
		ptr null; void* handle (0x0)
	}, ; 651
	%struct.DSOCacheEntry {
		i64 1657153582, ; hash 0x62c6282e, from name: System.Runtime
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.126_name, ; name: libaot-System.Runtime.dll.so
		ptr null; void* handle (0x0)
	}, ; 652
	%struct.DSOCacheEntry {
		i64 1661667000, ; hash 0x630b06b8, from name: libaot-System.Diagnostics.FileVersionInfo.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.38_name, ; name: libaot-System.Diagnostics.FileVersionInfo.dll.so
		ptr null; void* handle (0x0)
	}, ; 653
	%struct.DSOCacheEntry {
		i64 1669111854, ; hash 0x637ca02e, from name: aot-Xamarin.AndroidX.DocumentFile
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.226_name, ; name: libaot-Xamarin.AndroidX.DocumentFile.dll.so
		ptr null; void* handle (0x0)
	}, ; 654
	%struct.DSOCacheEntry {
		i64 1670060433, ; hash 0x638b1991, from name: Xamarin.AndroidX.ConstraintLayout
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.218_name, ; name: libaot-Xamarin.AndroidX.ConstraintLayout.dll.so
		ptr null; void* handle (0x0)
	}, ; 655
	%struct.DSOCacheEntry {
		i64 1676014415, ; hash 0x63e5f34f, from name: Xamarin.AndroidX.Lifecycle.ViewModel.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.243_name, ; name: libaot-Xamarin.AndroidX.Lifecycle.ViewModel.dll.so
		ptr null; void* handle (0x0)
	}, ; 656
	%struct.DSOCacheEntry {
		i64 1678114036, ; hash 0x6405fcf4, from name: aot-System.IO.MemoryMappedFiles.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.63_name, ; name: libaot-System.IO.MemoryMappedFiles.dll.so
		ptr null; void* handle (0x0)
	}, ; 657
	%struct.DSOCacheEntry {
		i64 1678508291, ; hash 0x640c0103, from name: System.Net.WebSockets
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.90_name, ; name: libaot-System.Net.WebSockets.dll.so
		ptr null; void* handle (0x0)
	}, ; 658
	%struct.DSOCacheEntry {
		i64 1679711946, ; hash 0x641e5eca, from name: System.Reflection.DispatchProxy.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.99_name, ; name: libaot-System.Reflection.DispatchProxy.dll.so
		ptr null; void* handle (0x0)
	}, ; 659
	%struct.DSOCacheEntry {
		i64 1679769178, ; hash 0x641f3e5a, from name: System.Security.Cryptography
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.136_name, ; name: libaot-System.Security.Cryptography.dll.so
		ptr null; void* handle (0x0)
	}, ; 660
	%struct.DSOCacheEntry {
		i64 1683228115, ; hash 0x645405d3, from name: aot-System.Dynamic.Runtime
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.47_name, ; name: libaot-System.Dynamic.Runtime.dll.so
		ptr null; void* handle (0x0)
	}, ; 661
	%struct.DSOCacheEntry {
		i64 1683420262, ; hash 0x6456f466, from name: aot-System.Reflection.Extensions.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.103_name, ; name: libaot-System.Reflection.Extensions.dll.so
		ptr null; void* handle (0x0)
	}, ; 662
	%struct.DSOCacheEntry {
		i64 1685358301, ; hash 0x647486dd, from name: System.Net.WebHeaderCollection.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.87_name, ; name: libaot-System.Net.WebHeaderCollection.dll.so
		ptr null; void* handle (0x0)
	}, ; 663
	%struct.DSOCacheEntry {
		i64 1688831256, ; hash 0x64a98518, from name: aot-System.Diagnostics.Tools
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.42_name, ; name: libaot-System.Diagnostics.Tools.dll.so
		ptr null; void* handle (0x0)
	}, ; 664
	%struct.DSOCacheEntry {
		i64 1691477237, ; hash 0x64d1e4f5, from name: System.Reflection.Metadata
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.104_name, ; name: libaot-System.Reflection.Metadata.dll.so
		ptr null; void* handle (0x0)
	}, ; 665
	%struct.DSOCacheEntry {
		i64 1696967625, ; hash 0x6525abc9, from name: System.Security.Cryptography.Csp
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.131_name, ; name: libaot-System.Security.Cryptography.Csp.dll.so
		ptr null; void* handle (0x0)
	}, ; 666
	%struct.DSOCacheEntry {
		i64 1698840827, ; hash 0x654240fb, from name: Xamarin.Kotlin.StdLib.Common
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.278_name, ; name: libaot-Xamarin.Kotlin.StdLib.Common.dll.so
		ptr null; void* handle (0x0)
	}, ; 667
	%struct.DSOCacheEntry {
		i64 1699189939, ; hash 0x654794b3, from name: aot-System.Xml.XPath
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.170_name, ; name: libaot-System.Xml.XPath.dll.so
		ptr null; void* handle (0x0)
	}, ; 668
	%struct.DSOCacheEntry {
		i64 1701847939, ; hash 0x65702383, from name: libaot-Xamarin.AndroidX.DrawerLayout
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.227_name, ; name: libaot-Xamarin.AndroidX.DrawerLayout.dll.so
		ptr null; void* handle (0x0)
	}, ; 669
	%struct.DSOCacheEntry {
		i64 1704578766, ; hash 0x6599cece, from name: aot-System.ValueTuple.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.161_name, ; name: libaot-System.ValueTuple.dll.so
		ptr null; void* handle (0x0)
	}, ; 670
	%struct.DSOCacheEntry {
		i64 1708010436, ; hash 0x65ce2bc4, from name: libaot-Xamarin.AndroidX.CustomView.PoolingContainer
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.225_name, ; name: libaot-Xamarin.AndroidX.CustomView.PoolingContainer.dll.so
		ptr null; void* handle (0x0)
	}, ; 671
	%struct.DSOCacheEntry {
		i64 1711799236, ; hash 0x6607fbc4, from name: aot-System.Net.Quic.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.81_name, ; name: libaot-System.Net.Quic.dll.so
		ptr null; void* handle (0x0)
	}, ; 672
	%struct.DSOCacheEntry {
		i64 1712141574, ; hash 0x660d3506, from name: aot-System.Diagnostics.StackTrace.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.40_name, ; name: libaot-System.Diagnostics.StackTrace.dll.so
		ptr null; void* handle (0x0)
	}, ; 673
	%struct.DSOCacheEntry {
		i64 1720223769, ; hash 0x66888819, from name: Xamarin.AndroidX.Lifecycle.LiveData.Core.Ktx
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.239_name, ; name: libaot-Xamarin.AndroidX.Lifecycle.LiveData.Core.Ktx.dll.so
		ptr null; void* handle (0x0)
	}, ; 674
	%struct.DSOCacheEntry {
		i64 1722104381, ; hash 0x66a53a3d, from name: System.AppContext.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.16_name, ; name: libaot-System.AppContext.dll.so
		ptr null; void* handle (0x0)
	}, ; 675
	%struct.DSOCacheEntry {
		i64 1723608128, ; hash 0x66bc2c40, from name: aot-Xamarin.AndroidX.Activity
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.204_name, ; name: libaot-Xamarin.AndroidX.Activity.dll.so
		ptr null; void* handle (0x0)
	}, ; 676
	%struct.DSOCacheEntry {
		i64 1724842858, ; hash 0x66cf036a, from name: libaot-Xamarin.Google.Guava.ListenableFuture.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.275_name, ; name: libaot-Xamarin.Google.Guava.ListenableFuture.dll.so
		ptr null; void* handle (0x0)
	}, ; 677
	%struct.DSOCacheEntry {
		i64 1725907945, ; hash 0x66df43e9, from name: libaot-System.Net.HttpListener
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.75_name, ; name: libaot-System.Net.HttpListener.dll.so
		ptr null; void* handle (0x0)
	}, ; 678
	%struct.DSOCacheEntry {
		i64 1726773373, ; hash 0x66ec787d, from name: aot-System.Net.Ping
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.79_name, ; name: libaot-System.Net.Ping.dll.so
		ptr null; void* handle (0x0)
	}, ; 679
	%struct.DSOCacheEntry {
		i64 1728224103, ; hash 0x67029b67, from name: aot-Xamarin.AndroidX.Concurrent.Futures
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.217_name, ; name: libaot-Xamarin.AndroidX.Concurrent.Futures.dll.so
		ptr null; void* handle (0x0)
	}, ; 680
	%struct.DSOCacheEntry {
		i64 1730035644, ; hash 0x671e3fbc, from name: System.Net.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.91_name, ; name: libaot-System.Net.dll.so
		ptr null; void* handle (0x0)
	}, ; 681
	%struct.DSOCacheEntry {
		i64 1736175045, ; hash 0x677bedc5, from name: libaot-System.Xml.XmlSerializer
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.172_name, ; name: libaot-System.Xml.XmlSerializer.dll.so
		ptr null; void* handle (0x0)
	}, ; 682
	%struct.DSOCacheEntry {
		i64 1739160976, ; hash 0x67a97d90, from name: libaot-System.Diagnostics.StackTrace
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.40_name, ; name: libaot-System.Diagnostics.StackTrace.dll.so
		ptr null; void* handle (0x0)
	}, ; 683
	%struct.DSOCacheEntry {
		i64 1740020094, ; hash 0x67b6997e, from name: System.Xml.Linq.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.165_name, ; name: libaot-System.Xml.Linq.dll.so
		ptr null; void* handle (0x0)
	}, ; 684
	%struct.DSOCacheEntry {
		i64 1741899193, ; hash 0x67d345b9, from name: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.245_name, ; name: libaot-Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll.so
		ptr null; void* handle (0x0)
	}, ; 685
	%struct.DSOCacheEntry {
		i64 1742696909, ; hash 0x67df71cd, from name: libaot-Xamarin.Android.Glide
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.200_name, ; name: libaot-Xamarin.Android.Glide.dll.so
		ptr null; void* handle (0x0)
	}, ; 686
	%struct.DSOCacheEntry {
		i64 1743439659, ; hash 0x67eac72b, from name: aot-Xamarin.AndroidX.ViewPager.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.267_name, ; name: libaot-Xamarin.AndroidX.ViewPager.dll.so
		ptr null; void* handle (0x0)
	}, ; 687
	%struct.DSOCacheEntry {
		i64 1744691755, ; hash 0x67fde22b, from name: libaot-System.Text.Encoding.CodePages.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.143_name, ; name: libaot-System.Text.Encoding.CodePages.dll.so
		ptr null; void* handle (0x0)
	}, ; 688
	%struct.DSOCacheEntry {
		i64 1746316138, ; hash 0x6816ab6a, from name: Mono.Android.Export
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.179_name, ; name: libaot-Mono.Android.Export.dll.so
		ptr null; void* handle (0x0)
	}, ; 689
	%struct.DSOCacheEntry {
		i64 1746885852, ; hash 0x681f5cdc, from name: libaot-System.Collections.Concurrent.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.18_name, ; name: libaot-System.Collections.Concurrent.dll.so
		ptr null; void* handle (0x0)
	}, ; 690
	%struct.DSOCacheEntry {
		i64 1750840448, ; hash 0x685bb480, from name: aot-Xamarin.AndroidX.Lifecycle.Runtime.Ktx.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.242_name, ; name: libaot-Xamarin.AndroidX.Lifecycle.Runtime.Ktx.dll.so
		ptr null; void* handle (0x0)
	}, ; 691
	%struct.DSOCacheEntry {
		i64 1756251935, ; hash 0x68ae471f, from name: aot-System.Drawing.Primitives.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.45_name, ; name: libaot-System.Drawing.Primitives.dll.so
		ptr null; void* handle (0x0)
	}, ; 692
	%struct.DSOCacheEntry {
		i64 1757787625, ; hash 0x68c5b5e9, from name: Xamarin.Google.Android.Material.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.271_name, ; name: libaot-Xamarin.Google.Android.Material.dll.so
		ptr null; void* handle (0x0)
	}, ; 693
	%struct.DSOCacheEntry {
		i64 1761572692, ; hash 0x68ff7754, from name: System.Numerics.Vectors.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.92_name, ; name: libaot-System.Numerics.Vectors.dll.so
		ptr null; void* handle (0x0)
	}, ; 694
	%struct.DSOCacheEntry {
		i64 1762368869, ; hash 0x690b9d65, from name: libaot-Xamarin.AndroidX.Navigation.Runtime
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.250_name, ; name: libaot-Xamarin.AndroidX.Navigation.Runtime.dll.so
		ptr null; void* handle (0x0)
	}, ; 695
	%struct.DSOCacheEntry {
		i64 1762399870, ; hash 0x690c167e, from name: libaot-Xamarin.AndroidX.ResourceInspection.Annotation
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.255_name, ; name: libaot-Xamarin.AndroidX.ResourceInspection.Annotation.dll.so
		ptr null; void* handle (0x0)
	}, ; 696
	%struct.DSOCacheEntry {
		i64 1765942094, ; hash 0x6942234e, from name: System.Reflection.Extensions
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.103_name, ; name: libaot-System.Reflection.Extensions.dll.so
		ptr null; void* handle (0x0)
	}, ; 697
	%struct.DSOCacheEntry {
		i64 1766324549, ; hash 0x6947f945, from name: Xamarin.AndroidX.SwipeRefreshLayout
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.261_name, ; name: libaot-Xamarin.AndroidX.SwipeRefreshLayout.dll.so
		ptr null; void* handle (0x0)
	}, ; 698
	%struct.DSOCacheEntry {
		i64 1770409065, ; hash 0x69864c69, from name: libaot-Microsoft.Maui.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.196_name, ; name: libaot-Microsoft.Maui.dll.so
		ptr null; void* handle (0x0)
	}, ; 699
	%struct.DSOCacheEntry {
		i64 1770694025, ; hash 0x698aa589, from name: libaot-System.Text.Encoding.Extensions
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.144_name, ; name: libaot-System.Text.Encoding.Extensions.dll.so
		ptr null; void* handle (0x0)
	}, ; 700
	%struct.DSOCacheEntry {
		i64 1780824582, ; hash 0x6a253a06, from name: libaot-System.Diagnostics.StackTrace.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.40_name, ; name: libaot-System.Diagnostics.StackTrace.dll.so
		ptr null; void* handle (0x0)
	}, ; 701
	%struct.DSOCacheEntry {
		i64 1785210584, ; hash 0x6a6826d8, from name: libaot-Microsoft.Extensions.Configuration.Abstractions.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.185_name, ; name: libaot-Microsoft.Extensions.Configuration.Abstractions.dll.so
		ptr null; void* handle (0x0)
	}, ; 702
	%struct.DSOCacheEntry {
		i64 1786790806, ; hash 0x6a804396, from name: libaot-System.Reflection.Primitives.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.105_name, ; name: libaot-System.Reflection.Primitives.dll.so
		ptr null; void* handle (0x0)
	}, ; 703
	%struct.DSOCacheEntry {
		i64 1788241197, ; hash 0x6a96652d, from name: Xamarin.AndroidX.Fragment
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.232_name, ; name: libaot-Xamarin.AndroidX.Fragment.dll.so
		ptr null; void* handle (0x0)
	}, ; 704
	%struct.DSOCacheEntry {
		i64 1791201850, ; hash 0x6ac3923a, from name: libaot-System.Diagnostics.Debug.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.36_name, ; name: libaot-System.Diagnostics.Debug.dll.so
		ptr null; void* handle (0x0)
	}, ; 705
	%struct.DSOCacheEntry {
		i64 1794722423, ; hash 0x6af94a77, from name: libaot-System.IO.Compression.ZipFile
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.55_name, ; name: libaot-System.IO.Compression.ZipFile.dll.so
		ptr null; void* handle (0x0)
	}, ; 706
	%struct.DSOCacheEntry {
		i64 1795602090, ; hash 0x6b06b6aa, from name: aot-System.Resources.Writer.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.110_name, ; name: libaot-System.Resources.Writer.dll.so
		ptr null; void* handle (0x0)
	}, ; 707
	%struct.DSOCacheEntry {
		i64 1798454593, ; hash 0x6b323d41, from name: libaot-System.IO.Pipes
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.65_name, ; name: libaot-System.IO.Pipes.dll.so
		ptr null; void* handle (0x0)
	}, ; 708
	%struct.DSOCacheEntry {
		i64 1800081898, ; hash 0x6b4b11ea, from name: aot-System.Private.DataContractSerialization.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.95_name, ; name: libaot-System.Private.DataContractSerialization.dll.so
		ptr null; void* handle (0x0)
	}, ; 709
	%struct.DSOCacheEntry {
		i64 1803644299, ; hash 0x6b816d8b, from name: System.Diagnostics.Tracing.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.44_name, ; name: libaot-System.Diagnostics.Tracing.dll.so
		ptr null; void* handle (0x0)
	}, ; 710
	%struct.DSOCacheEntry {
		i64 1804132934, ; hash 0x6b88e246, from name: aot-System.Threading.Tasks.Dataflow
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.151_name, ; name: libaot-System.Threading.Tasks.Dataflow.dll.so
		ptr null; void* handle (0x0)
	}, ; 711
	%struct.DSOCacheEntry {
		i64 1805777841, ; hash 0x6ba1fbb1, from name: libaot-System.Transactions.Local.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.159_name, ; name: libaot-System.Transactions.Local.dll.so
		ptr null; void* handle (0x0)
	}, ; 712
	%struct.DSOCacheEntry {
		i64 1805874645, ; hash 0x6ba375d5, from name: System.Security.Principal.Windows.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.137_name, ; name: libaot-System.Security.Principal.Windows.dll.so
		ptr null; void* handle (0x0)
	}, ; 713
	%struct.DSOCacheEntry {
		i64 1807794426, ; hash 0x6bc0c0fa, from name: aot-Xamarin.AndroidX.Navigation.Common
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.248_name, ; name: libaot-Xamarin.AndroidX.Navigation.Common.dll.so
		ptr null; void* handle (0x0)
	}, ; 714
	%struct.DSOCacheEntry {
		i64 1808609942, ; hash 0x6bcd3296, from name: Xamarin.AndroidX.Loader
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.246_name, ; name: libaot-Xamarin.AndroidX.Loader.dll.so
		ptr null; void* handle (0x0)
	}, ; 715
	%struct.DSOCacheEntry {
		i64 1813201214, ; hash 0x6c13413e, from name: Xamarin.Google.Android.Material
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.271_name, ; name: libaot-Xamarin.Google.Android.Material.dll.so
		ptr null; void* handle (0x0)
	}, ; 716
	%struct.DSOCacheEntry {
		i64 1815216235, ; hash 0x6c32006b, from name: libaot-System.ValueTuple
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.161_name, ; name: libaot-System.ValueTuple.dll.so
		ptr null; void* handle (0x0)
	}, ; 717
	%struct.DSOCacheEntry {
		i64 1816605001, ; hash 0x6c473149, from name: aot-Microsoft.Extensions.Configuration.Abstractions
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.185_name, ; name: libaot-Microsoft.Extensions.Configuration.Abstractions.dll.so
		ptr null; void* handle (0x0)
	}, ; 718
	%struct.DSOCacheEntry {
		i64 1818052870, ; hash 0x6c5d4906, from name: aot-System.Threading.Tasks.Extensions.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.152_name, ; name: libaot-System.Threading.Tasks.Extensions.dll.so
		ptr null; void* handle (0x0)
	}, ; 719
	%struct.DSOCacheEntry {
		i64 1818787751, ; hash 0x6c687fa7, from name: Microsoft.VisualBasic.Core
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.12_name, ; name: libaot-Microsoft.VisualBasic.Core.dll.so
		ptr null; void* handle (0x0)
	}, ; 720
	%struct.DSOCacheEntry {
		i64 1822997506, ; hash 0x6ca8bc02, from name: libaot-System.Text.Encodings.Web.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.146_name, ; name: libaot-System.Text.Encodings.Web.dll.so
		ptr null; void* handle (0x0)
	}, ; 721
	%struct.DSOCacheEntry {
		i64 1824175904, ; hash 0x6cbab720, from name: System.Text.Encoding.Extensions
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.144_name, ; name: libaot-System.Text.Encoding.Extensions.dll.so
		ptr null; void* handle (0x0)
	}, ; 722
	%struct.DSOCacheEntry {
		i64 1824722060, ; hash 0x6cc30c8c, from name: System.Runtime.Serialization.Formatters
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.121_name, ; name: libaot-System.Runtime.Serialization.Formatters.dll.so
		ptr null; void* handle (0x0)
	}, ; 723
	%struct.DSOCacheEntry {
		i64 1826520226, ; hash 0x6cde7ca2, from name: System.Data.DataSetExtensions.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.33_name, ; name: libaot-System.Data.DataSetExtensions.dll.so
		ptr null; void* handle (0x0)
	}, ; 724
	%struct.DSOCacheEntry {
		i64 1828924412, ; hash 0x6d032bfc, from name: aot-System.IO.Pipes.AccessControl
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.64_name, ; name: libaot-System.IO.Pipes.AccessControl.dll.so
		ptr null; void* handle (0x0)
	}, ; 725
	%struct.DSOCacheEntry {
		i64 1833215784, ; hash 0x6d44a728, from name: aot-System.Security.Cryptography.Encoding
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.132_name, ; name: libaot-System.Security.Cryptography.Encoding.dll.so
		ptr null; void* handle (0x0)
	}, ; 726
	%struct.DSOCacheEntry {
		i64 1836222811, ; hash 0x6d72895b, from name: aot-Microsoft.Extensions.Configuration.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.184_name, ; name: libaot-Microsoft.Extensions.Configuration.dll.so
		ptr null; void* handle (0x0)
	}, ; 727
	%struct.DSOCacheEntry {
		i64 1838737787, ; hash 0x6d98e97b, from name: aot-Xamarin.AndroidX.SavedState.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.256_name, ; name: libaot-Xamarin.AndroidX.SavedState.dll.so
		ptr null; void* handle (0x0)
	}, ; 728
	%struct.DSOCacheEntry {
		i64 1840445796, ; hash 0x6db2f964, from name: libaot-System.Xml.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.173_name, ; name: libaot-System.Xml.dll.so
		ptr null; void* handle (0x0)
	}, ; 729
	%struct.DSOCacheEntry {
		i64 1841876433, ; hash 0x6dc8cdd1, from name: System.Configuration.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.29_name, ; name: libaot-System.Configuration.dll.so
		ptr null; void* handle (0x0)
	}, ; 730
	%struct.DSOCacheEntry {
		i64 1846689429, ; hash 0x6e123e95, from name: aot-System.IO.FileSystem.DriveInfo.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.58_name, ; name: libaot-System.IO.FileSystem.DriveInfo.dll.so
		ptr null; void* handle (0x0)
	}, ; 731
	%struct.DSOCacheEntry {
		i64 1847515442, ; hash 0x6e1ed932, from name: Xamarin.Android.Glide.Annotations
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.201_name, ; name: libaot-Xamarin.Android.Glide.Annotations.dll.so
		ptr null; void* handle (0x0)
	}, ; 732
	%struct.DSOCacheEntry {
		i64 1852957342, ; hash 0x6e71e29e, from name: System.Net.WebSockets.Client.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.89_name, ; name: libaot-System.Net.WebSockets.Client.dll.so
		ptr null; void* handle (0x0)
	}, ; 733
	%struct.DSOCacheEntry {
		i64 1854569882, ; hash 0x6e8a7d9a, from name: libaot-Xamarin.Kotlin.StdLib.Jdk8
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.280_name, ; name: libaot-Xamarin.Kotlin.StdLib.Jdk8.dll.so
		ptr null; void* handle (0x0)
	}, ; 734
	%struct.DSOCacheEntry {
		i64 1856510251, ; hash 0x6ea8192b, from name: libaot-System.Runtime.Serialization.Formatters.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.121_name, ; name: libaot-System.Runtime.Serialization.Formatters.dll.so
		ptr null; void* handle (0x0)
	}, ; 735
	%struct.DSOCacheEntry {
		i64 1857198639, ; hash 0x6eb29a2f, from name: System.IO.Compression.ZipFile.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.55_name, ; name: libaot-System.IO.Compression.ZipFile.dll.so
		ptr null; void* handle (0x0)
	}, ; 736
	%struct.DSOCacheEntry {
		i64 1858542181, ; hash 0x6ec71a65, from name: System.Linq.Expressions
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.68_name, ; name: libaot-System.Linq.Expressions.dll.so
		ptr null; void* handle (0x0)
	}, ; 737
	%struct.DSOCacheEntry {
		i64 1861485760, ; hash 0x6ef404c0, from name: aot-System.Security.Principal
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.138_name, ; name: libaot-System.Security.Principal.dll.so
		ptr null; void* handle (0x0)
	}, ; 738
	%struct.DSOCacheEntry {
		i64 1864840936, ; hash 0x6f2736e8, from name: Xamarin.AndroidX.Lifecycle.Process.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.240_name, ; name: libaot-Xamarin.AndroidX.Lifecycle.Process.dll.so
		ptr null; void* handle (0x0)
	}, ; 739
	%struct.DSOCacheEntry {
		i64 1868438852, ; hash 0x6f5e1d44, from name: aot-Xamarin.AndroidX.CustomView.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.224_name, ; name: libaot-Xamarin.AndroidX.CustomView.dll.so
		ptr null; void* handle (0x0)
	}, ; 740
	%struct.DSOCacheEntry {
		i64 1869146883, ; hash 0x6f68eb03, from name: Xamarin.Kotlin.StdLib.Jdk8.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.280_name, ; name: libaot-Xamarin.Kotlin.StdLib.Jdk8.dll.so
		ptr null; void* handle (0x0)
	}, ; 741
	%struct.DSOCacheEntry {
		i64 1870277092, ; hash 0x6f7a29e4, from name: System.Reflection.Primitives
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.105_name, ; name: libaot-System.Reflection.Primitives.dll.so
		ptr null; void* handle (0x0)
	}, ; 742
	%struct.DSOCacheEntry {
		i64 1871070086, ; hash 0x6f864386, from name: aot-Xamarin.AndroidX.Arch.Core.Common.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.211_name, ; name: libaot-Xamarin.AndroidX.Arch.Core.Common.dll.so
		ptr null; void* handle (0x0)
	}, ; 743
	%struct.DSOCacheEntry {
		i64 1872051499, ; hash 0x6f953d2b, from name: libaot-System.Diagnostics.TextWriterTraceListener
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.41_name, ; name: libaot-System.Diagnostics.TextWriterTraceListener.dll.so
		ptr null; void* handle (0x0)
	}, ; 744
	%struct.DSOCacheEntry {
		i64 1883618565, ; hash 0x7045bd05, from name: aot-System.Runtime.Serialization.Primitives.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.123_name, ; name: libaot-System.Runtime.Serialization.Primitives.dll.so
		ptr null; void* handle (0x0)
	}, ; 745
	%struct.DSOCacheEntry {
		i64 1884246066, ; hash 0x704f5032, from name: libaot-Xamarin.AndroidX.Core.Core.Ktx
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.222_name, ; name: libaot-Xamarin.AndroidX.Core.Core.Ktx.dll.so
		ptr null; void* handle (0x0)
	}, ; 746
	%struct.DSOCacheEntry {
		i64 1888955245, ; hash 0x70972b6d, from name: System.Diagnostics.Contracts
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.35_name, ; name: libaot-System.Diagnostics.Contracts.dll.so
		ptr null; void* handle (0x0)
	}, ; 747
	%struct.DSOCacheEntry {
		i64 1889411128, ; hash 0x709e2038, from name: aot-Xamarin.AndroidX.Lifecycle.ViewModel.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.243_name, ; name: libaot-Xamarin.AndroidX.Lifecycle.ViewModel.dll.so
		ptr null; void* handle (0x0)
	}, ; 748
	%struct.DSOCacheEntry {
		i64 1892143453, ; hash 0x70c7d15d, from name: Xamarin.AndroidX.Lifecycle.ViewModel.Ktx.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.244_name, ; name: libaot-Xamarin.AndroidX.Lifecycle.ViewModel.Ktx.dll.so
		ptr null; void* handle (0x0)
	}, ; 749
	%struct.DSOCacheEntry {
		i64 1895423854, ; hash 0x70f9df6e, from name: aot-System.Xml
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.173_name, ; name: libaot-System.Xml.dll.so
		ptr null; void* handle (0x0)
	}, ; 750
	%struct.DSOCacheEntry {
		i64 1896169914, ; hash 0x710541ba, from name: aot-System.IO.Compression.Brotli.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.53_name, ; name: libaot-System.IO.Compression.Brotli.dll.so
		ptr null; void* handle (0x0)
	}, ; 751
	%struct.DSOCacheEntry {
		i64 1898237753, ; hash 0x7124cf39, from name: System.Reflection.DispatchProxy
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.99_name, ; name: libaot-System.Reflection.DispatchProxy.dll.so
		ptr null; void* handle (0x0)
	}, ; 752
	%struct.DSOCacheEntry {
		i64 1900739026, ; hash 0x714af9d2, from name: libaot-System.Net.Http
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.74_name, ; name: libaot-System.Net.Http.dll.so
		ptr null; void* handle (0x0)
	}, ; 753
	%struct.DSOCacheEntry {
		i64 1902824622, ; hash 0x716accae, from name: libaot-System.Xml.ReaderWriter.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.166_name, ; name: libaot-System.Xml.ReaderWriter.dll.so
		ptr null; void* handle (0x0)
	}, ; 754
	%struct.DSOCacheEntry {
		i64 1903221641, ; hash 0x7170db89, from name: aot-System.Reflection.DispatchProxy
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.99_name, ; name: libaot-System.Reflection.DispatchProxy.dll.so
		ptr null; void* handle (0x0)
	}, ; 755
	%struct.DSOCacheEntry {
		i64 1907175328, ; hash 0x71ad2fa0, from name: Xamarin.AndroidX.Window.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.269_name, ; name: libaot-Xamarin.AndroidX.Window.dll.so
		ptr null; void* handle (0x0)
	}, ; 756
	%struct.DSOCacheEntry {
		i64 1909822950, ; hash 0x71d595e6, from name: System.Formats.Tar.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.49_name, ; name: libaot-System.Formats.Tar.dll.so
		ptr null; void* handle (0x0)
	}, ; 757
	%struct.DSOCacheEntry {
		i64 1911147258, ; hash 0x71e9cafa, from name: aot-System.Security.Cryptography.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.136_name, ; name: libaot-System.Security.Cryptography.dll.so
		ptr null; void* handle (0x0)
	}, ; 758
	%struct.DSOCacheEntry {
		i64 1913538475, ; hash 0x720e47ab, from name: GoogleGson.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.183_name, ; name: libaot-GoogleGson.dll.so
		ptr null; void* handle (0x0)
	}, ; 759
	%struct.DSOCacheEntry {
		i64 1915179509, ; hash 0x722751f5, from name: System.Data.Common.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.32_name, ; name: libaot-System.Data.Common.dll.so
		ptr null; void* handle (0x0)
	}, ; 760
	%struct.DSOCacheEntry {
		i64 1917270479, ; hash 0x724739cf, from name: libaot-System.ComponentModel.TypeConverter
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.27_name, ; name: libaot-System.ComponentModel.TypeConverter.dll.so
		ptr null; void* handle (0x0)
	}, ; 761
	%struct.DSOCacheEntry {
		i64 1921412874, ; hash 0x72866f0a, from name: libaot-System.Security.Cryptography.Encoding.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.132_name, ; name: libaot-System.Security.Cryptography.Encoding.dll.so
		ptr null; void* handle (0x0)
	}, ; 762
	%struct.DSOCacheEntry {
		i64 1922218693, ; hash 0x7292bac5, from name: libaot-System.Security.Principal.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.138_name, ; name: libaot-System.Security.Principal.dll.so
		ptr null; void* handle (0x0)
	}, ; 763
	%struct.DSOCacheEntry {
		i64 1927204088, ; hash 0x72deccf8, from name: Xamarin.AndroidX.Navigation.Fragment.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.249_name, ; name: libaot-Xamarin.AndroidX.Navigation.Fragment.dll.so
		ptr null; void* handle (0x0)
	}, ; 764
	%struct.DSOCacheEntry {
		i64 1939226026, ; hash 0x73963daa, from name: aot-System.Console
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.30_name, ; name: libaot-System.Console.dll.so
		ptr null; void* handle (0x0)
	}, ; 765
	%struct.DSOCacheEntry {
		i64 1939592360, ; hash 0x739bd4a8, from name: System.Private.Xml.Linq
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.97_name, ; name: libaot-System.Private.Xml.Linq.dll.so
		ptr null; void* handle (0x0)
	}, ; 766
	%struct.DSOCacheEntry {
		i64 1943316965, ; hash 0x73d4a9e5, from name: aot-System.Reflection.Metadata.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.104_name, ; name: libaot-System.Reflection.Metadata.dll.so
		ptr null; void* handle (0x0)
	}, ; 767
	%struct.DSOCacheEntry {
		i64 1944270243, ; hash 0x73e335a3, from name: System.Threading.Tasks.Extensions.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.152_name, ; name: libaot-System.Threading.Tasks.Extensions.dll.so
		ptr null; void* handle (0x0)
	}, ; 768
	%struct.DSOCacheEntry {
		i64 1947440624, ; hash 0x741395f0, from name: Xamarin.AndroidX.CursorAdapter.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.223_name, ; name: libaot-Xamarin.AndroidX.CursorAdapter.dll.so
		ptr null; void* handle (0x0)
	}, ; 769
	%struct.DSOCacheEntry {
		i64 1951502748, ; hash 0x7451919c, from name: aot-Xamarin.AndroidX.Lifecycle.Runtime.Ktx
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.242_name, ; name: libaot-Xamarin.AndroidX.Lifecycle.Runtime.Ktx.dll.so
		ptr null; void* handle (0x0)
	}, ; 770
	%struct.DSOCacheEntry {
		i64 1953900240, ; hash 0x747626d0, from name: aot-System.Private.Uri.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.96_name, ; name: libaot-System.Private.Uri.dll.so
		ptr null; void* handle (0x0)
	}, ; 771
	%struct.DSOCacheEntry {
		i64 1954803200, ; hash 0x7483ee00, from name: libaot-System.Console
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.30_name, ; name: libaot-System.Console.dll.so
		ptr null; void* handle (0x0)
	}, ; 772
	%struct.DSOCacheEntry {
		i64 1956748828, ; hash 0x74a19e1c, from name: aot-System.Net.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.91_name, ; name: libaot-System.Net.dll.so
		ptr null; void* handle (0x0)
	}, ; 773
	%struct.DSOCacheEntry {
		i64 1956758971, ; hash 0x74a1c5bb, from name: System.Resources.Writer
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.110_name, ; name: libaot-System.Resources.Writer.dll.so
		ptr null; void* handle (0x0)
	}, ; 774
	%struct.DSOCacheEntry {
		i64 1959705688, ; hash 0x74cebc58, from name: System.IO.Compression.Native
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.0_name, ; name: libSystem.IO.Compression.Native.so
		ptr null; void* handle (0x0)
	}, ; 775
	%struct.DSOCacheEntry {
		i64 1961541945, ; hash 0x74eac139, from name: aot-System.ComponentModel
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.28_name, ; name: libaot-System.ComponentModel.dll.so
		ptr null; void* handle (0x0)
	}, ; 776
	%struct.DSOCacheEntry {
		i64 1965984210, ; hash 0x752e89d2, from name: libaot-System.Text.Encoding
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.145_name, ; name: libaot-System.Text.Encoding.dll.so
		ptr null; void* handle (0x0)
	}, ; 777
	%struct.DSOCacheEntry {
		i64 1967114972, ; hash 0x753fcadc, from name: libaot-Xamarin.AndroidX.ViewPager2
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.268_name, ; name: libaot-Xamarin.AndroidX.ViewPager2.dll.so
		ptr null; void* handle (0x0)
	}, ; 778
	%struct.DSOCacheEntry {
		i64 1968521251, ; hash 0x75554023, from name: libaot-System.Security.Principal
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.138_name, ; name: libaot-System.Security.Principal.dll.so
		ptr null; void* handle (0x0)
	}, ; 779
	%struct.DSOCacheEntry {
		i64 1970157169, ; hash 0x756e3671, from name: System.ComponentModel.Primitives.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.26_name, ; name: libaot-System.ComponentModel.Primitives.dll.so
		ptr null; void* handle (0x0)
	}, ; 780
	%struct.DSOCacheEntry {
		i64 1970332345, ; hash 0x7570e2b9, from name: aot-System.Security.Cryptography.Cng
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.130_name, ; name: libaot-System.Security.Cryptography.Cng.dll.so
		ptr null; void* handle (0x0)
	}, ; 781
	%struct.DSOCacheEntry {
		i64 1970695807, ; hash 0x75766e7f, from name: libaot-System.Text.Encoding.CodePages
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.143_name, ; name: libaot-System.Text.Encoding.CodePages.dll.so
		ptr null; void* handle (0x0)
	}, ; 782
	%struct.DSOCacheEntry {
		i64 1971847110, ; hash 0x7587ffc6, from name: aot-System.Linq.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.71_name, ; name: libaot-System.Linq.dll.so
		ptr null; void* handle (0x0)
	}, ; 783
	%struct.DSOCacheEntry {
		i64 1975492760, ; hash 0x75bfa098, from name: libaot-Java.Interop
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.178_name, ; name: libaot-Java.Interop.dll.so
		ptr null; void* handle (0x0)
	}, ; 784
	%struct.DSOCacheEntry {
		i64 1985761444, ; hash 0x765c50a4, from name: Xamarin.Android.Glide.GifDecoder
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.203_name, ; name: libaot-Xamarin.Android.Glide.GifDecoder.dll.so
		ptr null; void* handle (0x0)
	}, ; 785
	%struct.DSOCacheEntry {
		i64 1987401087, ; hash 0x7675557f, from name: System.Web.HttpUtility.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.162_name, ; name: libaot-System.Web.HttpUtility.dll.so
		ptr null; void* handle (0x0)
	}, ; 786
	%struct.DSOCacheEntry {
		i64 1994496097, ; hash 0x76e19861, from name: libaot-System.Security.SecureString.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.139_name, ; name: libaot-System.Security.SecureString.dll.so
		ptr null; void* handle (0x0)
	}, ; 787
	%struct.DSOCacheEntry {
		i64 1995848636, ; hash 0x76f63bbc, from name: aot-Xamarin.Kotlin.StdLib.Jdk7
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.279_name, ; name: libaot-Xamarin.Kotlin.StdLib.Jdk7.dll.so
		ptr null; void* handle (0x0)
	}, ; 788
	%struct.DSOCacheEntry {
		i64 1998620087, ; hash 0x772085b7, from name: libaot-System.Runtime.Serialization.Formatters
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.121_name, ; name: libaot-System.Runtime.Serialization.Formatters.dll.so
		ptr null; void* handle (0x0)
	}, ; 789
	%struct.DSOCacheEntry {
		i64 2004529098, ; hash 0x777aafca, from name: Xamarin.AndroidX.Print.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.252_name, ; name: libaot-Xamarin.AndroidX.Print.dll.so
		ptr null; void* handle (0x0)
	}, ; 790
	%struct.DSOCacheEntry {
		i64 2006486722, ; hash 0x77988ec2, from name: System.Xml.XmlSerializer.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.172_name, ; name: libaot-System.Xml.XmlSerializer.dll.so
		ptr null; void* handle (0x0)
	}, ; 791
	%struct.DSOCacheEntry {
		i64 2009571110, ; hash 0x77c79f26, from name: System.Diagnostics.DiagnosticSource.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.37_name, ; name: libaot-System.Diagnostics.DiagnosticSource.dll.so
		ptr null; void* handle (0x0)
	}, ; 792
	%struct.DSOCacheEntry {
		i64 2014753083, ; hash 0x7816b13b, from name: aot-_Microsoft.Android.Resource.Designer.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.10_name, ; name: libaot-_Microsoft.Android.Resource.Designer.dll.so
		ptr null; void* handle (0x0)
	}, ; 793
	%struct.DSOCacheEntry {
		i64 2015037402, ; hash 0x781b07da, from name: aot-System.Threading.Tasks.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.154_name, ; name: libaot-System.Threading.Tasks.dll.so
		ptr null; void* handle (0x0)
	}, ; 794
	%struct.DSOCacheEntry {
		i64 2019465201, ; hash 0x785e97f1, from name: Xamarin.AndroidX.Lifecycle.ViewModel
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.243_name, ; name: libaot-Xamarin.AndroidX.Lifecycle.ViewModel.dll.so
		ptr null; void* handle (0x0)
	}, ; 795
	%struct.DSOCacheEntry {
		i64 2026045932, ; hash 0x78c301ec, from name: Xamarin.AndroidX.Annotation.Jvm.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.208_name, ; name: libaot-Xamarin.AndroidX.Annotation.Jvm.dll.so
		ptr null; void* handle (0x0)
	}, ; 796
	%struct.DSOCacheEntry {
		i64 2029908657, ; hash 0x78fdf2b1, from name: libaot-System.Xml
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.173_name, ; name: libaot-System.Xml.dll.so
		ptr null; void* handle (0x0)
	}, ; 797
	%struct.DSOCacheEntry {
		i64 2030785657, ; hash 0x790b5479, from name: libaot-System.Security.Cryptography.X509Certificates.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.135_name, ; name: libaot-System.Security.Cryptography.X509Certificates.dll.so
		ptr null; void* handle (0x0)
	}, ; 798
	%struct.DSOCacheEntry {
		i64 2031763787, ; hash 0x791a414b, from name: Xamarin.Android.Glide
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.200_name, ; name: libaot-Xamarin.Android.Glide.dll.so
		ptr null; void* handle (0x0)
	}, ; 799
	%struct.DSOCacheEntry {
		i64 2036106324, ; hash 0x795c8454, from name: aot-System.Net.HttpListener
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.75_name, ; name: libaot-System.Net.HttpListener.dll.so
		ptr null; void* handle (0x0)
	}, ; 800
	%struct.DSOCacheEntry {
		i64 2036643236, ; hash 0x7964b5a4, from name: aot-Xamarin.AndroidX.Navigation.UI.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.251_name, ; name: libaot-Xamarin.AndroidX.Navigation.UI.dll.so
		ptr null; void* handle (0x0)
	}, ; 801
	%struct.DSOCacheEntry {
		i64 2040862618, ; hash 0x79a5179a, from name: libaot-System.Reflection.Emit
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.102_name, ; name: libaot-System.Reflection.Emit.dll.so
		ptr null; void* handle (0x0)
	}, ; 802
	%struct.DSOCacheEntry {
		i64 2043472270, ; hash 0x79cce98e, from name: aot-System.ComponentModel.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.28_name, ; name: libaot-System.ComponentModel.dll.so
		ptr null; void* handle (0x0)
	}, ; 803
	%struct.DSOCacheEntry {
		i64 2044108986, ; hash 0x79d6a0ba, from name: libSystem.Native.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.1_name, ; name: libSystem.Native.so
		ptr null; void* handle (0x0)
	}, ; 804
	%struct.DSOCacheEntry {
		i64 2045470958, ; hash 0x79eb68ee, from name: System.Private.Xml
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.98_name, ; name: libaot-System.Private.Xml.dll.so
		ptr null; void* handle (0x0)
	}, ; 805
	%struct.DSOCacheEntry {
		i64 2046194820, ; hash 0x79f67484, from name: libaot-System.Xml.XDocument.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.168_name, ; name: libaot-System.Xml.XDocument.dll.so
		ptr null; void* handle (0x0)
	}, ; 806
	%struct.DSOCacheEntry {
		i64 2049174519, ; hash 0x7a23ebf7, from name: libaot-Xamarin.AndroidX.DocumentFile
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.226_name, ; name: libaot-Xamarin.AndroidX.DocumentFile.dll.so
		ptr null; void* handle (0x0)
	}, ; 807
	%struct.DSOCacheEntry {
		i64 2054382682, ; hash 0x7a73645a, from name: libaot-System.Resources.Reader
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.108_name, ; name: libaot-System.Resources.Reader.dll.so
		ptr null; void* handle (0x0)
	}, ; 808
	%struct.DSOCacheEntry {
		i64 2054923148, ; hash 0x7a7ba38c, from name: aot-System.Reflection.Emit.ILGeneration.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.100_name, ; name: libaot-System.Reflection.Emit.ILGeneration.dll.so
		ptr null; void* handle (0x0)
	}, ; 809
	%struct.DSOCacheEntry {
		i64 2060659039, ; hash 0x7ad3295f, from name: libaot-System.Globalization.Calendars
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.50_name, ; name: libaot-System.Globalization.Calendars.dll.so
		ptr null; void* handle (0x0)
	}, ; 810
	%struct.DSOCacheEntry {
		i64 2060722524, ; hash 0x7ad4215c, from name: aot-System.Net.Mail
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.76_name, ; name: libaot-System.Net.Mail.dll.so
		ptr null; void* handle (0x0)
	}, ; 811
	%struct.DSOCacheEntry {
		i64 2063794266, ; hash 0x7b03005a, from name: aot-System.Windows.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.164_name, ; name: libaot-System.Windows.dll.so
		ptr null; void* handle (0x0)
	}, ; 812
	%struct.DSOCacheEntry {
		i64 2065818172, ; hash 0x7b21e23c, from name: libaot-System.Net.Security.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.83_name, ; name: libaot-System.Net.Security.dll.so
		ptr null; void* handle (0x0)
	}, ; 813
	%struct.DSOCacheEntry {
		i64 2068548736, ; hash 0x7b4b8c80, from name: aot-System.ComponentModel.EventBasedAsync.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.25_name, ; name: libaot-System.ComponentModel.EventBasedAsync.dll.so
		ptr null; void* handle (0x0)
	}, ; 814
	%struct.DSOCacheEntry {
		i64 2070888862, ; hash 0x7b6f419e, from name: System.Diagnostics.TraceSource
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.43_name, ; name: libaot-System.Diagnostics.TraceSource.dll.so
		ptr null; void* handle (0x0)
	}, ; 815
	%struct.DSOCacheEntry {
		i64 2071976611, ; hash 0x7b7fdaa3, from name: aot-Microsoft.Extensions.DependencyInjection
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.186_name, ; name: libaot-Microsoft.Extensions.DependencyInjection.dll.so
		ptr null; void* handle (0x0)
	}, ; 816
	%struct.DSOCacheEntry {
		i64 2072777569, ; hash 0x7b8c1361, from name: System.IO.Compression.Native.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.0_name, ; name: libSystem.IO.Compression.Native.so
		ptr null; void* handle (0x0)
	}, ; 817
	%struct.DSOCacheEntry {
		i64 2075102007, ; hash 0x7baf8b37, from name: Xamarin.AndroidX.Lifecycle.LiveData.Core.Ktx.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.239_name, ; name: libaot-Xamarin.AndroidX.Lifecycle.LiveData.Core.Ktx.dll.so
		ptr null; void* handle (0x0)
	}, ; 818
	%struct.DSOCacheEntry {
		i64 2078610628, ; hash 0x7be514c4, from name: libmono-component-marshal-ilgen.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.5_name, ; name: libmono-component-marshal-ilgen.so
		ptr null; void* handle (0x0)
	}, ; 819
	%struct.DSOCacheEntry {
		i64 2082659839, ; hash 0x7c22ddff, from name: Microsoft.CSharp.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.11_name, ; name: libaot-Microsoft.CSharp.dll.so
		ptr null; void* handle (0x0)
	}, ; 820
	%struct.DSOCacheEntry {
		i64 2084131128, ; hash 0x7c395138, from name: aot-Microsoft.Win32.Registry
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.15_name, ; name: libaot-Microsoft.Win32.Registry.dll.so
		ptr null; void* handle (0x0)
	}, ; 821
	%struct.DSOCacheEntry {
		i64 2089068607, ; hash 0x7c84a83f, from name: System.Xml.XPath.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.170_name, ; name: libaot-System.Xml.XPath.dll.so
		ptr null; void* handle (0x0)
	}, ; 822
	%struct.DSOCacheEntry {
		i64 2090596640, ; hash 0x7c9bf920, from name: System.Numerics.Vectors
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.92_name, ; name: libaot-System.Numerics.Vectors.dll.so
		ptr null; void* handle (0x0)
	}, ; 823
	%struct.DSOCacheEntry {
		i64 2091617022, ; hash 0x7cab8afe, from name: Xamarin.AndroidX.ConstraintLayout.Core.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.219_name, ; name: libaot-Xamarin.AndroidX.ConstraintLayout.Core.dll.so
		ptr null; void* handle (0x0)
	}, ; 824
	%struct.DSOCacheEntry {
		i64 2091823885, ; hash 0x7caeb30d, from name: aot-System.ServiceModel.Web.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.141_name, ; name: libaot-System.ServiceModel.Web.dll.so
		ptr null; void* handle (0x0)
	}, ; 825
	%struct.DSOCacheEntry {
		i64 2093801196, ; hash 0x7cccdeec, from name: libaot-System.Buffers
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.17_name, ; name: libaot-System.Buffers.dll.so
		ptr null; void* handle (0x0)
	}, ; 826
	%struct.DSOCacheEntry {
		i64 2094311079, ; hash 0x7cd4a6a7, from name: aot-System.Runtime.Serialization.Primitives
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.123_name, ; name: libaot-System.Runtime.Serialization.Primitives.dll.so
		ptr null; void* handle (0x0)
	}, ; 827
	%struct.DSOCacheEntry {
		i64 2094550535, ; hash 0x7cd84e07, from name: aot-MauiApp1.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.9_name, ; name: libaot-MauiApp1.dll.so
		ptr null; void* handle (0x0)
	}, ; 828
	%struct.DSOCacheEntry {
		i64 2097043733, ; hash 0x7cfe5915, from name: Microsoft.Extensions.DependencyInjection.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.186_name, ; name: libaot-Microsoft.Extensions.DependencyInjection.dll.so
		ptr null; void* handle (0x0)
	}, ; 829
	%struct.DSOCacheEntry {
		i64 2100120213, ; hash 0x7d2d4a95, from name: aot-System.Runtime.Serialization.Formatters.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.121_name, ; name: libaot-System.Runtime.Serialization.Formatters.dll.so
		ptr null; void* handle (0x0)
	}, ; 830
	%struct.DSOCacheEntry {
		i64 2101192894, ; hash 0x7d3da8be, from name: libSystem.Security.Cryptography.Native.Android.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.2_name, ; name: libSystem.Security.Cryptography.Native.Android.so
		ptr null; void* handle (0x0)
	}, ; 831
	%struct.DSOCacheEntry {
		i64 2102739840, ; hash 0x7d554380, from name: libaot-Xamarin.AndroidX.Window.Extensions.Core.Core.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.270_name, ; name: libaot-Xamarin.AndroidX.Window.Extensions.Core.Core.dll.so
		ptr null; void* handle (0x0)
	}, ; 832
	%struct.DSOCacheEntry {
		i64 2105831344, ; hash 0x7d846fb0, from name: libaot-System.ValueTuple.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.161_name, ; name: libaot-System.ValueTuple.dll.so
		ptr null; void* handle (0x0)
	}, ; 833
	%struct.DSOCacheEntry {
		i64 2105884241, ; hash 0x7d853e51, from name: libaot-Microsoft.Extensions.Logging.Abstractions.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.189_name, ; name: libaot-Microsoft.Extensions.Logging.Abstractions.dll.so
		ptr null; void* handle (0x0)
	}, ; 834
	%struct.DSOCacheEntry {
		i64 2113629505, ; hash 0x7dfb6d41, from name: libaot-Xamarin.Google.Crypto.Tink.Android
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.273_name, ; name: libaot-Xamarin.Google.Crypto.Tink.Android.dll.so
		ptr null; void* handle (0x0)
	}, ; 835
	%struct.DSOCacheEntry {
		i64 2115594265, ; hash 0x7e196819, from name: aot-System.Collections.Concurrent
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.18_name, ; name: libaot-System.Collections.Concurrent.dll.so
		ptr null; void* handle (0x0)
	}, ; 836
	%struct.DSOCacheEntry {
		i64 2118947117, ; hash 0x7e4c912d, from name: libaot-System.IO.Pipes.AccessControl.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.64_name, ; name: libaot-System.IO.Pipes.AccessControl.dll.so
		ptr null; void* handle (0x0)
	}, ; 837
	%struct.DSOCacheEntry {
		i64 2119570579, ; hash 0x7e561493, from name: libaot-Java.Interop.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.178_name, ; name: libaot-Java.Interop.dll.so
		ptr null; void* handle (0x0)
	}, ; 838
	%struct.DSOCacheEntry {
		i64 2127167465, ; hash 0x7ec9ffe9, from name: System.Console
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.30_name, ; name: libaot-System.Console.dll.so
		ptr null; void* handle (0x0)
	}, ; 839
	%struct.DSOCacheEntry {
		i64 2137647171, ; hash 0x7f69e843, from name: aot-Xamarin.Kotlin.StdLib.Jdk7.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.279_name, ; name: libaot-Xamarin.Kotlin.StdLib.Jdk7.dll.so
		ptr null; void* handle (0x0)
	}, ; 840
	%struct.DSOCacheEntry {
		i64 2142473426, ; hash 0x7fb38cd2, from name: System.Collections.Specialized
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.21_name, ; name: libaot-System.Collections.Specialized.dll.so
		ptr null; void* handle (0x0)
	}, ; 841
	%struct.DSOCacheEntry {
		i64 2146970474, ; hash 0x7ff82b6a, from name: aot-Xamarin.AndroidX.ConstraintLayout.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.218_name, ; name: libaot-Xamarin.AndroidX.ConstraintLayout.dll.so
		ptr null; void* handle (0x0)
	}, ; 842
	%struct.DSOCacheEntry {
		i64 2149461079, ; hash 0x801e2c57, from name: aot-System.Threading.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.158_name, ; name: libaot-System.Threading.dll.so
		ptr null; void* handle (0x0)
	}, ; 843
	%struct.DSOCacheEntry {
		i64 2159891885, ; hash 0x80bd55ad, from name: Microsoft.Maui
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.196_name, ; name: libaot-Microsoft.Maui.dll.so
		ptr null; void* handle (0x0)
	}, ; 844
	%struct.DSOCacheEntry {
		i64 2162156863, ; hash 0x80dfe53f, from name: libaot-Xamarin.AndroidX.CustomView.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.224_name, ; name: libaot-Xamarin.AndroidX.CustomView.dll.so
		ptr null; void* handle (0x0)
	}, ; 845
	%struct.DSOCacheEntry {
		i64 2167011298, ; hash 0x8129f7e2, from name: libaot-Microsoft.Maui.Controls
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.194_name, ; name: libaot-Microsoft.Maui.Controls.dll.so
		ptr null; void* handle (0x0)
	}, ; 846
	%struct.DSOCacheEntry {
		i64 2167720450, ; hash 0x8134ca02, from name: aot-System.Data.Common.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.32_name, ; name: libaot-System.Data.Common.dll.so
		ptr null; void* handle (0x0)
	}, ; 847
	%struct.DSOCacheEntry {
		i64 2167987959, ; hash 0x8138def7, from name: aot-Microsoft.Maui.Graphics.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.198_name, ; name: libaot-Microsoft.Maui.Graphics.dll.so
		ptr null; void* handle (0x0)
	}, ; 848
	%struct.DSOCacheEntry {
		i64 2170173082, ; hash 0x815a369a, from name: libaot-System.Private.Xml
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.98_name, ; name: libaot-System.Private.Xml.dll.so
		ptr null; void* handle (0x0)
	}, ; 849
	%struct.DSOCacheEntry {
		i64 2172494244, ; hash 0x817da1a4, from name: libaot-Xamarin.Android.Glide.DiskLruCache.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.202_name, ; name: libaot-Xamarin.Android.Glide.DiskLruCache.dll.so
		ptr null; void* handle (0x0)
	}, ; 850
	%struct.DSOCacheEntry {
		i64 2172943413, ; hash 0x81847c35, from name: libaot-System.ComponentModel.TypeConverter.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.27_name, ; name: libaot-System.ComponentModel.TypeConverter.dll.so
		ptr null; void* handle (0x0)
	}, ; 851
	%struct.DSOCacheEntry {
		i64 2181722915, ; hash 0x820a7323, from name: aot-System.Xml.Serialization.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.167_name, ; name: libaot-System.Xml.Serialization.dll.so
		ptr null; void* handle (0x0)
	}, ; 852
	%struct.DSOCacheEntry {
		i64 2191903102, ; hash 0x82a5c97e, from name: libaot-Xamarin.AndroidX.Arch.Core.Common
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.211_name, ; name: libaot-Xamarin.AndroidX.Arch.Core.Common.dll.so
		ptr null; void* handle (0x0)
	}, ; 853
	%struct.DSOCacheEntry {
		i64 2192057212, ; hash 0x82a8237c, from name: Microsoft.Extensions.Logging.Abstractions
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.189_name, ; name: libaot-Microsoft.Extensions.Logging.Abstractions.dll.so
		ptr null; void* handle (0x0)
	}, ; 854
	%struct.DSOCacheEntry {
		i64 2192436256, ; hash 0x82adec20, from name: Mono.Android.Export.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.179_name, ; name: libaot-Mono.Android.Export.dll.so
		ptr null; void* handle (0x0)
	}, ; 855
	%struct.DSOCacheEntry {
		i64 2199198006, ; hash 0x83151936, from name: aot-System.Web.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.163_name, ; name: libaot-System.Web.dll.so
		ptr null; void* handle (0x0)
	}, ; 856
	%struct.DSOCacheEntry {
		i64 2201231467, ; hash 0x8334206b, from name: System.Net.Http
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.74_name, ; name: libaot-System.Net.Http.dll.so
		ptr null; void* handle (0x0)
	}, ; 857
	%struct.DSOCacheEntry {
		i64 2203491070, ; hash 0x83569afe, from name: libaot-System.Security.Cryptography.Primitives
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.134_name, ; name: libaot-System.Security.Cryptography.Primitives.dll.so
		ptr null; void* handle (0x0)
	}, ; 858
	%struct.DSOCacheEntry {
		i64 2205453355, ; hash 0x83748c2b, from name: libaot-Xamarin.AndroidX.VersionedParcelable
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.266_name, ; name: libaot-Xamarin.AndroidX.VersionedParcelable.dll.so
		ptr null; void* handle (0x0)
	}, ; 859
	%struct.DSOCacheEntry {
		i64 2205687657, ; hash 0x83781f69, from name: libaot-Jsr305Binding
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.272_name, ; name: libaot-Jsr305Binding.dll.so
		ptr null; void* handle (0x0)
	}, ; 860
	%struct.DSOCacheEntry {
		i64 2206653028, ; hash 0x8386da64, from name: Xamarin.Jetbrains.Annotations.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.276_name, ; name: libaot-Xamarin.Jetbrains.Annotations.dll.so
		ptr null; void* handle (0x0)
	}, ; 861
	%struct.DSOCacheEntry {
		i64 2211184502, ; hash 0x83cbff76, from name: libaot-Microsoft.VisualBasic.Core.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.12_name, ; name: libaot-Microsoft.VisualBasic.Core.dll.so
		ptr null; void* handle (0x0)
	}, ; 862
	%struct.DSOCacheEntry {
		i64 2211380618, ; hash 0x83cefd8a, from name: aot-Microsoft.Extensions.DependencyInjection.Abstractions.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.187_name, ; name: libaot-Microsoft.Extensions.DependencyInjection.Abstractions.dll.so
		ptr null; void* handle (0x0)
	}, ; 863
	%struct.DSOCacheEntry {
		i64 2211767232, ; hash 0x83d4e3c0, from name: aot-Microsoft.Maui.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.196_name, ; name: libaot-Microsoft.Maui.dll.so
		ptr null; void* handle (0x0)
	}, ; 864
	%struct.DSOCacheEntry {
		i64 2212031953, ; hash 0x83d8edd1, from name: libaot-System.Xml.Linq
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.165_name, ; name: libaot-System.Xml.Linq.dll.so
		ptr null; void* handle (0x0)
	}, ; 865
	%struct.DSOCacheEntry {
		i64 2217426333, ; hash 0x842b3d9d, from name: aot-System.Diagnostics.StackTrace
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.40_name, ; name: libaot-System.Diagnostics.StackTrace.dll.so
		ptr null; void* handle (0x0)
	}, ; 866
	%struct.DSOCacheEntry {
		i64 2218478949, ; hash 0x843b4d65, from name: aot-System.Threading.Timer
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.157_name, ; name: libaot-System.Threading.Timer.dll.so
		ptr null; void* handle (0x0)
	}, ; 867
	%struct.DSOCacheEntry {
		i64 2221531016, ; hash 0x8469df88, from name: aot-System.Transactions
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.160_name, ; name: libaot-System.Transactions.dll.so
		ptr null; void* handle (0x0)
	}, ; 868
	%struct.DSOCacheEntry {
		i64 2222056684, ; hash 0x8471e4ec, from name: System.Threading.Tasks.Parallel
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.153_name, ; name: libaot-System.Threading.Tasks.Parallel.dll.so
		ptr null; void* handle (0x0)
	}, ; 869
	%struct.DSOCacheEntry {
		i64 2223531549, ; hash 0x8488661d, from name: libaot-System.ComponentModel.Primitives
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.26_name, ; name: libaot-System.ComponentModel.Primitives.dll.so
		ptr null; void* handle (0x0)
	}, ; 870
	%struct.DSOCacheEntry {
		i64 2225134671, ; hash 0x84a0dc4f, from name: libaot-System.Security.Claims.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.128_name, ; name: libaot-System.Security.Claims.dll.so
		ptr null; void* handle (0x0)
	}, ; 871
	%struct.DSOCacheEntry {
		i64 2225682495, ; hash 0x84a9383f, from name: Microsoft.Extensions.Logging.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.188_name, ; name: libaot-Microsoft.Extensions.Logging.dll.so
		ptr null; void* handle (0x0)
	}, ; 872
	%struct.DSOCacheEntry {
		i64 2229681966, ; hash 0x84e63f2e, from name: xamarin-debug-app-helper
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.8_name, ; name: libxamarin-debug-app-helper.so
		ptr null; void* handle (0x0)
	}, ; 873
	%struct.DSOCacheEntry {
		i64 2230460596, ; hash 0x84f220b4, from name: aot-Xamarin.AndroidX.LocalBroadcastManager.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.247_name, ; name: libaot-Xamarin.AndroidX.LocalBroadcastManager.dll.so
		ptr null; void* handle (0x0)
	}, ; 874
	%struct.DSOCacheEntry {
		i64 2231839163, ; hash 0x850729bb, from name: aot-Xamarin.AndroidX.Lifecycle.Runtime.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.241_name, ; name: libaot-Xamarin.AndroidX.Lifecycle.Runtime.dll.so
		ptr null; void* handle (0x0)
	}, ; 875
	%struct.DSOCacheEntry {
		i64 2234028433, ; hash 0x85289191, from name: System.Reflection.Emit.ILGeneration.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.100_name, ; name: libaot-System.Reflection.Emit.ILGeneration.dll.so
		ptr null; void* handle (0x0)
	}, ; 876
	%struct.DSOCacheEntry {
		i64 2238154009, ; hash 0x85678519, from name: Xamarin.AndroidX.ProfileInstaller.ProfileInstaller.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.253_name, ; name: libaot-Xamarin.AndroidX.ProfileInstaller.ProfileInstaller.dll.so
		ptr null; void* handle (0x0)
	}, ; 877
	%struct.DSOCacheEntry {
		i64 2241953027, ; hash 0x85a17d03, from name: libaot-Xamarin.AndroidX.RecyclerView
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.254_name, ; name: libaot-Xamarin.AndroidX.RecyclerView.dll.so
		ptr null; void* handle (0x0)
	}, ; 878
	%struct.DSOCacheEntry {
		i64 2242331687, ; hash 0x85a74427, from name: aot-GoogleGson.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.183_name, ; name: libaot-GoogleGson.dll.so
		ptr null; void* handle (0x0)
	}, ; 879
	%struct.DSOCacheEntry {
		i64 2244775296, ; hash 0x85cc8d80, from name: Xamarin.AndroidX.LocalBroadcastManager
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.247_name, ; name: libaot-Xamarin.AndroidX.LocalBroadcastManager.dll.so
		ptr null; void* handle (0x0)
	}, ; 880
	%struct.DSOCacheEntry {
		i64 2245181094, ; hash 0x85d2bea6, from name: libaot-Microsoft.Maui.Essentials.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.197_name, ; name: libaot-Microsoft.Maui.Essentials.dll.so
		ptr null; void* handle (0x0)
	}, ; 881
	%struct.DSOCacheEntry {
		i64 2247147296, ; hash 0x85f0bf20, from name: Xamarin.AndroidX.Arch.Core.Common.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.211_name, ; name: libaot-Xamarin.AndroidX.Arch.Core.Common.dll.so
		ptr null; void* handle (0x0)
	}, ; 882
	%struct.DSOCacheEntry {
		i64 2248739311, ; hash 0x860909ef, from name: aot-Microsoft.Extensions.Options
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.191_name, ; name: libaot-Microsoft.Extensions.Options.dll.so
		ptr null; void* handle (0x0)
	}, ; 883
	%struct.DSOCacheEntry {
		i64 2254027380, ; hash 0x8659ba74, from name: libaot-System.Xml.Linq.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.165_name, ; name: libaot-System.Xml.Linq.dll.so
		ptr null; void* handle (0x0)
	}, ; 884
	%struct.DSOCacheEntry {
		i64 2254155312, ; hash 0x865bae30, from name: libaot-Xamarin.AndroidX.Navigation.Common.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.248_name, ; name: libaot-Xamarin.AndroidX.Navigation.Common.dll.so
		ptr null; void* handle (0x0)
	}, ; 885
	%struct.DSOCacheEntry {
		i64 2256313426, ; hash 0x867c9c52, from name: System.Globalization.Extensions
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.51_name, ; name: libaot-System.Globalization.Extensions.dll.so
		ptr null; void* handle (0x0)
	}, ; 886
	%struct.DSOCacheEntry {
		i64 2262974896, ; hash 0x86e241b0, from name: libaot-System.Runtime.Serialization.Primitives.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.123_name, ; name: libaot-System.Runtime.Serialization.Primitives.dll.so
		ptr null; void* handle (0x0)
	}, ; 887
	%struct.DSOCacheEntry {
		i64 2265178066, ; hash 0x8703dfd2, from name: aot-Xamarin.AndroidX.RecyclerView
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.254_name, ; name: libaot-Xamarin.AndroidX.RecyclerView.dll.so
		ptr null; void* handle (0x0)
	}, ; 888
	%struct.DSOCacheEntry {
		i64 2266799131, ; hash 0x871c9c1b, from name: Microsoft.Extensions.Configuration.Abstractions
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.185_name, ; name: libaot-Microsoft.Extensions.Configuration.Abstractions.dll.so
		ptr null; void* handle (0x0)
	}, ; 889
	%struct.DSOCacheEntry {
		i64 2270440105, ; hash 0x87542aa9, from name: aot-System.Formats.Tar
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.49_name, ; name: libaot-System.Formats.Tar.dll.so
		ptr null; void* handle (0x0)
	}, ; 890
	%struct.DSOCacheEntry {
		i64 2272382800, ; hash 0x8771cf50, from name: System.Net.Sockets.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.85_name, ; name: libaot-System.Net.Sockets.dll.so
		ptr null; void* handle (0x0)
	}, ; 891
	%struct.DSOCacheEntry {
		i64 2273572020, ; hash 0x8783f4b4, from name: aot-System.Reflection.Emit
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.102_name, ; name: libaot-System.Reflection.Emit.dll.so
		ptr null; void* handle (0x0)
	}, ; 892
	%struct.DSOCacheEntry {
		i64 2276359383, ; hash 0x87ae7cd7, from name: aot-System.Diagnostics.Debug
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.36_name, ; name: libaot-System.Diagnostics.Debug.dll.so
		ptr null; void* handle (0x0)
	}, ; 893
	%struct.DSOCacheEntry {
		i64 2279498149, ; hash 0x87de61a5, from name: libaot-System.Runtime.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.126_name, ; name: libaot-System.Runtime.dll.so
		ptr null; void* handle (0x0)
	}, ; 894
	%struct.DSOCacheEntry {
		i64 2280105908, ; hash 0x87e7a7b4, from name: aot-System.Runtime.Handles
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.114_name, ; name: libaot-System.Runtime.Handles.dll.so
		ptr null; void* handle (0x0)
	}, ; 895
	%struct.DSOCacheEntry {
		i64 2282650294, ; hash 0x880e7ab6, from name: aot-Xamarin.AndroidX.Fragment
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.232_name, ; name: libaot-Xamarin.AndroidX.Fragment.dll.so
		ptr null; void* handle (0x0)
	}, ; 896
	%struct.DSOCacheEntry {
		i64 2283539775, ; hash 0x881c0d3f, from name: aot-Xamarin.Kotlin.StdLib.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.277_name, ; name: libaot-Xamarin.Kotlin.StdLib.dll.so
		ptr null; void* handle (0x0)
	}, ; 897
	%struct.DSOCacheEntry {
		i64 2283967557, ; hash 0x88229445, from name: aot-Xamarin.AndroidX.Collection.Ktx
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.216_name, ; name: libaot-Xamarin.AndroidX.Collection.Ktx.dll.so
		ptr null; void* handle (0x0)
	}, ; 898
	%struct.DSOCacheEntry {
		i64 2284202657, ; hash 0x88262aa1, from name: libaot-System.Reflection.TypeExtensions
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.106_name, ; name: libaot-System.Reflection.TypeExtensions.dll.so
		ptr null; void* handle (0x0)
	}, ; 899
	%struct.DSOCacheEntry {
		i64 2284562302, ; hash 0x882ba77e, from name: aot-Xamarin.AndroidX.CursorAdapter.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.223_name, ; name: libaot-Xamarin.AndroidX.CursorAdapter.dll.so
		ptr null; void* handle (0x0)
	}, ; 900
	%struct.DSOCacheEntry {
		i64 2289704251, ; hash 0x887a1d3b, from name: aot-MauiApp1
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.9_name, ; name: libaot-MauiApp1.dll.so
		ptr null; void* handle (0x0)
	}, ; 901
	%struct.DSOCacheEntry {
		i64 2291118340, ; hash 0x888fb104, from name: libaot-System.Diagnostics.FileVersionInfo
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.38_name, ; name: libaot-System.Diagnostics.FileVersionInfo.dll.so
		ptr null; void* handle (0x0)
	}, ; 902
	%struct.DSOCacheEntry {
		i64 2295906218, ; hash 0x88d8bfaa, from name: System.Net.Sockets
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.85_name, ; name: libaot-System.Net.Sockets.dll.so
		ptr null; void* handle (0x0)
	}, ; 903
	%struct.DSOCacheEntry {
		i64 2296031774, ; hash 0x88daaa1e, from name: aot-System.Diagnostics.Tools.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.42_name, ; name: libaot-System.Diagnostics.Tools.dll.so
		ptr null; void* handle (0x0)
	}, ; 904
	%struct.DSOCacheEntry {
		i64 2298471582, ; hash 0x88ffe49e, from name: System.Net.Mail
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.76_name, ; name: libaot-System.Net.Mail.dll.so
		ptr null; void* handle (0x0)
	}, ; 905
	%struct.DSOCacheEntry {
		i64 2300115772, ; hash 0x8918fb3c, from name: aot-Java.Interop.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.178_name, ; name: libaot-Java.Interop.dll.so
		ptr null; void* handle (0x0)
	}, ; 906
	%struct.DSOCacheEntry {
		i64 2301626285, ; hash 0x893007ad, from name: libaot-Xamarin.Google.ErrorProne.Annotations.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.274_name, ; name: libaot-Xamarin.Google.ErrorProne.Annotations.dll.so
		ptr null; void* handle (0x0)
	}, ; 907
	%struct.DSOCacheEntry {
		i64 2302846513, ; hash 0x8942a631, from name: libaot-System.Security.AccessControl.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.127_name, ; name: libaot-System.Security.AccessControl.dll.so
		ptr null; void* handle (0x0)
	}, ; 908
	%struct.DSOCacheEntry {
		i64 2303728310, ; hash 0x89501ab6, from name: aot-System.IO.FileSystem
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.61_name, ; name: libaot-System.IO.FileSystem.dll.so
		ptr null; void* handle (0x0)
	}, ; 909
	%struct.DSOCacheEntry {
		i64 2304141806, ; hash 0x895669ee, from name: libaot-System.Net.WebClient
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.86_name, ; name: libaot-System.Net.WebClient.dll.so
		ptr null; void* handle (0x0)
	}, ; 910
	%struct.DSOCacheEntry {
		i64 2313277824, ; hash 0x89e1d180, from name: aot-System.Xml.XPath.XDocument.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.169_name, ; name: libaot-System.Xml.XPath.XDocument.dll.so
		ptr null; void* handle (0x0)
	}, ; 911
	%struct.DSOCacheEntry {
		i64 2315984125, ; hash 0x8a0b1cfd, from name: aot-System.Reflection.Emit.ILGeneration
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.100_name, ; name: libaot-System.Reflection.Emit.ILGeneration.dll.so
		ptr null; void* handle (0x0)
	}, ; 912
	%struct.DSOCacheEntry {
		i64 2320813289, ; hash 0x8a54cce9, from name: libaot-System.Xml.XmlSerializer.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.172_name, ; name: libaot-System.Xml.XmlSerializer.dll.so
		ptr null; void* handle (0x0)
	}, ; 913
	%struct.DSOCacheEntry {
		i64 2323667891, ; hash 0x8a805bb3, from name: libaot-System.Data.Common
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.32_name, ; name: libaot-System.Data.Common.dll.so
		ptr null; void* handle (0x0)
	}, ; 914
	%struct.DSOCacheEntry {
		i64 2324577555, ; hash 0x8a8e3d13, from name: aot-Xamarin.AndroidX.Security.SecurityCrypto
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.258_name, ; name: libaot-Xamarin.AndroidX.Security.SecurityCrypto.dll.so
		ptr null; void* handle (0x0)
	}, ; 915
	%struct.DSOCacheEntry {
		i64 2327830411, ; hash 0x8abfdf8b, from name: System.Private.Xml.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.98_name, ; name: libaot-System.Private.Xml.dll.so
		ptr null; void* handle (0x0)
	}, ; 916
	%struct.DSOCacheEntry {
		i64 2334824423, ; hash 0x8b2a97e7, from name: libaot-System.IO.Pipes.AccessControl
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.64_name, ; name: libaot-System.IO.Pipes.AccessControl.dll.so
		ptr null; void* handle (0x0)
	}, ; 917
	%struct.DSOCacheEntry {
		i64 2338193301, ; hash 0x8b5dff95, from name: libaot-Xamarin.AndroidX.Annotation.Jvm
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.208_name, ; name: libaot-Xamarin.AndroidX.Annotation.Jvm.dll.so
		ptr null; void* handle (0x0)
	}, ; 918
	%struct.DSOCacheEntry {
		i64 2339018825, ; hash 0x8b6a9849, from name: libaot-WindowsBase
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.175_name, ; name: libaot-WindowsBase.dll.so
		ptr null; void* handle (0x0)
	}, ; 919
	%struct.DSOCacheEntry {
		i64 2339644593, ; hash 0x8b7424b1, from name: aot-System.Threading.Tasks.Dataflow.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.151_name, ; name: libaot-System.Threading.Tasks.Dataflow.dll.so
		ptr null; void* handle (0x0)
	}, ; 920
	%struct.DSOCacheEntry {
		i64 2343278484, ; hash 0x8bab9794, from name: System.Web.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.163_name, ; name: libaot-System.Web.dll.so
		ptr null; void* handle (0x0)
	}, ; 921
	%struct.DSOCacheEntry {
		i64 2344264397, ; hash 0x8bbaa2cd, from name: System.ValueTuple
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.161_name, ; name: libaot-System.ValueTuple.dll.so
		ptr null; void* handle (0x0)
	}, ; 922
	%struct.DSOCacheEntry {
		i64 2344356833, ; hash 0x8bbc0be1, from name: libaot-System.Runtime.InteropServices.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.117_name, ; name: libaot-System.Runtime.InteropServices.dll.so
		ptr null; void* handle (0x0)
	}, ; 923
	%struct.DSOCacheEntry {
		i64 2349657318, ; hash 0x8c0cece6, from name: libaot-Xamarin.Google.ErrorProne.Annotations
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.274_name, ; name: libaot-Xamarin.Google.ErrorProne.Annotations.dll.so
		ptr null; void* handle (0x0)
	}, ; 924
	%struct.DSOCacheEntry {
		i64 2349677068, ; hash 0x8c0d3a0c, from name: aot-System.Diagnostics.Process.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.39_name, ; name: libaot-System.Diagnostics.Process.dll.so
		ptr null; void* handle (0x0)
	}, ; 925
	%struct.DSOCacheEntry {
		i64 2350046653, ; hash 0x8c12ddbd, from name: Xamarin.AndroidX.SavedState.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.256_name, ; name: libaot-Xamarin.AndroidX.SavedState.dll.so
		ptr null; void* handle (0x0)
	}, ; 926
	%struct.DSOCacheEntry {
		i64 2353062107, ; hash 0x8c40e0db, from name: System.Net.Primitives
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.80_name, ; name: libaot-System.Net.Primitives.dll.so
		ptr null; void* handle (0x0)
	}, ; 927
	%struct.DSOCacheEntry {
		i64 2356361631, ; hash 0x8c73399f, from name: libaot-System.Threading.Tasks.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.154_name, ; name: libaot-System.Threading.Tasks.dll.so
		ptr null; void* handle (0x0)
	}, ; 928
	%struct.DSOCacheEntry {
		i64 2356807375, ; hash 0x8c7a06cf, from name: aot-Xamarin.AndroidX.ProfileInstaller.ProfileInstaller
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.253_name, ; name: libaot-Xamarin.AndroidX.ProfileInstaller.ProfileInstaller.dll.so
		ptr null; void* handle (0x0)
	}, ; 929
	%struct.DSOCacheEntry {
		i64 2362663635, ; hash 0x8cd362d3, from name: libaot-netstandard
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.177_name, ; name: libaot-netstandard.dll.so
		ptr null; void* handle (0x0)
	}, ; 930
	%struct.DSOCacheEntry {
		i64 2369485246, ; hash 0x8d3b79be, from name: aot-Xamarin.AndroidX.Annotation.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.206_name, ; name: libaot-Xamarin.AndroidX.Annotation.dll.so
		ptr null; void* handle (0x0)
	}, ; 931
	%struct.DSOCacheEntry {
		i64 2371007202, ; hash 0x8d52b2e2, from name: Microsoft.Extensions.Configuration
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.184_name, ; name: libaot-Microsoft.Extensions.Configuration.dll.so
		ptr null; void* handle (0x0)
	}, ; 932
	%struct.DSOCacheEntry {
		i64 2380784797, ; hash 0x8de7e49d, from name: Microsoft.Extensions.Configuration.Abstractions.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.185_name, ; name: libaot-Microsoft.Extensions.Configuration.Abstractions.dll.so
		ptr null; void* handle (0x0)
	}, ; 933
	%struct.DSOCacheEntry {
		i64 2384197275, ; hash 0x8e1bf69b, from name: libaot-System.Net.ServicePoint.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.84_name, ; name: libaot-System.Net.ServicePoint.dll.so
		ptr null; void* handle (0x0)
	}, ; 934
	%struct.DSOCacheEntry {
		i64 2386292227, ; hash 0x8e3bee03, from name: libaot-Xamarin.AndroidX.LocalBroadcastManager
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.247_name, ; name: libaot-Xamarin.AndroidX.LocalBroadcastManager.dll.so
		ptr null; void* handle (0x0)
	}, ; 935
	%struct.DSOCacheEntry {
		i64 2386564208, ; hash 0x8e401470, from name: libaot-System.ComponentModel.Annotations
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.23_name, ; name: libaot-System.ComponentModel.Annotations.dll.so
		ptr null; void* handle (0x0)
	}, ; 936
	%struct.DSOCacheEntry {
		i64 2389733863, ; hash 0x8e7071e7, from name: aot-System.Private.Xml
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.98_name, ; name: libaot-System.Private.Xml.dll.so
		ptr null; void* handle (0x0)
	}, ; 937
	%struct.DSOCacheEntry {
		i64 2396723635, ; hash 0x8edb19b3, from name: aot-Microsoft.Maui.Controls.Xaml
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.195_name, ; name: libaot-Microsoft.Maui.Controls.Xaml.dll.so
		ptr null; void* handle (0x0)
	}, ; 938
	%struct.DSOCacheEntry {
		i64 2398397622, ; hash 0x8ef4a4b6, from name: libaot-Xamarin.AndroidX.Lifecycle.ViewModel
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.243_name, ; name: libaot-Xamarin.AndroidX.Lifecycle.ViewModel.dll.so
		ptr null; void* handle (0x0)
	}, ; 939
	%struct.DSOCacheEntry {
		i64 2399301424, ; hash 0x8f026f30, from name: libaot-System.Security.Claims
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.128_name, ; name: libaot-System.Security.Claims.dll.so
		ptr null; void* handle (0x0)
	}, ; 940
	%struct.DSOCacheEntry {
		i64 2401565422, ; hash 0x8f24faee, from name: System.Web.HttpUtility
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.162_name, ; name: libaot-System.Web.HttpUtility.dll.so
		ptr null; void* handle (0x0)
	}, ; 941
	%struct.DSOCacheEntry {
		i64 2403564890, ; hash 0x8f437d5a, from name: System.IO.Compression.FileSystem.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.54_name, ; name: libaot-System.IO.Compression.FileSystem.dll.so
		ptr null; void* handle (0x0)
	}, ; 942
	%struct.DSOCacheEntry {
		i64 2403802009, ; hash 0x8f471b99, from name: aot-Xamarin.AndroidX.Lifecycle.ViewModel.Ktx.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.244_name, ; name: libaot-Xamarin.AndroidX.Lifecycle.ViewModel.Ktx.dll.so
		ptr null; void* handle (0x0)
	}, ; 943
	%struct.DSOCacheEntry {
		i64 2406593473, ; hash 0x8f71b3c1, from name: libaot-System.Runtime
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.126_name, ; name: libaot-System.Runtime.dll.so
		ptr null; void* handle (0x0)
	}, ; 944
	%struct.DSOCacheEntry {
		i64 2406870559, ; hash 0x8f75ee1f, from name: aot-System.Net.NameResolution
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.77_name, ; name: libaot-System.Net.NameResolution.dll.so
		ptr null; void* handle (0x0)
	}, ; 945
	%struct.DSOCacheEntry {
		i64 2408375621, ; hash 0x8f8ce545, from name: System.Formats.Asn1.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.48_name, ; name: libaot-System.Formats.Asn1.dll.so
		ptr null; void* handle (0x0)
	}, ; 946
	%struct.DSOCacheEntry {
		i64 2408870484, ; hash 0x8f947254, from name: aot-Xamarin.AndroidX.Lifecycle.LiveData
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.237_name, ; name: libaot-Xamarin.AndroidX.Lifecycle.LiveData.dll.so
		ptr null; void* handle (0x0)
	}, ; 947
	%struct.DSOCacheEntry {
		i64 2416208484, ; hash 0x90046a64, from name: libaot-System.Resources.Reader.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.108_name, ; name: libaot-System.Resources.Reader.dll.so
		ptr null; void* handle (0x0)
	}, ; 948
	%struct.DSOCacheEntry {
		i64 2416626109, ; hash 0x900ac9bd, from name: libaot-System.IO.MemoryMappedFiles.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.63_name, ; name: libaot-System.IO.MemoryMappedFiles.dll.so
		ptr null; void* handle (0x0)
	}, ; 949
	%struct.DSOCacheEntry {
		i64 2421182758, ; hash 0x90505126, from name: aot-System.Security.Cryptography.Cng.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.130_name, ; name: libaot-System.Security.Cryptography.Cng.dll.so
		ptr null; void* handle (0x0)
	}, ; 950
	%struct.DSOCacheEntry {
		i64 2421380589, ; hash 0x905355ed, from name: System.Threading.Tasks.Dataflow
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.151_name, ; name: libaot-System.Threading.Tasks.Dataflow.dll.so
		ptr null; void* handle (0x0)
	}, ; 951
	%struct.DSOCacheEntry {
		i64 2426026431, ; hash 0x909a39bf, from name: System.IO.Compression.Brotli.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.53_name, ; name: libaot-System.IO.Compression.Brotli.dll.so
		ptr null; void* handle (0x0)
	}, ; 952
	%struct.DSOCacheEntry {
		i64 2428092458, ; hash 0x90b9c02a, from name: libaot-Xamarin.AndroidX.SavedState.SavedState.Ktx
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.257_name, ; name: libaot-Xamarin.AndroidX.SavedState.SavedState.Ktx.dll.so
		ptr null; void* handle (0x0)
	}, ; 953
	%struct.DSOCacheEntry {
		i64 2429087434, ; hash 0x90c8eeca, from name: libaot-System.ServiceProcess
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.142_name, ; name: libaot-System.ServiceProcess.dll.so
		ptr null; void* handle (0x0)
	}, ; 954
	%struct.DSOCacheEntry {
		i64 2430242750, ; hash 0x90da8fbe, from name: aot-Xamarin.AndroidX.CursorAdapter
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.223_name, ; name: libaot-Xamarin.AndroidX.CursorAdapter.dll.so
		ptr null; void* handle (0x0)
	}, ; 955
	%struct.DSOCacheEntry {
		i64 2431206966, ; hash 0x90e94636, from name: libaot-System.Web
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.163_name, ; name: libaot-System.Web.dll.so
		ptr null; void* handle (0x0)
	}, ; 956
	%struct.DSOCacheEntry {
		i64 2431890512, ; hash 0x90f3b450, from name: libaot-System.Data
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.34_name, ; name: libaot-System.Data.dll.so
		ptr null; void* handle (0x0)
	}, ; 957
	%struct.DSOCacheEntry {
		i64 2432891663, ; hash 0x9102fb0f, from name: aot-System.Text.RegularExpressions
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.148_name, ; name: libaot-System.Text.RegularExpressions.dll.so
		ptr null; void* handle (0x0)
	}, ; 958
	%struct.DSOCacheEntry {
		i64 2435441697, ; hash 0x9129e421, from name: libaot-Xamarin.AndroidX.Interpolator
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.234_name, ; name: libaot-Xamarin.AndroidX.Interpolator.dll.so
		ptr null; void* handle (0x0)
	}, ; 959
	%struct.DSOCacheEntry {
		i64 2437406362, ; hash 0x9147de9a, from name: libaot-System.Net.Mail
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.76_name, ; name: libaot-System.Net.Mail.dll.so
		ptr null; void* handle (0x0)
	}, ; 960
	%struct.DSOCacheEntry {
		i64 2438431458, ; hash 0x915782e2, from name: libaot-Xamarin.AndroidX.Activity.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.204_name, ; name: libaot-Xamarin.AndroidX.Activity.dll.so
		ptr null; void* handle (0x0)
	}, ; 961
	%struct.DSOCacheEntry {
		i64 2440626731, ; hash 0x9179022b, from name: System.ComponentModel.DataAnnotations.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.24_name, ; name: libaot-System.ComponentModel.DataAnnotations.dll.so
		ptr null; void* handle (0x0)
	}, ; 962
	%struct.DSOCacheEntry {
		i64 2448201744, ; hash 0x91ec9810, from name: System.Private.CoreLib.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.283_name, ; name: libaot-System.Private.CoreLib.dll.so
		ptr null; void* handle (0x0)
	}, ; 963
	%struct.DSOCacheEntry {
		i64 2448937778, ; hash 0x91f7d332, from name: libaot-System.Diagnostics.DiagnosticSource.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.37_name, ; name: libaot-System.Diagnostics.DiagnosticSource.dll.so
		ptr null; void* handle (0x0)
	}, ; 964
	%struct.DSOCacheEntry {
		i64 2450374416, ; hash 0x920dbf10, from name: aot-System.Runtime.CompilerServices.VisualC
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.112_name, ; name: libaot-System.Runtime.CompilerServices.VisualC.dll.so
		ptr null; void* handle (0x0)
	}, ; 965
	%struct.DSOCacheEntry {
		i64 2452809944, ; hash 0x9232e8d8, from name: aot-System.Linq
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.71_name, ; name: libaot-System.Linq.dll.so
		ptr null; void* handle (0x0)
	}, ; 966
	%struct.DSOCacheEntry {
		i64 2453033447, ; hash 0x923651e7, from name: aot-Microsoft.Maui.Essentials.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.197_name, ; name: libaot-Microsoft.Maui.Essentials.dll.so
		ptr null; void* handle (0x0)
	}, ; 967
	%struct.DSOCacheEntry {
		i64 2454868146, ; hash 0x925250b2, from name: System.Diagnostics.StackTrace.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.40_name, ; name: libaot-System.Diagnostics.StackTrace.dll.so
		ptr null; void* handle (0x0)
	}, ; 968
	%struct.DSOCacheEntry {
		i64 2455050170, ; hash 0x925517ba, from name: aot-System.Transactions.Local.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.159_name, ; name: libaot-System.Transactions.Local.dll.so
		ptr null; void* handle (0x0)
	}, ; 969
	%struct.DSOCacheEntry {
		i64 2458563039, ; hash 0x928ab1df, from name: System.Collections.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.22_name, ; name: libaot-System.Collections.dll.so
		ptr null; void* handle (0x0)
	}, ; 970
	%struct.DSOCacheEntry {
		i64 2460723875, ; hash 0x92abaaa3, from name: Xamarin.AndroidX.Transition.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.263_name, ; name: libaot-Xamarin.AndroidX.Transition.dll.so
		ptr null; void* handle (0x0)
	}, ; 971
	%struct.DSOCacheEntry {
		i64 2463331002, ; hash 0x92d372ba, from name: Microsoft.Extensions.Configuration.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.184_name, ; name: libaot-Microsoft.Extensions.Configuration.dll.so
		ptr null; void* handle (0x0)
	}, ; 972
	%struct.DSOCacheEntry {
		i64 2467239537, ; hash 0x930f1671, from name: libaot-Xamarin.AndroidX.ExifInterface.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.231_name, ; name: libaot-Xamarin.AndroidX.ExifInterface.dll.so
		ptr null; void* handle (0x0)
	}, ; 973
	%struct.DSOCacheEntry {
		i64 2467947364, ; hash 0x9319e364, from name: aot-System.Diagnostics.Contracts
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.35_name, ; name: libaot-System.Diagnostics.Contracts.dll.so
		ptr null; void* handle (0x0)
	}, ; 974
	%struct.DSOCacheEntry {
		i64 2473115737, ; hash 0x9368c059, from name: Xamarin.KotlinX.Coroutines.Android.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.281_name, ; name: libaot-Xamarin.KotlinX.Coroutines.Android.dll.so
		ptr null; void* handle (0x0)
	}, ; 975
	%struct.DSOCacheEntry {
		i64 2473124778, ; hash 0x9368e3aa, from name: System.Threading.Thread.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.155_name, ; name: libaot-System.Threading.Thread.dll.so
		ptr null; void* handle (0x0)
	}, ; 976
	%struct.DSOCacheEntry {
		i64 2473561890, ; hash 0x936f8f22, from name: aot-Xamarin.AndroidX.Fragment.Ktx
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.233_name, ; name: libaot-Xamarin.AndroidX.Fragment.Ktx.dll.so
		ptr null; void* handle (0x0)
	}, ; 977
	%struct.DSOCacheEntry {
		i64 2474192883, ; hash 0x93792ff3, from name: aot-Xamarin.AndroidX.ExifInterface.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.231_name, ; name: libaot-Xamarin.AndroidX.ExifInterface.dll.so
		ptr null; void* handle (0x0)
	}, ; 978
	%struct.DSOCacheEntry {
		i64 2477279789, ; hash 0x93a84a2d, from name: Newtonsoft.Json.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.199_name, ; name: libaot-Newtonsoft.Json.dll.so
		ptr null; void* handle (0x0)
	}, ; 979
	%struct.DSOCacheEntry {
		i64 2480646305, ; hash 0x93dba8a1, from name: Microsoft.Maui.Controls
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.194_name, ; name: libaot-Microsoft.Maui.Controls.dll.so
		ptr null; void* handle (0x0)
	}, ; 980
	%struct.DSOCacheEntry {
		i64 2483446373, ; hash 0x94066265, from name: libaot-CommunityToolkit.Mvvm.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.182_name, ; name: libaot-CommunityToolkit.Mvvm.dll.so
		ptr null; void* handle (0x0)
	}, ; 981
	%struct.DSOCacheEntry {
		i64 2483903535, ; hash 0x940d5c2f, from name: System.ComponentModel.EventBasedAsync
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.25_name, ; name: libaot-System.ComponentModel.EventBasedAsync.dll.so
		ptr null; void* handle (0x0)
	}, ; 982
	%struct.DSOCacheEntry {
		i64 2484371297, ; hash 0x94147f61, from name: System.Net.ServicePoint
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.84_name, ; name: libaot-System.Net.ServicePoint.dll.so
		ptr null; void* handle (0x0)
	}, ; 983
	%struct.DSOCacheEntry {
		i64 2485116874, ; hash 0x941fdfca, from name: aot-System.Globalization.Calendars.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.50_name, ; name: libaot-System.Globalization.Calendars.dll.so
		ptr null; void* handle (0x0)
	}, ; 984
	%struct.DSOCacheEntry {
		i64 2485587657, ; hash 0x94270ec9, from name: aot-System.Reflection.Emit.Lightweight
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.101_name, ; name: libaot-System.Reflection.Emit.Lightweight.dll.so
		ptr null; void* handle (0x0)
	}, ; 985
	%struct.DSOCacheEntry {
		i64 2488050476, ; hash 0x944ca32c, from name: aot-System.ComponentModel.Annotations.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.23_name, ; name: libaot-System.ComponentModel.Annotations.dll.so
		ptr null; void* handle (0x0)
	}, ; 986
	%struct.DSOCacheEntry {
		i64 2493802892, ; hash 0x94a4698c, from name: aot-System.IO.UnmanagedMemoryStream
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.66_name, ; name: libaot-System.IO.UnmanagedMemoryStream.dll.so
		ptr null; void* handle (0x0)
	}, ; 987
	%struct.DSOCacheEntry {
		i64 2495936124, ; hash 0x94c4f67c, from name: Xamarin.Android.Glide.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.200_name, ; name: libaot-Xamarin.Android.Glide.dll.so
		ptr null; void* handle (0x0)
	}, ; 988
	%struct.DSOCacheEntry {
		i64 2496112763, ; hash 0x94c7a87b, from name: libmonosgen-2.0
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.6_name, ; name: libmonosgen-2.0.so
		ptr null; void* handle (0x0)
	}, ; 989
	%struct.DSOCacheEntry {
		i64 2497889492, ; hash 0x94e2c4d4, from name: aot-System.Net.WebProxy.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.88_name, ; name: libaot-System.Net.WebProxy.dll.so
		ptr null; void* handle (0x0)
	}, ; 990
	%struct.DSOCacheEntry {
		i64 2501346920, ; hash 0x95178668, from name: System.Data.DataSetExtensions
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.33_name, ; name: libaot-System.Data.DataSetExtensions.dll.so
		ptr null; void* handle (0x0)
	}, ; 991
	%struct.DSOCacheEntry {
		i64 2506914785, ; hash 0x956c7be1, from name: aot-Xamarin.AndroidX.Activity.Ktx.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.205_name, ; name: libaot-Xamarin.AndroidX.Activity.Ktx.dll.so
		ptr null; void* handle (0x0)
	}, ; 992
	%struct.DSOCacheEntry {
		i64 2513131084, ; hash 0x95cb564c, from name: aot-System.Threading.Tasks.Parallel
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.153_name, ; name: libaot-System.Threading.Tasks.Parallel.dll.so
		ptr null; void* handle (0x0)
	}, ; 993
	%struct.DSOCacheEntry {
		i64 2515547398, ; hash 0x95f03506, from name: libaot-System.Reflection.DispatchProxy
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.99_name, ; name: libaot-System.Reflection.DispatchProxy.dll.so
		ptr null; void* handle (0x0)
	}, ; 994
	%struct.DSOCacheEntry {
		i64 2515941137, ; hash 0x95f63711, from name: libaot-System.Numerics.Vectors.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.92_name, ; name: libaot-System.Numerics.Vectors.dll.so
		ptr null; void* handle (0x0)
	}, ; 995
	%struct.DSOCacheEntry {
		i64 2516002595, ; hash 0x95f72723, from name: libaot-System.Diagnostics.Tools
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.42_name, ; name: libaot-System.Diagnostics.Tools.dll.so
		ptr null; void* handle (0x0)
	}, ; 996
	%struct.DSOCacheEntry {
		i64 2519378085, ; hash 0x962aa8a5, from name: libaot-System.Web.HttpUtility.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.162_name, ; name: libaot-System.Web.HttpUtility.dll.so
		ptr null; void* handle (0x0)
	}, ; 997
	%struct.DSOCacheEntry {
		i64 2527935570, ; hash 0x96ad3c52, from name: aot-System.Reflection.Emit.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.102_name, ; name: libaot-System.Reflection.Emit.dll.so
		ptr null; void* handle (0x0)
	}, ; 998
	%struct.DSOCacheEntry {
		i64 2531051056, ; hash 0x96dcc630, from name: libaot-System.Console.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.30_name, ; name: libaot-System.Console.dll.so
		ptr null; void* handle (0x0)
	}, ; 999
	%struct.DSOCacheEntry {
		i64 2532628430, ; hash 0x96f4d7ce, from name: libaot-System.IO.FileSystem
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.61_name, ; name: libaot-System.IO.FileSystem.dll.so
		ptr null; void* handle (0x0)
	}, ; 1000
	%struct.DSOCacheEntry {
		i64 2537344418, ; hash 0x973ccda2, from name: libaot-System.Xml.Serialization
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.167_name, ; name: libaot-System.Xml.Serialization.dll.so
		ptr null; void* handle (0x0)
	}, ; 1001
	%struct.DSOCacheEntry {
		i64 2545587690, ; hash 0x97ba95ea, from name: libaot-Xamarin.AndroidX.VectorDrawable.Animated.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.265_name, ; name: libaot-Xamarin.AndroidX.VectorDrawable.Animated.dll.so
		ptr null; void* handle (0x0)
	}, ; 1002
	%struct.DSOCacheEntry {
		i64 2545704834, ; hash 0x97bc5f82, from name: Microsoft.VisualBasic.Core.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.12_name, ; name: libaot-Microsoft.VisualBasic.Core.dll.so
		ptr null; void* handle (0x0)
	}, ; 1003
	%struct.DSOCacheEntry {
		i64 2546044432, ; hash 0x97c18e10, from name: aot-System.Security.Cryptography.Algorithms.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.129_name, ; name: libaot-System.Security.Cryptography.Algorithms.dll.so
		ptr null; void* handle (0x0)
	}, ; 1004
	%struct.DSOCacheEntry {
		i64 2547110758, ; hash 0x97d1d366, from name: libaot-Microsoft.Extensions.Configuration
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.184_name, ; name: libaot-Microsoft.Extensions.Configuration.dll.so
		ptr null; void* handle (0x0)
	}, ; 1005
	%struct.DSOCacheEntry {
		i64 2550770354, ; hash 0x9809aab2, from name: Xamarin.Google.Guava.ListenableFuture.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.275_name, ; name: libaot-Xamarin.Google.Guava.ListenableFuture.dll.so
		ptr null; void* handle (0x0)
	}, ; 1006
	%struct.DSOCacheEntry {
		i64 2550858588, ; hash 0x980b035c, from name: libaot-System.Net.NameResolution.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.77_name, ; name: libaot-System.Net.NameResolution.dll.so
		ptr null; void* handle (0x0)
	}, ; 1007
	%struct.DSOCacheEntry {
		i64 2552580572, ; hash 0x982549dc, from name: libaot-System.Diagnostics.DiagnosticSource
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.37_name, ; name: libaot-System.Diagnostics.DiagnosticSource.dll.so
		ptr null; void* handle (0x0)
	}, ; 1008
	%struct.DSOCacheEntry {
		i64 2556319166, ; hash 0x985e55be, from name: aot-Xamarin.AndroidX.DynamicAnimation
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.228_name, ; name: libaot-Xamarin.AndroidX.DynamicAnimation.dll.so
		ptr null; void* handle (0x0)
	}, ; 1009
	%struct.DSOCacheEntry {
		i64 2559347501, ; hash 0x988c8b2d, from name: libaot-System.Net.WebSockets.Client.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.89_name, ; name: libaot-System.Net.WebSockets.Client.dll.so
		ptr null; void* handle (0x0)
	}, ; 1010
	%struct.DSOCacheEntry {
		i64 2562349572, ; hash 0x98ba5a04, from name: Microsoft.CSharp
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.11_name, ; name: libaot-Microsoft.CSharp.dll.so
		ptr null; void* handle (0x0)
	}, ; 1011
	%struct.DSOCacheEntry {
		i64 2570120770, ; hash 0x9930ee42, from name: System.Text.Encodings.Web
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.146_name, ; name: libaot-System.Text.Encodings.Web.dll.so
		ptr null; void* handle (0x0)
	}, ; 1012
	%struct.DSOCacheEntry {
		i64 2570310602, ; hash 0x9933d3ca, from name: libaot-System.Security.Cryptography.Csp.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.131_name, ; name: libaot-System.Security.Cryptography.Csp.dll.so
		ptr null; void* handle (0x0)
	}, ; 1013
	%struct.DSOCacheEntry {
		i64 2578174356, ; hash 0x99abd194, from name: System.Native
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.1_name, ; name: libSystem.Native.so
		ptr null; void* handle (0x0)
	}, ; 1014
	%struct.DSOCacheEntry {
		i64 2579183305, ; hash 0x99bb36c9, from name: aot-System.Text.RegularExpressions.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.148_name, ; name: libaot-System.Text.RegularExpressions.dll.so
		ptr null; void* handle (0x0)
	}, ; 1015
	%struct.DSOCacheEntry {
		i64 2579734868, ; hash 0x99c3a154, from name: libaot-System.Reflection.TypeExtensions.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.106_name, ; name: libaot-System.Reflection.TypeExtensions.dll.so
		ptr null; void* handle (0x0)
	}, ; 1016
	%struct.DSOCacheEntry {
		i64 2580278470, ; hash 0x99cbecc6, from name: libaot-System.Private.Uri.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.96_name, ; name: libaot-System.Private.Uri.dll.so
		ptr null; void* handle (0x0)
	}, ; 1017
	%struct.DSOCacheEntry {
		i64 2581783588, ; hash 0x99e2e424, from name: Xamarin.AndroidX.Lifecycle.Runtime.Ktx
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.242_name, ; name: libaot-Xamarin.AndroidX.Lifecycle.Runtime.Ktx.dll.so
		ptr null; void* handle (0x0)
	}, ; 1018
	%struct.DSOCacheEntry {
		i64 2583342705, ; hash 0x99faae71, from name: System.IO.Compression.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.56_name, ; name: libaot-System.IO.Compression.dll.so
		ptr null; void* handle (0x0)
	}, ; 1019
	%struct.DSOCacheEntry {
		i64 2584814180, ; hash 0x9a112264, from name: libaot-System.Text.RegularExpressions
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.148_name, ; name: libaot-System.Text.RegularExpressions.dll.so
		ptr null; void* handle (0x0)
	}, ; 1020
	%struct.DSOCacheEntry {
		i64 2585805581, ; hash 0x9a20430d, from name: System.Net.Ping
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.79_name, ; name: libaot-System.Net.Ping.dll.so
		ptr null; void* handle (0x0)
	}, ; 1021
	%struct.DSOCacheEntry {
		i64 2586467844, ; hash 0x9a2a5e04, from name: aot-System.Private.Uri
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.96_name, ; name: libaot-System.Private.Uri.dll.so
		ptr null; void* handle (0x0)
	}, ; 1022
	%struct.DSOCacheEntry {
		i64 2586709197, ; hash 0x9a2e0ccd, from name: System.IO.FileSystem.AccessControl.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.57_name, ; name: libaot-System.IO.FileSystem.AccessControl.dll.so
		ptr null; void* handle (0x0)
	}, ; 1023
	%struct.DSOCacheEntry {
		i64 2588746354, ; hash 0x9a4d2272, from name: System.Reflection.Emit.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.102_name, ; name: libaot-System.Reflection.Emit.dll.so
		ptr null; void* handle (0x0)
	}, ; 1024
	%struct.DSOCacheEntry {
		i64 2589602615, ; hash 0x9a5a3337, from name: System.Threading.ThreadPool
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.156_name, ; name: libaot-System.Threading.ThreadPool.dll.so
		ptr null; void* handle (0x0)
	}, ; 1025
	%struct.DSOCacheEntry {
		i64 2590343080, ; hash 0x9a657fa8, from name: aot-Xamarin.AndroidX.DynamicAnimation.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.228_name, ; name: libaot-Xamarin.AndroidX.DynamicAnimation.dll.so
		ptr null; void* handle (0x0)
	}, ; 1026
	%struct.DSOCacheEntry {
		i64 2593884303, ; hash 0x9a9b888f, from name: aot-System.Reflection
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.107_name, ; name: libaot-System.Reflection.dll.so
		ptr null; void* handle (0x0)
	}, ; 1027
	%struct.DSOCacheEntry {
		i64 2596751594, ; hash 0x9ac748ea, from name: aot-System.ComponentModel.TypeConverter.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.27_name, ; name: libaot-System.ComponentModel.TypeConverter.dll.so
		ptr null; void* handle (0x0)
	}, ; 1028
	%struct.DSOCacheEntry {
		i64 2597700034, ; hash 0x9ad5c1c2, from name: libaot-System.Xml.XPath
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.170_name, ; name: libaot-System.Xml.XPath.dll.so
		ptr null; void* handle (0x0)
	}, ; 1029
	%struct.DSOCacheEntry {
		i64 2600532591, ; hash 0x9b00fa6f, from name: libaot-Xamarin.Jetbrains.Annotations
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.276_name, ; name: libaot-Xamarin.Jetbrains.Annotations.dll.so
		ptr null; void* handle (0x0)
	}, ; 1030
	%struct.DSOCacheEntry {
		i64 2602792014, ; hash 0x9b23744e, from name: aot-Xamarin.AndroidX.Navigation.Fragment
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.249_name, ; name: libaot-Xamarin.AndroidX.Navigation.Fragment.dll.so
		ptr null; void* handle (0x0)
	}, ; 1031
	%struct.DSOCacheEntry {
		i64 2605712449, ; hash 0x9b500441, from name: Xamarin.KotlinX.Coroutines.Core.Jvm
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.282_name, ; name: libaot-Xamarin.KotlinX.Coroutines.Core.Jvm.dll.so
		ptr null; void* handle (0x0)
	}, ; 1032
	%struct.DSOCacheEntry {
		i64 2606902469, ; hash 0x9b622cc5, from name: aot-Microsoft.Extensions.Logging.Debug.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.190_name, ; name: libaot-Microsoft.Extensions.Logging.Debug.dll.so
		ptr null; void* handle (0x0)
	}, ; 1033
	%struct.DSOCacheEntry {
		i64 2608178168, ; hash 0x9b75a3f8, from name: aot-GoogleGson
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.183_name, ; name: libaot-GoogleGson.dll.so
		ptr null; void* handle (0x0)
	}, ; 1034
	%struct.DSOCacheEntry {
		i64 2615233544, ; hash 0x9be14c08, from name: Xamarin.AndroidX.Fragment.Ktx
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.233_name, ; name: libaot-Xamarin.AndroidX.Fragment.Ktx.dll.so
		ptr null; void* handle (0x0)
	}, ; 1035
	%struct.DSOCacheEntry {
		i64 2619268665, ; hash 0x9c1ede39, from name: aot-System.AppContext
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.16_name, ; name: libaot-System.AppContext.dll.so
		ptr null; void* handle (0x0)
	}, ; 1036
	%struct.DSOCacheEntry {
		i64 2620018659, ; hash 0x9c2a4fe3, from name: System.Private.Uri.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.96_name, ; name: libaot-System.Private.Uri.dll.so
		ptr null; void* handle (0x0)
	}, ; 1037
	%struct.DSOCacheEntry {
		i64 2621774406, ; hash 0x9c451a46, from name: libaot-System.Net.WebSockets.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.90_name, ; name: libaot-System.Net.WebSockets.dll.so
		ptr null; void* handle (0x0)
	}, ; 1038
	%struct.DSOCacheEntry {
		i64 2624367528, ; hash 0x9c6caba8, from name: aot-System.Security.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.140_name, ; name: libaot-System.Security.dll.so
		ptr null; void* handle (0x0)
	}, ; 1039
	%struct.DSOCacheEntry {
		i64 2624644809, ; hash 0x9c70e6c9, from name: Xamarin.AndroidX.DynamicAnimation
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.228_name, ; name: libaot-Xamarin.AndroidX.DynamicAnimation.dll.so
		ptr null; void* handle (0x0)
	}, ; 1040
	%struct.DSOCacheEntry {
		i64 2630231106, ; hash 0x9cc62442, from name: System.Net.ServicePoint.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.84_name, ; name: libaot-System.Net.ServicePoint.dll.so
		ptr null; void* handle (0x0)
	}, ; 1041
	%struct.DSOCacheEntry {
		i64 2630799608, ; hash 0x9cced0f8, from name: libaot-Xamarin.AndroidX.Annotation.Experimental
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.207_name, ; name: libaot-Xamarin.AndroidX.Annotation.Experimental.dll.so
		ptr null; void* handle (0x0)
	}, ; 1042
	%struct.DSOCacheEntry {
		i64 2633051222, ; hash 0x9cf12c56, from name: Xamarin.AndroidX.Lifecycle.LiveData
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.237_name, ; name: libaot-Xamarin.AndroidX.Lifecycle.LiveData.dll.so
		ptr null; void* handle (0x0)
	}, ; 1043
	%struct.DSOCacheEntry {
		i64 2635757924, ; hash 0x9d1a7964, from name: Xamarin.AndroidX.VectorDrawable.Animated.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.265_name, ; name: libaot-Xamarin.AndroidX.VectorDrawable.Animated.dll.so
		ptr null; void* handle (0x0)
	}, ; 1044
	%struct.DSOCacheEntry {
		i64 2637639566, ; hash 0x9d372f8e, from name: libaot-System.IO.FileSystem.Watcher
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.60_name, ; name: libaot-System.IO.FileSystem.Watcher.dll.so
		ptr null; void* handle (0x0)
	}, ; 1045
	%struct.DSOCacheEntry {
		i64 2639209874, ; hash 0x9d4f2592, from name: System.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.174_name, ; name: libaot-System.dll.so
		ptr null; void* handle (0x0)
	}, ; 1046
	%struct.DSOCacheEntry {
		i64 2639724514, ; hash 0x9d56ffe2, from name: libaot-Xamarin.AndroidX.Lifecycle.ViewModelSavedState
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.245_name, ; name: libaot-Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll.so
		ptr null; void* handle (0x0)
	}, ; 1047
	%struct.DSOCacheEntry {
		i64 2639840674, ; hash 0x9d58c5a2, from name: libaot-System.Resources.Writer
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.110_name, ; name: libaot-System.Resources.Writer.dll.so
		ptr null; void* handle (0x0)
	}, ; 1048
	%struct.DSOCacheEntry {
		i64 2641331382, ; hash 0x9d6f84b6, from name: libaot-Xamarin.AndroidX.Lifecycle.Runtime.Ktx.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.242_name, ; name: libaot-Xamarin.AndroidX.Lifecycle.Runtime.Ktx.dll.so
		ptr null; void* handle (0x0)
	}, ; 1049
	%struct.DSOCacheEntry {
		i64 2643896840, ; hash 0x9d96aa08, from name: libaot-System.IO.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.67_name, ; name: libaot-System.IO.dll.so
		ptr null; void* handle (0x0)
	}, ; 1050
	%struct.DSOCacheEntry {
		i64 2646943518, ; hash 0x9dc5271e, from name: libaot-System.Net.Primitives.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.80_name, ; name: libaot-System.Net.Primitives.dll.so
		ptr null; void* handle (0x0)
	}, ; 1051
	%struct.DSOCacheEntry {
		i64 2649719153, ; hash 0x9def8171, from name: aot-System.ServiceProcess
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.142_name, ; name: libaot-System.ServiceProcess.dll.so
		ptr null; void* handle (0x0)
	}, ; 1052
	%struct.DSOCacheEntry {
		i64 2649815287, ; hash 0x9df0f8f7, from name: libaot-MauiApp1
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.9_name, ; name: libaot-MauiApp1.dll.so
		ptr null; void* handle (0x0)
	}, ; 1053
	%struct.DSOCacheEntry {
		i64 2658598962, ; hash 0x9e770032, from name: monosgen-2.0.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.6_name, ; name: libmonosgen-2.0.so
		ptr null; void* handle (0x0)
	}, ; 1054
	%struct.DSOCacheEntry {
		i64 2660798663, ; hash 0x9e9890c7, from name: libaot-System.Runtime.CompilerServices.Unsafe
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.111_name, ; name: libaot-System.Runtime.CompilerServices.Unsafe.dll.so
		ptr null; void* handle (0x0)
	}, ; 1055
	%struct.DSOCacheEntry {
		i64 2663219906, ; hash 0x9ebd82c2, from name: Java.Interop.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.178_name, ; name: libaot-Java.Interop.dll.so
		ptr null; void* handle (0x0)
	}, ; 1056
	%struct.DSOCacheEntry {
		i64 2663391936, ; hash 0x9ec022c0, from name: Xamarin.Android.Glide.DiskLruCache
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.202_name, ; name: libaot-Xamarin.Android.Glide.DiskLruCache.dll.so
		ptr null; void* handle (0x0)
	}, ; 1057
	%struct.DSOCacheEntry {
		i64 2663698177, ; hash 0x9ec4cf01, from name: System.Runtime.Loader
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.119_name, ; name: libaot-System.Runtime.Loader.dll.so
		ptr null; void* handle (0x0)
	}, ; 1058
	%struct.DSOCacheEntry {
		i64 2665531464, ; hash 0x9ee0c848, from name: aot-System.IO.Compression.ZipFile
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.55_name, ; name: libaot-System.IO.Compression.ZipFile.dll.so
		ptr null; void* handle (0x0)
	}, ; 1059
	%struct.DSOCacheEntry {
		i64 2665622720, ; hash 0x9ee22cc0, from name: System.Drawing.Primitives
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.45_name, ; name: libaot-System.Drawing.Primitives.dll.so
		ptr null; void* handle (0x0)
	}, ; 1060
	%struct.DSOCacheEntry {
		i64 2672493382, ; hash 0x9f4b0346, from name: aot-System.Formats.Tar.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.49_name, ; name: libaot-System.Formats.Tar.dll.so
		ptr null; void* handle (0x0)
	}, ; 1061
	%struct.DSOCacheEntry {
		i64 2677175713, ; hash 0x9f9275a1, from name: libaot-Mono.Android.Runtime.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.180_name, ; name: libaot-Mono.Android.Runtime.dll.so
		ptr null; void* handle (0x0)
	}, ; 1062
	%struct.DSOCacheEntry {
		i64 2678716366, ; hash 0x9fa9f7ce, from name: System.Globalization.Calendars.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.50_name, ; name: libaot-System.Globalization.Calendars.dll.so
		ptr null; void* handle (0x0)
	}, ; 1063
	%struct.DSOCacheEntry {
		i64 2678767976, ; hash 0x9faac168, from name: libaot-Microsoft.Extensions.Logging.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.188_name, ; name: libaot-Microsoft.Extensions.Logging.dll.so
		ptr null; void* handle (0x0)
	}, ; 1064
	%struct.DSOCacheEntry {
		i64 2679812724, ; hash 0x9fbab274, from name: libaot-System.Security
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.140_name, ; name: libaot-System.Security.dll.so
		ptr null; void* handle (0x0)
	}, ; 1065
	%struct.DSOCacheEntry {
		i64 2687645316, ; hash 0xa0323684, from name: aot-System.Globalization
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.52_name, ; name: libaot-System.Globalization.dll.so
		ptr null; void* handle (0x0)
	}, ; 1066
	%struct.DSOCacheEntry {
		i64 2692189915, ; hash 0xa0778edb, from name: libaot-Xamarin.Google.Android.Material.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.271_name, ; name: libaot-Xamarin.Google.Android.Material.dll.so
		ptr null; void* handle (0x0)
	}, ; 1067
	%struct.DSOCacheEntry {
		i64 2692951224, ; hash 0xa0832cb8, from name: libaot-Xamarin.AndroidX.Navigation.UI
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.251_name, ; name: libaot-Xamarin.AndroidX.Navigation.UI.dll.so
		ptr null; void* handle (0x0)
	}, ; 1068
	%struct.DSOCacheEntry {
		i64 2701096212, ; hash 0xa0ff7514, from name: Xamarin.AndroidX.Tracing.Tracing
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.262_name, ; name: libaot-Xamarin.AndroidX.Tracing.Tracing.dll.so
		ptr null; void* handle (0x0)
	}, ; 1069
	%struct.DSOCacheEntry {
		i64 2702877437, ; hash 0xa11aa2fd, from name: aot-Xamarin.AndroidX.VersionedParcelable.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.266_name, ; name: libaot-Xamarin.AndroidX.VersionedParcelable.dll.so
		ptr null; void* handle (0x0)
	}, ; 1070
	%struct.DSOCacheEntry {
		i64 2703738807, ; hash 0xa127c7b7, from name: libaot-WindowsBase.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.175_name, ; name: libaot-WindowsBase.dll.so
		ptr null; void* handle (0x0)
	}, ; 1071
	%struct.DSOCacheEntry {
		i64 2705630008, ; hash 0xa144a338, from name: aot-System.Drawing.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.46_name, ; name: libaot-System.Drawing.dll.so
		ptr null; void* handle (0x0)
	}, ; 1072
	%struct.DSOCacheEntry {
		i64 2708530770, ; hash 0xa170e652, from name: libaot-System.Text.Json.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.147_name, ; name: libaot-System.Text.Json.dll.so
		ptr null; void* handle (0x0)
	}, ; 1073
	%struct.DSOCacheEntry {
		i64 2709214157, ; hash 0xa17b53cd, from name: libaot-System.Diagnostics.Contracts
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.35_name, ; name: libaot-System.Diagnostics.Contracts.dll.so
		ptr null; void* handle (0x0)
	}, ; 1074
	%struct.DSOCacheEntry {
		i64 2709717763, ; hash 0xa1830303, from name: aot-Mono.Android
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.181_name, ; name: libaot-Mono.Android.dll.so
		ptr null; void* handle (0x0)
	}, ; 1075
	%struct.DSOCacheEntry {
		i64 2709958422, ; hash 0xa186af16, from name: Microsoft.Extensions.Logging.Debug.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.190_name, ; name: libaot-Microsoft.Extensions.Logging.Debug.dll.so
		ptr null; void* handle (0x0)
	}, ; 1076
	%struct.DSOCacheEntry {
		i64 2712437991, ; hash 0xa1ac84e7, from name: libaot-Xamarin.AndroidX.Arch.Core.Common.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.211_name, ; name: libaot-Xamarin.AndroidX.Arch.Core.Common.dll.so
		ptr null; void* handle (0x0)
	}, ; 1077
	%struct.DSOCacheEntry {
		i64 2712868754, ; hash 0xa1b31792, from name: libaot-System.Globalization.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.52_name, ; name: libaot-System.Globalization.dll.so
		ptr null; void* handle (0x0)
	}, ; 1078
	%struct.DSOCacheEntry {
		i64 2713623161, ; hash 0xa1be9a79, from name: aot-Xamarin.Google.Android.Material
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.271_name, ; name: libaot-Xamarin.Google.Android.Material.dll.so
		ptr null; void* handle (0x0)
	}, ; 1079
	%struct.DSOCacheEntry {
		i64 2717744543, ; hash 0xa1fd7d9f, from name: System.Security.Claims
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.128_name, ; name: libaot-System.Security.Claims.dll.so
		ptr null; void* handle (0x0)
	}, ; 1080
	%struct.DSOCacheEntry {
		i64 2722617920, ; hash 0xa247da40, from name: aot-Microsoft.Extensions.Primitives
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.192_name, ; name: libaot-Microsoft.Extensions.Primitives.dll.so
		ptr null; void* handle (0x0)
	}, ; 1081
	%struct.DSOCacheEntry {
		i64 2723453335, ; hash 0xa2549997, from name: System.Security.Principal.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.138_name, ; name: libaot-System.Security.Principal.dll.so
		ptr null; void* handle (0x0)
	}, ; 1082
	%struct.DSOCacheEntry {
		i64 2727849096, ; hash 0xa297ac88, from name: aot-System.Formats.Asn1.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.48_name, ; name: libaot-System.Formats.Asn1.dll.so
		ptr null; void* handle (0x0)
	}, ; 1083
	%struct.DSOCacheEntry {
		i64 2731646376, ; hash 0xa2d19da8, from name: aot-System.Security.Claims
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.128_name, ; name: libaot-System.Security.Claims.dll.so
		ptr null; void* handle (0x0)
	}, ; 1084
	%struct.DSOCacheEntry {
		i64 2732626843, ; hash 0xa2e0939b, from name: Xamarin.AndroidX.Activity
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.204_name, ; name: libaot-Xamarin.AndroidX.Activity.dll.so
		ptr null; void* handle (0x0)
	}, ; 1085
	%struct.DSOCacheEntry {
		i64 2732977029, ; hash 0xa2e5eb85, from name: libaot-Xamarin.AndroidX.DrawerLayout.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.227_name, ; name: libaot-Xamarin.AndroidX.DrawerLayout.dll.so
		ptr null; void* handle (0x0)
	}, ; 1086
	%struct.DSOCacheEntry {
		i64 2734038450, ; hash 0xa2f61db2, from name: aot-Xamarin.Jetbrains.Annotations
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.276_name, ; name: libaot-Xamarin.Jetbrains.Annotations.dll.so
		ptr null; void* handle (0x0)
	}, ; 1087
	%struct.DSOCacheEntry {
		i64 2735172069, ; hash 0xa30769e5, from name: System.Threading.Channels
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.149_name, ; name: libaot-System.Threading.Channels.dll.so
		ptr null; void* handle (0x0)
	}, ; 1088
	%struct.DSOCacheEntry {
		i64 2735279357, ; hash 0xa3090cfd, from name: Xamarin.KotlinX.Coroutines.Core.Jvm.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.282_name, ; name: libaot-Xamarin.KotlinX.Coroutines.Core.Jvm.dll.so
		ptr null; void* handle (0x0)
	}, ; 1089
	%struct.DSOCacheEntry {
		i64 2740948882, ; hash 0xa35f8f92, from name: System.IO.Pipes.AccessControl
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.64_name, ; name: libaot-System.IO.Pipes.AccessControl.dll.so
		ptr null; void* handle (0x0)
	}, ; 1090
	%struct.DSOCacheEntry {
		i64 2743040662, ; hash 0xa37f7a96, from name: aot-Xamarin.AndroidX.Transition.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.263_name, ; name: libaot-Xamarin.AndroidX.Transition.dll.so
		ptr null; void* handle (0x0)
	}, ; 1091
	%struct.DSOCacheEntry {
		i64 2743508320, ; hash 0xa3869d60, from name: aot-Microsoft.Maui.Controls.Xaml.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.195_name, ; name: libaot-Microsoft.Maui.Controls.Xaml.dll.so
		ptr null; void* handle (0x0)
	}, ; 1092
	%struct.DSOCacheEntry {
		i64 2746397398, ; hash 0xa3b2b2d6, from name: libaot-Newtonsoft.Json
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.199_name, ; name: libaot-Newtonsoft.Json.dll.so
		ptr null; void* handle (0x0)
	}, ; 1093
	%struct.DSOCacheEntry {
		i64 2748088231, ; hash 0xa3cc7fa7, from name: System.Runtime.InteropServices.JavaScript
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.115_name, ; name: libaot-System.Runtime.InteropServices.JavaScript.dll.so
		ptr null; void* handle (0x0)
	}, ; 1094
	%struct.DSOCacheEntry {
		i64 2754205936, ; hash 0xa429d8f0, from name: System.Net.WebSockets.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.90_name, ; name: libaot-System.Net.WebSockets.dll.so
		ptr null; void* handle (0x0)
	}, ; 1095
	%struct.DSOCacheEntry {
		i64 2756708150, ; hash 0xa4500736, from name: aot-Xamarin.AndroidX.ViewPager2.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.268_name, ; name: libaot-Xamarin.AndroidX.ViewPager2.dll.so
		ptr null; void* handle (0x0)
	}, ; 1096
	%struct.DSOCacheEntry {
		i64 2758225723, ; hash 0xa4672f3b, from name: Microsoft.Maui.Controls.Xaml
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.195_name, ; name: libaot-Microsoft.Maui.Controls.Xaml.dll.so
		ptr null; void* handle (0x0)
	}, ; 1097
	%struct.DSOCacheEntry {
		i64 2760088126, ; hash 0xa4839a3e, from name: libaot-Xamarin.KotlinX.Coroutines.Core.Jvm.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.282_name, ; name: libaot-Xamarin.KotlinX.Coroutines.Core.Jvm.dll.so
		ptr null; void* handle (0x0)
	}, ; 1098
	%struct.DSOCacheEntry {
		i64 2767247566, ; hash 0xa4f0d8ce, from name: libaot-System.Data.Common.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.32_name, ; name: libaot-System.Data.Common.dll.so
		ptr null; void* handle (0x0)
	}, ; 1099
	%struct.DSOCacheEntry {
		i64 2771312189, ; hash 0xa52ede3d, from name: aot-Xamarin.AndroidX.CoordinatorLayout
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.220_name, ; name: libaot-Xamarin.AndroidX.CoordinatorLayout.dll.so
		ptr null; void* handle (0x0)
	}, ; 1100
	%struct.DSOCacheEntry {
		i64 2772539004, ; hash 0xa541967c, from name: libaot-System.Runtime.Handles.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.114_name, ; name: libaot-System.Runtime.Handles.dll.so
		ptr null; void* handle (0x0)
	}, ; 1101
	%struct.DSOCacheEntry {
		i64 2773716899, ; hash 0xa5538fa3, from name: aot-Xamarin.Android.Glide
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.200_name, ; name: libaot-Xamarin.Android.Glide.dll.so
		ptr null; void* handle (0x0)
	}, ; 1102
	%struct.DSOCacheEntry {
		i64 2776424074, ; hash 0xa57cde8a, from name: libaot-Xamarin.AndroidX.Concurrent.Futures.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.217_name, ; name: libaot-Xamarin.AndroidX.Concurrent.Futures.dll.so
		ptr null; void* handle (0x0)
	}, ; 1103
	%struct.DSOCacheEntry {
		i64 2781643101, ; hash 0xa5cc815d, from name: libaot-Microsoft.Win32.Registry
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.15_name, ; name: libaot-Microsoft.Win32.Registry.dll.so
		ptr null; void* handle (0x0)
	}, ; 1104
	%struct.DSOCacheEntry {
		i64 2784608689, ; hash 0xa5f9c1b1, from name: libaot-System.Formats.Tar
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.49_name, ; name: libaot-System.Formats.Tar.dll.so
		ptr null; void* handle (0x0)
	}, ; 1105
	%struct.DSOCacheEntry {
		i64 2785228889, ; hash 0xa6033859, from name: libaot-System.Windows.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.164_name, ; name: libaot-System.Windows.dll.so
		ptr null; void* handle (0x0)
	}, ; 1106
	%struct.DSOCacheEntry {
		i64 2786535683, ; hash 0xa6172903, from name: Xamarin.AndroidX.Lifecycle.Runtime.Ktx.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.242_name, ; name: libaot-Xamarin.AndroidX.Lifecycle.Runtime.Ktx.dll.so
		ptr null; void* handle (0x0)
	}, ; 1107
	%struct.DSOCacheEntry {
		i64 2786895818, ; hash 0xa61ca7ca, from name: libaot-System.Threading.Timer.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.157_name, ; name: libaot-System.Threading.Timer.dll.so
		ptr null; void* handle (0x0)
	}, ; 1108
	%struct.DSOCacheEntry {
		i64 2788267156, ; hash 0xa6319494, from name: libaot-System.Threading.Channels.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.149_name, ; name: libaot-System.Threading.Channels.dll.so
		ptr null; void* handle (0x0)
	}, ; 1109
	%struct.DSOCacheEntry {
		i64 2790931819, ; hash 0xa65a3d6b, from name: aot-System.Windows
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.164_name, ; name: libaot-System.Windows.dll.so
		ptr null; void* handle (0x0)
	}, ; 1110
	%struct.DSOCacheEntry {
		i64 2793040190, ; hash 0xa67a693e, from name: libaot-Xamarin.AndroidX.ExifInterface
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.231_name, ; name: libaot-Xamarin.AndroidX.ExifInterface.dll.so
		ptr null; void* handle (0x0)
	}, ; 1111
	%struct.DSOCacheEntry {
		i64 2793359899, ; hash 0xa67f4a1b, from name: libaot-System.Globalization.Calendars.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.50_name, ; name: libaot-System.Globalization.Calendars.dll.so
		ptr null; void* handle (0x0)
	}, ; 1112
	%struct.DSOCacheEntry {
		i64 2796259437, ; hash 0xa6ab886d, from name: System.Security.Cryptography.Algorithms.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.129_name, ; name: libaot-System.Security.Cryptography.Algorithms.dll.so
		ptr null; void* handle (0x0)
	}, ; 1113
	%struct.DSOCacheEntry {
		i64 2800604037, ; hash 0xa6edd385, from name: libaot-System.IO.FileSystem.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.61_name, ; name: libaot-System.IO.FileSystem.dll.so
		ptr null; void* handle (0x0)
	}, ; 1114
	%struct.DSOCacheEntry {
		i64 2801831435, ; hash 0xa7008e0b, from name: Microsoft.Maui.Graphics
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.198_name, ; name: libaot-Microsoft.Maui.Graphics.dll.so
		ptr null; void* handle (0x0)
	}, ; 1115
	%struct.DSOCacheEntry {
		i64 2803929169, ; hash 0xa7209051, from name: Xamarin.AndroidX.CustomView.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.224_name, ; name: libaot-Xamarin.AndroidX.CustomView.dll.so
		ptr null; void* handle (0x0)
	}, ; 1116
	%struct.DSOCacheEntry {
		i64 2811243932, ; hash 0xa7902d9c, from name: libaot-Microsoft.Extensions.Options
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.191_name, ; name: libaot-Microsoft.Extensions.Options.dll.so
		ptr null; void* handle (0x0)
	}, ; 1117
	%struct.DSOCacheEntry {
		i64 2811640309, ; hash 0xa79639f5, from name: aot-Xamarin.AndroidX.SwipeRefreshLayout
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.261_name, ; name: libaot-Xamarin.AndroidX.SwipeRefreshLayout.dll.so
		ptr null; void* handle (0x0)
	}, ; 1118
	%struct.DSOCacheEntry {
		i64 2813574896, ; hash 0xa7b3bef0, from name: aot-System.Runtime.InteropServices.JavaScript
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.115_name, ; name: libaot-System.Runtime.InteropServices.JavaScript.dll.so
		ptr null; void* handle (0x0)
	}, ; 1119
	%struct.DSOCacheEntry {
		i64 2816977087, ; hash 0xa7e7a8bf, from name: libaot-Xamarin.AndroidX.Fragment.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.232_name, ; name: libaot-Xamarin.AndroidX.Fragment.dll.so
		ptr null; void* handle (0x0)
	}, ; 1120
	%struct.DSOCacheEntry {
		i64 2820403756, ; hash 0xa81bf22c, from name: Microsoft.Extensions.Logging.Abstractions.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.189_name, ; name: libaot-Microsoft.Extensions.Logging.Abstractions.dll.so
		ptr null; void* handle (0x0)
	}, ; 1121
	%struct.DSOCacheEntry {
		i64 2821294376, ; hash 0xa8298928, from name: Xamarin.AndroidX.ResourceInspection.Annotation
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.255_name, ; name: libaot-Xamarin.AndroidX.ResourceInspection.Annotation.dll.so
		ptr null; void* handle (0x0)
	}, ; 1122
	%struct.DSOCacheEntry {
		i64 2824502124, ; hash 0xa85a7b6c, from name: System.Xml.XmlDocument
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.171_name, ; name: libaot-System.Xml.XmlDocument.dll.so
		ptr null; void* handle (0x0)
	}, ; 1123
	%struct.DSOCacheEntry {
		i64 2825181011, ; hash 0xa864d753, from name: libaot-Xamarin.AndroidX.ProfileInstaller.ProfileInstaller
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.253_name, ; name: libaot-Xamarin.AndroidX.ProfileInstaller.ProfileInstaller.dll.so
		ptr null; void* handle (0x0)
	}, ; 1124
	%struct.DSOCacheEntry {
		i64 2825784484, ; hash 0xa86e0ca4, from name: aot-System.Net.WebHeaderCollection
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.87_name, ; name: libaot-System.Net.WebHeaderCollection.dll.so
		ptr null; void* handle (0x0)
	}, ; 1125
	%struct.DSOCacheEntry {
		i64 2829085603, ; hash 0xa8a06ba3, from name: aot-System.Security.AccessControl
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.127_name, ; name: libaot-System.Security.AccessControl.dll.so
		ptr null; void* handle (0x0)
	}, ; 1126
	%struct.DSOCacheEntry {
		i64 2829863685, ; hash 0xa8ac4b05, from name: libaot-System.Threading.Tasks
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.154_name, ; name: libaot-System.Threading.Tasks.dll.so
		ptr null; void* handle (0x0)
	}, ; 1127
	%struct.DSOCacheEntry {
		i64 2831113488, ; hash 0xa8bf5d10, from name: libaot-System.Collections.Specialized.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.21_name, ; name: libaot-System.Collections.Specialized.dll.so
		ptr null; void* handle (0x0)
	}, ; 1128
	%struct.DSOCacheEntry {
		i64 2831658147, ; hash 0xa8c7aca3, from name: aot-System.Runtime.Loader.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.119_name, ; name: libaot-System.Runtime.Loader.dll.so
		ptr null; void* handle (0x0)
	}, ; 1129
	%struct.DSOCacheEntry {
		i64 2840175643, ; hash 0xa949a41b, from name: aot-Microsoft.Extensions.Logging.Abstractions.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.189_name, ; name: libaot-Microsoft.Extensions.Logging.Abstractions.dll.so
		ptr null; void* handle (0x0)
	}, ; 1130
	%struct.DSOCacheEntry {
		i64 2843399466, ; hash 0xa97ad52a, from name: Microsoft.VisualBasic.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.13_name, ; name: libaot-Microsoft.VisualBasic.dll.so
		ptr null; void* handle (0x0)
	}, ; 1131
	%struct.DSOCacheEntry {
		i64 2843443372, ; hash 0xa97b80ac, from name: aot-System.Console.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.30_name, ; name: libaot-System.Console.dll.so
		ptr null; void* handle (0x0)
	}, ; 1132
	%struct.DSOCacheEntry {
		i64 2845252350, ; hash 0xa9971afe, from name: libaot-System.Security.Principal.Windows.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.137_name, ; name: libaot-System.Security.Principal.Windows.dll.so
		ptr null; void* handle (0x0)
	}, ; 1133
	%struct.DSOCacheEntry {
		i64 2847617418, ; hash 0xa9bb318a, from name: Xamarin.AndroidX.Lifecycle.LiveData.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.237_name, ; name: libaot-Xamarin.AndroidX.Lifecycle.LiveData.dll.so
		ptr null; void* handle (0x0)
	}, ; 1134
	%struct.DSOCacheEntry {
		i64 2853208004, ; hash 0xaa107fc4, from name: Xamarin.AndroidX.ViewPager
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.267_name, ; name: libaot-Xamarin.AndroidX.ViewPager.dll.so
		ptr null; void* handle (0x0)
	}, ; 1135
	%struct.DSOCacheEntry {
		i64 2853773753, ; hash 0xaa1921b9, from name: libaot-System.Text.Json
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.147_name, ; name: libaot-System.Text.Json.dll.so
		ptr null; void* handle (0x0)
	}, ; 1136
	%struct.DSOCacheEntry {
		i64 2855708567, ; hash 0xaa36a797, from name: Xamarin.AndroidX.Transition
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.263_name, ; name: libaot-Xamarin.AndroidX.Transition.dll.so
		ptr null; void* handle (0x0)
	}, ; 1137
	%struct.DSOCacheEntry {
		i64 2857417815, ; hash 0xaa50bc57, from name: aot-System.Security.Claims.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.128_name, ; name: libaot-System.Security.Claims.dll.so
		ptr null; void* handle (0x0)
	}, ; 1138
	%struct.DSOCacheEntry {
		i64 2861189240, ; hash 0xaa8a4878, from name: Microsoft.Maui.Essentials
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.197_name, ; name: libaot-Microsoft.Maui.Essentials.dll.so
		ptr null; void* handle (0x0)
	}, ; 1139
	%struct.DSOCacheEntry {
		i64 2866113648, ; hash 0xaad56c70, from name: libaot-Microsoft.Maui.Controls.Compatibility.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.193_name, ; name: libaot-Microsoft.Maui.Controls.Compatibility.dll.so
		ptr null; void* handle (0x0)
	}, ; 1140
	%struct.DSOCacheEntry {
		i64 2867804349, ; hash 0xaaef38bd, from name: libaot-System.IO.UnmanagedMemoryStream.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.66_name, ; name: libaot-System.IO.UnmanagedMemoryStream.dll.so
		ptr null; void* handle (0x0)
	}, ; 1141
	%struct.DSOCacheEntry {
		i64 2877106647, ; hash 0xab7d29d7, from name: System.Runtime.InteropServices.JavaScript.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.115_name, ; name: libaot-System.Runtime.InteropServices.JavaScript.dll.so
		ptr null; void* handle (0x0)
	}, ; 1142
	%struct.DSOCacheEntry {
		i64 2880460441, ; hash 0xabb05699, from name: aot-System.Threading.Overlapped.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.150_name, ; name: libaot-System.Threading.Overlapped.dll.so
		ptr null; void* handle (0x0)
	}, ; 1143
	%struct.DSOCacheEntry {
		i64 2882500561, ; hash 0xabcf77d1, from name: System.Security.Cryptography.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.136_name, ; name: libaot-System.Security.Cryptography.dll.so
		ptr null; void* handle (0x0)
	}, ; 1144
	%struct.DSOCacheEntry {
		i64 2884993177, ; hash 0xabf58099, from name: Xamarin.AndroidX.ExifInterface
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.231_name, ; name: libaot-Xamarin.AndroidX.ExifInterface.dll.so
		ptr null; void* handle (0x0)
	}, ; 1145
	%struct.DSOCacheEntry {
		i64 2886400886, ; hash 0xac0afb76, from name: aot-System.Threading.Channels.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.149_name, ; name: libaot-System.Threading.Channels.dll.so
		ptr null; void* handle (0x0)
	}, ; 1146
	%struct.DSOCacheEntry {
		i64 2892006532, ; hash 0xac608484, from name: aot-Xamarin.AndroidX.Lifecycle.Process
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.240_name, ; name: libaot-Xamarin.AndroidX.Lifecycle.Process.dll.so
		ptr null; void* handle (0x0)
	}, ; 1147
	%struct.DSOCacheEntry {
		i64 2894204443, ; hash 0xac820e1b, from name: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.238_name, ; name: libaot-Xamarin.AndroidX.Lifecycle.LiveData.Core.dll.so
		ptr null; void* handle (0x0)
	}, ; 1148
	%struct.DSOCacheEntry {
		i64 2898704984, ; hash 0xacc6ba58, from name: Microsoft.Win32.Primitives.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.14_name, ; name: libaot-Microsoft.Win32.Primitives.dll.so
		ptr null; void* handle (0x0)
	}, ; 1149
	%struct.DSOCacheEntry {
		i64 2898773456, ; hash 0xacc7c5d0, from name: Xamarin.AndroidX.Emoji2.ViewsHelper.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.230_name, ; name: libaot-Xamarin.AndroidX.Emoji2.ViewsHelper.dll.so
		ptr null; void* handle (0x0)
	}, ; 1150
	%struct.DSOCacheEntry {
		i64 2899753641, ; hash 0xacd6baa9, from name: System.IO.UnmanagedMemoryStream
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.66_name, ; name: libaot-System.IO.UnmanagedMemoryStream.dll.so
		ptr null; void* handle (0x0)
	}, ; 1151
	%struct.DSOCacheEntry {
		i64 2901442782, ; hash 0xacf080de, from name: System.Reflection
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.107_name, ; name: libaot-System.Reflection.dll.so
		ptr null; void* handle (0x0)
	}, ; 1152
	%struct.DSOCacheEntry {
		i64 2905256141, ; hash 0xad2ab0cd, from name: System.Threading.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.158_name, ; name: libaot-System.Threading.dll.so
		ptr null; void* handle (0x0)
	}, ; 1153
	%struct.DSOCacheEntry {
		i64 2906676306, ; hash 0xad405c52, from name: libaot-System.Data.DataSetExtensions
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.33_name, ; name: libaot-System.Data.DataSetExtensions.dll.so
		ptr null; void* handle (0x0)
	}, ; 1154
	%struct.DSOCacheEntry {
		i64 2907369062, ; hash 0xad4aee66, from name: libaot-Xamarin.AndroidX.CursorAdapter
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.223_name, ; name: libaot-Xamarin.AndroidX.CursorAdapter.dll.so
		ptr null; void* handle (0x0)
	}, ; 1155
	%struct.DSOCacheEntry {
		i64 2908673873, ; hash 0xad5ed751, from name: aot-System.Text.Encoding.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.145_name, ; name: libaot-System.Text.Encoding.dll.so
		ptr null; void* handle (0x0)
	}, ; 1156
	%struct.DSOCacheEntry {
		i64 2909740682, ; hash 0xad6f1e8a, from name: System.Private.CoreLib
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.283_name, ; name: libaot-System.Private.CoreLib.dll.so
		ptr null; void* handle (0x0)
	}, ; 1157
	%struct.DSOCacheEntry {
		i64 2910314044, ; hash 0xad77de3c, from name: Xamarin.Android.Glide.DiskLruCache.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.202_name, ; name: libaot-Xamarin.Android.Glide.DiskLruCache.dll.so
		ptr null; void* handle (0x0)
	}, ; 1158
	%struct.DSOCacheEntry {
		i64 2911927123, ; hash 0xad907b53, from name: libaot-System.Runtime.Numerics.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.120_name, ; name: libaot-System.Runtime.Numerics.dll.so
		ptr null; void* handle (0x0)
	}, ; 1159
	%struct.DSOCacheEntry {
		i64 2914223392, ; hash 0xadb38520, from name: aot-Xamarin.Android.Glide.GifDecoder.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.203_name, ; name: libaot-Xamarin.Android.Glide.GifDecoder.dll.so
		ptr null; void* handle (0x0)
	}, ; 1160
	%struct.DSOCacheEntry {
		i64 2914559772, ; hash 0xadb8a71c, from name: aot-System.Configuration.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.29_name, ; name: libaot-System.Configuration.dll.so
		ptr null; void* handle (0x0)
	}, ; 1161
	%struct.DSOCacheEntry {
		i64 2921177496, ; hash 0xae1da198, from name: aot-System.Xml.Serialization
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.167_name, ; name: libaot-System.Xml.Serialization.dll.so
		ptr null; void* handle (0x0)
	}, ; 1162
	%struct.DSOCacheEntry {
		i64 2922463832, ; hash 0xae314258, from name: libaot-Xamarin.Android.Glide.Annotations.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.201_name, ; name: libaot-Xamarin.Android.Glide.Annotations.dll.so
		ptr null; void* handle (0x0)
	}, ; 1163
	%struct.DSOCacheEntry {
		i64 2932555209, ; hash 0xaecb3dc9, from name: libaot-System.Security.AccessControl
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.127_name, ; name: libaot-System.Security.AccessControl.dll.so
		ptr null; void* handle (0x0)
	}, ; 1164
	%struct.DSOCacheEntry {
		i64 2932769875, ; hash 0xaece8453, from name: libaot-Xamarin.KotlinX.Coroutines.Core.Jvm
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.282_name, ; name: libaot-Xamarin.KotlinX.Coroutines.Core.Jvm.dll.so
		ptr null; void* handle (0x0)
	}, ; 1165
	%struct.DSOCacheEntry {
		i64 2936416060, ; hash 0xaf06273c, from name: System.Resources.Reader
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.108_name, ; name: libaot-System.Resources.Reader.dll.so
		ptr null; void* handle (0x0)
	}, ; 1166
	%struct.DSOCacheEntry {
		i64 2938740861, ; hash 0xaf29a07d, from name: libSystem.IO.Compression.Native.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.0_name, ; name: libSystem.IO.Compression.Native.so
		ptr null; void* handle (0x0)
	}, ; 1167
	%struct.DSOCacheEntry {
		i64 2939899433, ; hash 0xaf3b4e29, from name: System.ComponentModel.Annotations.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.23_name, ; name: libaot-System.ComponentModel.Annotations.dll.so
		ptr null; void* handle (0x0)
	}, ; 1168
	%struct.DSOCacheEntry {
		i64 2942453041, ; hash 0xaf624531, from name: System.Xml.XPath.XDocument
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.169_name, ; name: libaot-System.Xml.XPath.XDocument.dll.so
		ptr null; void* handle (0x0)
	}, ; 1169
	%struct.DSOCacheEntry {
		i64 2942668026, ; hash 0xaf658cfa, from name: aot-Microsoft.Maui.Controls.Compatibility.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.193_name, ; name: libaot-Microsoft.Maui.Controls.Compatibility.dll.so
		ptr null; void* handle (0x0)
	}, ; 1170
	%struct.DSOCacheEntry {
		i64 2943255930, ; hash 0xaf6e857a, from name: libaot-System.IO.FileSystem.DriveInfo
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.58_name, ; name: libaot-System.IO.FileSystem.DriveInfo.dll.so
		ptr null; void* handle (0x0)
	}, ; 1171
	%struct.DSOCacheEntry {
		i64 2945162751, ; hash 0xaf8b9dff, from name: System.Collections.NonGeneric.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.20_name, ; name: libaot-System.Collections.NonGeneric.dll.so
		ptr null; void* handle (0x0)
	}, ; 1172
	%struct.DSOCacheEntry {
		i64 2945545151, ; hash 0xaf9173bf, from name: libaot-Xamarin.Jetbrains.Annotations.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.276_name, ; name: libaot-Xamarin.Jetbrains.Annotations.dll.so
		ptr null; void* handle (0x0)
	}, ; 1173
	%struct.DSOCacheEntry {
		i64 2946914855, ; hash 0xafa65a27, from name: libaot-System.Configuration
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.29_name, ; name: libaot-System.Configuration.dll.so
		ptr null; void* handle (0x0)
	}, ; 1174
	%struct.DSOCacheEntry {
		i64 2950129294, ; hash 0xafd7668e, from name: aot-Xamarin.AndroidX.Activity.Ktx
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.205_name, ; name: libaot-Xamarin.AndroidX.Activity.Ktx.dll.so
		ptr null; void* handle (0x0)
	}, ; 1175
	%struct.DSOCacheEntry {
		i64 2950894636, ; hash 0xafe3142c, from name: libSystem.IO.Compression.Native
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.0_name, ; name: libSystem.IO.Compression.Native.so
		ptr null; void* handle (0x0)
	}, ; 1176
	%struct.DSOCacheEntry {
		i64 2951189309, ; hash 0xafe7933d, from name: aot-Microsoft.Maui
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.196_name, ; name: libaot-Microsoft.Maui.dll.so
		ptr null; void* handle (0x0)
	}, ; 1177
	%struct.DSOCacheEntry {
		i64 2954802633, ; hash 0xb01eb5c9, from name: libaot-System.Transactions.Local
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.159_name, ; name: libaot-System.Transactions.Local.dll.so
		ptr null; void* handle (0x0)
	}, ; 1178
	%struct.DSOCacheEntry {
		i64 2955414144, ; hash 0xb0280a80, from name: aot-System.Core.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.31_name, ; name: libaot-System.Core.dll.so
		ptr null; void* handle (0x0)
	}, ; 1179
	%struct.DSOCacheEntry {
		i64 2955441144, ; hash 0xb02873f8, from name: libaot-Xamarin.AndroidX.Annotation.Experimental.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.207_name, ; name: libaot-Xamarin.AndroidX.Annotation.Experimental.dll.so
		ptr null; void* handle (0x0)
	}, ; 1180
	%struct.DSOCacheEntry {
		i64 2955774575, ; hash 0xb02d8a6f, from name: aot-System.Net.Http.Json.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.73_name, ; name: libaot-System.Net.Http.Json.dll.so
		ptr null; void* handle (0x0)
	}, ; 1181
	%struct.DSOCacheEntry {
		i64 2965141360, ; hash 0xb0bc7770, from name: aot-Xamarin.AndroidX.SwipeRefreshLayout.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.261_name, ; name: libaot-Xamarin.AndroidX.SwipeRefreshLayout.dll.so
		ptr null; void* handle (0x0)
	}, ; 1182
	%struct.DSOCacheEntry {
		i64 2967395179, ; hash 0xb0dedb6b, from name: libaot-Microsoft.Extensions.DependencyInjection.Abstractions.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.187_name, ; name: libaot-Microsoft.Extensions.DependencyInjection.Abstractions.dll.so
		ptr null; void* handle (0x0)
	}, ; 1183
	%struct.DSOCacheEntry {
		i64 2968338931, ; hash 0xb0ed41f3, from name: System.Security.Principal.Windows
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.137_name, ; name: libaot-System.Security.Principal.Windows.dll.so
		ptr null; void* handle (0x0)
	}, ; 1184
	%struct.DSOCacheEntry {
		i64 2968962103, ; hash 0xb0f6c437, from name: Xamarin.AndroidX.Navigation.Common.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.248_name, ; name: libaot-Xamarin.AndroidX.Navigation.Common.dll.so
		ptr null; void* handle (0x0)
	}, ; 1185
	%struct.DSOCacheEntry {
		i64 2974011576, ; hash 0xb143d0b8, from name: aot-Xamarin.AndroidX.AppCompat.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.209_name, ; name: libaot-Xamarin.AndroidX.AppCompat.dll.so
		ptr null; void* handle (0x0)
	}, ; 1186
	%struct.DSOCacheEntry {
		i64 2978675010, ; hash 0xb18af942, from name: Xamarin.AndroidX.DrawerLayout
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.227_name, ; name: libaot-Xamarin.AndroidX.DrawerLayout.dll.so
		ptr null; void* handle (0x0)
	}, ; 1187
	%struct.DSOCacheEntry {
		i64 2980629364, ; hash 0xb1a8cb74, from name: libaot-Xamarin.AndroidX.AppCompat.AppCompatResources
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.210_name, ; name: libaot-Xamarin.AndroidX.AppCompat.AppCompatResources.dll.so
		ptr null; void* handle (0x0)
	}, ; 1188
	%struct.DSOCacheEntry {
		i64 2982794884, ; hash 0xb1c9d684, from name: libaot-Microsoft.Extensions.Configuration.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.184_name, ; name: libaot-Microsoft.Extensions.Configuration.dll.so
		ptr null; void* handle (0x0)
	}, ; 1189
	%struct.DSOCacheEntry {
		i64 2984454369, ; hash 0xb1e328e1, from name: aot-Xamarin.AndroidX.Collection.Ktx.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.216_name, ; name: libaot-Xamarin.AndroidX.Collection.Ktx.dll.so
		ptr null; void* handle (0x0)
	}, ; 1190
	%struct.DSOCacheEntry {
		i64 2985735645, ; hash 0xb1f6b5dd, from name: aot-System.Xml.ReaderWriter.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.166_name, ; name: libaot-System.Xml.ReaderWriter.dll.so
		ptr null; void* handle (0x0)
	}, ; 1191
	%struct.DSOCacheEntry {
		i64 2987169908, ; hash 0xb20c9874, from name: Xamarin.Google.ErrorProne.Annotations.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.274_name, ; name: libaot-Xamarin.Google.ErrorProne.Annotations.dll.so
		ptr null; void* handle (0x0)
	}, ; 1192
	%struct.DSOCacheEntry {
		i64 2987532451, ; hash 0xb21220a3, from name: Xamarin.AndroidX.Security.SecurityCrypto
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.258_name, ; name: libaot-Xamarin.AndroidX.Security.SecurityCrypto.dll.so
		ptr null; void* handle (0x0)
	}, ; 1193
	%struct.DSOCacheEntry {
		i64 2994111342, ; hash 0xb276836e, from name: aot-System.Xml.XDocument.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.168_name, ; name: libaot-System.Xml.XDocument.dll.so
		ptr null; void* handle (0x0)
	}, ; 1194
	%struct.DSOCacheEntry {
		i64 2994394794, ; hash 0xb27ad6aa, from name: libaot-Xamarin.AndroidX.Lifecycle.Runtime.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.241_name, ; name: libaot-Xamarin.AndroidX.Lifecycle.Runtime.dll.so
		ptr null; void* handle (0x0)
	}, ; 1195
	%struct.DSOCacheEntry {
		i64 3001057152, ; hash 0xb2e07f80, from name: aot-System.Threading.Tasks
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.154_name, ; name: libaot-System.Threading.Tasks.dll.so
		ptr null; void* handle (0x0)
	}, ; 1196
	%struct.DSOCacheEntry {
		i64 3001924102, ; hash 0xb2edba06, from name: System.Runtime.Serialization.Xml.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.124_name, ; name: libaot-System.Runtime.Serialization.Xml.dll.so
		ptr null; void* handle (0x0)
	}, ; 1197
	%struct.DSOCacheEntry {
		i64 3002033339, ; hash 0xb2ef64bb, from name: aot-Microsoft.CSharp
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.11_name, ; name: libaot-Microsoft.CSharp.dll.so
		ptr null; void* handle (0x0)
	}, ; 1198
	%struct.DSOCacheEntry {
		i64 3002767351, ; hash 0xb2fa97f7, from name: libaot-System.Linq.Parallel
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.69_name, ; name: libaot-System.Linq.Parallel.dll.so
		ptr null; void* handle (0x0)
	}, ; 1199
	%struct.DSOCacheEntry {
		i64 3004156078, ; hash 0xb30fc8ae, from name: Xamarin.AndroidX.Annotation.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.206_name, ; name: libaot-Xamarin.AndroidX.Annotation.dll.so
		ptr null; void* handle (0x0)
	}, ; 1200
	%struct.DSOCacheEntry {
		i64 3006866263, ; hash 0xb3392357, from name: WindowsBase.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.175_name, ; name: libaot-WindowsBase.dll.so
		ptr null; void* handle (0x0)
	}, ; 1201
	%struct.DSOCacheEntry {
		i64 3010818927, ; hash 0xb375736f, from name: System.Xml.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.173_name, ; name: libaot-System.Xml.dll.so
		ptr null; void* handle (0x0)
	}, ; 1202
	%struct.DSOCacheEntry {
		i64 3010961204, ; hash 0xb3779f34, from name: aot-System.Runtime.Serialization.Xml
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.124_name, ; name: libaot-System.Runtime.Serialization.Xml.dll.so
		ptr null; void* handle (0x0)
	}, ; 1203
	%struct.DSOCacheEntry {
		i64 3011539963, ; hash 0xb38073fb, from name: libaot-Xamarin.AndroidX.LocalBroadcastManager.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.247_name, ; name: libaot-Xamarin.AndroidX.LocalBroadcastManager.dll.so
		ptr null; void* handle (0x0)
	}, ; 1204
	%struct.DSOCacheEntry {
		i64 3011705742, ; hash 0xb382fb8e, from name: libaot-Xamarin.AndroidX.ViewPager
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.267_name, ; name: libaot-Xamarin.AndroidX.ViewPager.dll.so
		ptr null; void* handle (0x0)
	}, ; 1205
	%struct.DSOCacheEntry {
		i64 3011708098, ; hash 0xb38304c2, from name: aot-System.Collections.Immutable
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.19_name, ; name: libaot-System.Collections.Immutable.dll.so
		ptr null; void* handle (0x0)
	}, ; 1206
	%struct.DSOCacheEntry {
		i64 3016983068, ; hash 0xb3d3821c, from name: Xamarin.AndroidX.Startup.StartupRuntime
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.260_name, ; name: libaot-Xamarin.AndroidX.Startup.StartupRuntime.dll.so
		ptr null; void* handle (0x0)
	}, ; 1207
	%struct.DSOCacheEntry {
		i64 3017953105, ; hash 0xb3e24f51, from name: MauiApp1
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.9_name, ; name: libaot-MauiApp1.dll.so
		ptr null; void* handle (0x0)
	}, ; 1208
	%struct.DSOCacheEntry {
		i64 3024354802, ; hash 0xb443fdf2, from name: Xamarin.AndroidX.Legacy.Support.Core.Utils
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.235_name, ; name: libaot-Xamarin.AndroidX.Legacy.Support.Core.Utils.dll.so
		ptr null; void* handle (0x0)
	}, ; 1209
	%struct.DSOCacheEntry {
		i64 3024529297, ; hash 0xb446a791, from name: aot-System.Runtime.InteropServices.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.117_name, ; name: libaot-System.Runtime.InteropServices.dll.so
		ptr null; void* handle (0x0)
	}, ; 1210
	%struct.DSOCacheEntry {
		i64 3025818980, ; hash 0xb45a5564, from name: aot-Xamarin.AndroidX.AppCompat.AppCompatResources
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.210_name, ; name: libaot-Xamarin.AndroidX.AppCompat.AppCompatResources.dll.so
		ptr null; void* handle (0x0)
	}, ; 1211
	%struct.DSOCacheEntry {
		i64 3033149512, ; hash 0xb4ca3048, from name: libaot-Xamarin.AndroidX.Arch.Core.Runtime
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.212_name, ; name: libaot-Xamarin.AndroidX.Arch.Core.Runtime.dll.so
		ptr null; void* handle (0x0)
	}, ; 1212
	%struct.DSOCacheEntry {
		i64 3035845412, ; hash 0xb4f35324, from name: Xamarin.AndroidX.Legacy.Support.Core.Utils.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.235_name, ; name: libaot-Xamarin.AndroidX.Legacy.Support.Core.Utils.dll.so
		ptr null; void* handle (0x0)
	}, ; 1213
	%struct.DSOCacheEntry {
		i64 3036319177, ; hash 0xb4fa8dc9, from name: libaot-Xamarin.Android.Glide.GifDecoder.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.203_name, ; name: libaot-Xamarin.Android.Glide.GifDecoder.dll.so
		ptr null; void* handle (0x0)
	}, ; 1214
	%struct.DSOCacheEntry {
		i64 3039880711, ; hash 0xb530e607, from name: aot-System.Net.Security.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.83_name, ; name: libaot-System.Net.Security.dll.so
		ptr null; void* handle (0x0)
	}, ; 1215
	%struct.DSOCacheEntry {
		i64 3040261996, ; hash 0xb536b76c, from name: aot-Xamarin.KotlinX.Coroutines.Core.Jvm.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.282_name, ; name: libaot-Xamarin.KotlinX.Coroutines.Core.Jvm.dll.so
		ptr null; void* handle (0x0)
	}, ; 1216
	%struct.DSOCacheEntry {
		i64 3044365891, ; hash 0xb5755643, from name: aot-System.Numerics.Vectors
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.92_name, ; name: libaot-System.Numerics.Vectors.dll.so
		ptr null; void* handle (0x0)
	}, ; 1217
	%struct.DSOCacheEntry {
		i64 3045909753, ; hash 0xb58ce4f9, from name: libaot-System.Net.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.91_name, ; name: libaot-System.Net.dll.so
		ptr null; void* handle (0x0)
	}, ; 1218
	%struct.DSOCacheEntry {
		i64 3051226419, ; hash 0xb5de0533, from name: System.Runtime.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.126_name, ; name: libaot-System.Runtime.dll.so
		ptr null; void* handle (0x0)
	}, ; 1219
	%struct.DSOCacheEntry {
		i64 3055345804, ; hash 0xb61ce08c, from name: libaot-System.Threading.Tasks.Parallel.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.153_name, ; name: libaot-System.Threading.Tasks.Parallel.dll.so
		ptr null; void* handle (0x0)
	}, ; 1220
	%struct.DSOCacheEntry {
		i64 3056245963, ; hash 0xb62a9ccb, from name: Xamarin.AndroidX.SavedState.SavedState.Ktx
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.257_name, ; name: libaot-Xamarin.AndroidX.SavedState.SavedState.Ktx.dll.so
		ptr null; void* handle (0x0)
	}, ; 1221
	%struct.DSOCacheEntry {
		i64 3056290812, ; hash 0xb62b4bfc, from name: aot-System.Net.Primitives.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.80_name, ; name: libaot-System.Net.Primitives.dll.so
		ptr null; void* handle (0x0)
	}, ; 1222
	%struct.DSOCacheEntry {
		i64 3056910495, ; hash 0xb634c09f, from name: aot-System.Net.WebSockets.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.90_name, ; name: libaot-System.Net.WebSockets.dll.so
		ptr null; void* handle (0x0)
	}, ; 1223
	%struct.DSOCacheEntry {
		i64 3057625584, ; hash 0xb63fa9f0, from name: Xamarin.AndroidX.Navigation.Common
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.248_name, ; name: libaot-Xamarin.AndroidX.Navigation.Common.dll.so
		ptr null; void* handle (0x0)
	}, ; 1224
	%struct.DSOCacheEntry {
		i64 3057718947, ; hash 0xb64116a3, from name: aot-System.Linq.Expressions.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.68_name, ; name: libaot-System.Linq.Expressions.dll.so
		ptr null; void* handle (0x0)
	}, ; 1225
	%struct.DSOCacheEntry {
		i64 3057765123, ; hash 0xb641cb03, from name: aot-System.Diagnostics.Process
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.39_name, ; name: libaot-System.Diagnostics.Process.dll.so
		ptr null; void* handle (0x0)
	}, ; 1226
	%struct.DSOCacheEntry {
		i64 3057842724, ; hash 0xb642fa24, from name: aot-System.Resources.Reader
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.108_name, ; name: libaot-System.Resources.Reader.dll.so
		ptr null; void* handle (0x0)
	}, ; 1227
	%struct.DSOCacheEntry {
		i64 3058175140, ; hash 0xb6480ca4, from name: System.Text.RegularExpressions.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.148_name, ; name: libaot-System.Text.RegularExpressions.dll.so
		ptr null; void* handle (0x0)
	}, ; 1228
	%struct.DSOCacheEntry {
		i64 3059168881, ; hash 0xb6573671, from name: libaot-Xamarin.Google.Crypto.Tink.Android.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.273_name, ; name: libaot-Xamarin.Google.Crypto.Tink.Android.dll.so
		ptr null; void* handle (0x0)
	}, ; 1229
	%struct.DSOCacheEntry {
		i64 3059408633, ; hash 0xb65adef9, from name: Mono.Android.Runtime
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.180_name, ; name: libaot-Mono.Android.Runtime.dll.so
		ptr null; void* handle (0x0)
	}, ; 1230
	%struct.DSOCacheEntry {
		i64 3059793426, ; hash 0xb660be12, from name: System.ComponentModel.Primitives
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.26_name, ; name: libaot-System.ComponentModel.Primitives.dll.so
		ptr null; void* handle (0x0)
	}, ; 1231
	%struct.DSOCacheEntry {
		i64 3061710381, ; hash 0xb67dfe2d, from name: aot-System.Security.Cryptography.Primitives
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.134_name, ; name: libaot-System.Security.Cryptography.Primitives.dll.so
		ptr null; void* handle (0x0)
	}, ; 1232
	%struct.DSOCacheEntry {
		i64 3073434459, ; hash 0xb730e35b, from name: aot-System.Private.CoreLib
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.283_name, ; name: libaot-System.Private.CoreLib.dll.so
		ptr null; void* handle (0x0)
	}, ; 1233
	%struct.DSOCacheEntry {
		i64 3074736396, ; hash 0xb744c10c, from name: libaot-System.Runtime.CompilerServices.Unsafe.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.111_name, ; name: libaot-System.Runtime.CompilerServices.Unsafe.dll.so
		ptr null; void* handle (0x0)
	}, ; 1234
	%struct.DSOCacheEntry {
		i64 3074898282, ; hash 0xb747396a, from name: System.IO.UnmanagedMemoryStream.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.66_name, ; name: libaot-System.IO.UnmanagedMemoryStream.dll.so
		ptr null; void* handle (0x0)
	}, ; 1235
	%struct.DSOCacheEntry {
		i64 3075834255, ; hash 0xb755818f, from name: System.Threading.Tasks
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.154_name, ; name: libaot-System.Threading.Tasks.dll.so
		ptr null; void* handle (0x0)
	}, ; 1236
	%struct.DSOCacheEntry {
		i64 3077614056, ; hash 0xb770a9e8, from name: aot-Xamarin.AndroidX.VersionedParcelable
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.266_name, ; name: libaot-Xamarin.AndroidX.VersionedParcelable.dll.so
		ptr null; void* handle (0x0)
	}, ; 1237
	%struct.DSOCacheEntry {
		i64 3079573064, ; hash 0xb78e8e48, from name: aot-System.Runtime.InteropServices.RuntimeInformation.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.116_name, ; name: libaot-System.Runtime.InteropServices.RuntimeInformation.dll.so
		ptr null; void* handle (0x0)
	}, ; 1238
	%struct.DSOCacheEntry {
		i64 3089352571, ; hash 0xb823c77b, from name: aot-Xamarin.AndroidX.RecyclerView.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.254_name, ; name: libaot-Xamarin.AndroidX.RecyclerView.dll.so
		ptr null; void* handle (0x0)
	}, ; 1239
	%struct.DSOCacheEntry {
		i64 3089410189, ; hash 0xb824a88d, from name: aot-Xamarin.AndroidX.Annotation.Experimental
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.207_name, ; name: libaot-Xamarin.AndroidX.Annotation.Experimental.dll.so
		ptr null; void* handle (0x0)
	}, ; 1240
	%struct.DSOCacheEntry {
		i64 3095590497, ; hash 0xb882f661, from name: aot-Xamarin.AndroidX.SavedState
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.256_name, ; name: libaot-Xamarin.AndroidX.SavedState.dll.so
		ptr null; void* handle (0x0)
	}, ; 1241
	%struct.DSOCacheEntry {
		i64 3097746105, ; hash 0xb8a3dab9, from name: System.Console.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.30_name, ; name: libaot-System.Console.dll.so
		ptr null; void* handle (0x0)
	}, ; 1242
	%struct.DSOCacheEntry {
		i64 3099995434, ; hash 0xb8c62d2a, from name: Xamarin.Kotlin.StdLib.Jdk7.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.279_name, ; name: libaot-Xamarin.Kotlin.StdLib.Jdk7.dll.so
		ptr null; void* handle (0x0)
	}, ; 1243
	%struct.DSOCacheEntry {
		i64 3103429300, ; hash 0xb8fa92b4, from name: libaot-Xamarin.AndroidX.AppCompat.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.209_name, ; name: libaot-Xamarin.AndroidX.AppCompat.dll.so
		ptr null; void* handle (0x0)
	}, ; 1244
	%struct.DSOCacheEntry {
		i64 3103600923, ; hash 0xb8fd311b, from name: System.Formats.Asn1
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.48_name, ; name: libaot-System.Formats.Asn1.dll.so
		ptr null; void* handle (0x0)
	}, ; 1245
	%struct.DSOCacheEntry {
		i64 3104224272, ; hash 0xb906b410, from name: libaot-Xamarin.AndroidX.VersionedParcelable.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.266_name, ; name: libaot-Xamarin.AndroidX.VersionedParcelable.dll.so
		ptr null; void* handle (0x0)
	}, ; 1246
	%struct.DSOCacheEntry {
		i64 3105246961, ; hash 0xb9164ef1, from name: libaot-Xamarin.AndroidX.Window.Extensions.Core.Core
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.270_name, ; name: libaot-Xamarin.AndroidX.Window.Extensions.Core.Core.dll.so
		ptr null; void* handle (0x0)
	}, ; 1247
	%struct.DSOCacheEntry {
		i64 3107158435, ; hash 0xb93379a3, from name: aot-System.Diagnostics.Contracts.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.35_name, ; name: libaot-System.Diagnostics.Contracts.dll.so
		ptr null; void* handle (0x0)
	}, ; 1248
	%struct.DSOCacheEntry {
		i64 3111772706, ; hash 0xb979e222, from name: System.Runtime.Serialization
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.125_name, ; name: libaot-System.Runtime.Serialization.dll.so
		ptr null; void* handle (0x0)
	}, ; 1249
	%struct.DSOCacheEntry {
		i64 3117610186, ; hash 0xb9d2f4ca, from name: libaot-System.Security.Cryptography.OpenSsl
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.133_name, ; name: libaot-System.Security.Cryptography.OpenSsl.dll.so
		ptr null; void* handle (0x0)
	}, ; 1250
	%struct.DSOCacheEntry {
		i64 3118795923, ; hash 0xb9e50c93, from name: aot-Xamarin.AndroidX.CoordinatorLayout.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.220_name, ; name: libaot-Xamarin.AndroidX.CoordinatorLayout.dll.so
		ptr null; void* handle (0x0)
	}, ; 1251
	%struct.DSOCacheEntry {
		i64 3119114540, ; hash 0xb9e9e92c, from name: aot-Microsoft.Maui.Controls
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.194_name, ; name: libaot-Microsoft.Maui.Controls.dll.so
		ptr null; void* handle (0x0)
	}, ; 1252
	%struct.DSOCacheEntry {
		i64 3119652235, ; hash 0xb9f21d8b, from name: Mono.Android.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.181_name, ; name: libaot-Mono.Android.dll.so
		ptr null; void* handle (0x0)
	}, ; 1253
	%struct.DSOCacheEntry {
		i64 3122026682, ; hash 0xba1658ba, from name: libaot-Xamarin.AndroidX.SavedState.SavedState.Ktx.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.257_name, ; name: libaot-Xamarin.AndroidX.SavedState.SavedState.Ktx.dll.so
		ptr null; void* handle (0x0)
	}, ; 1254
	%struct.DSOCacheEntry {
		i64 3122244214, ; hash 0xba19aa76, from name: aot-System.Diagnostics.TraceSource
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.43_name, ; name: libaot-System.Diagnostics.TraceSource.dll.so
		ptr null; void* handle (0x0)
	}, ; 1255
	%struct.DSOCacheEntry {
		i64 3124832203, ; hash 0xba4127cb, from name: System.Threading.Tasks.Extensions
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.152_name, ; name: libaot-System.Threading.Tasks.Extensions.dll.so
		ptr null; void* handle (0x0)
	}, ; 1256
	%struct.DSOCacheEntry {
		i64 3126581553, ; hash 0xba5bd931, from name: libaot-System.Linq.Queryable
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.70_name, ; name: libaot-System.Linq.Queryable.dll.so
		ptr null; void* handle (0x0)
	}, ; 1257
	%struct.DSOCacheEntry {
		i64 3126917188, ; hash 0xba60f844, from name: System.Runtime.InteropServices.RuntimeInformation.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.116_name, ; name: libaot-System.Runtime.InteropServices.RuntimeInformation.dll.so
		ptr null; void* handle (0x0)
	}, ; 1258
	%struct.DSOCacheEntry {
		i64 3127835167, ; hash 0xba6efa1f, from name: System.ObjectModel.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.94_name, ; name: libaot-System.ObjectModel.dll.so
		ptr null; void* handle (0x0)
	}, ; 1259
	%struct.DSOCacheEntry {
		i64 3129695436, ; hash 0xba8b5ccc, from name: libaot-System.Private.Uri
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.96_name, ; name: libaot-System.Private.Uri.dll.so
		ptr null; void* handle (0x0)
	}, ; 1260
	%struct.DSOCacheEntry {
		i64 3129883277, ; hash 0xba8e3a8d, from name: aot-Microsoft.VisualBasic.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.13_name, ; name: libaot-Microsoft.VisualBasic.dll.so
		ptr null; void* handle (0x0)
	}, ; 1261
	%struct.DSOCacheEntry {
		i64 3132293585, ; hash 0xbab301d1, from name: System.Security.AccessControl
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.127_name, ; name: libaot-System.Security.AccessControl.dll.so
		ptr null; void* handle (0x0)
	}, ; 1262
	%struct.DSOCacheEntry {
		i64 3137986923, ; hash 0xbb09e16b, from name: libaot-System.Net.Requests
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.82_name, ; name: libaot-System.Net.Requests.dll.so
		ptr null; void* handle (0x0)
	}, ; 1263
	%struct.DSOCacheEntry {
		i64 3138176097, ; hash 0xbb0cc461, from name: libaot-Xamarin.AndroidX.ConstraintLayout.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.218_name, ; name: libaot-Xamarin.AndroidX.ConstraintLayout.dll.so
		ptr null; void* handle (0x0)
	}, ; 1264
	%struct.DSOCacheEntry {
		i64 3139734713, ; hash 0xbb248cb9, from name: aot-System.Runtime.Serialization.Xml.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.124_name, ; name: libaot-System.Runtime.Serialization.Xml.dll.so
		ptr null; void* handle (0x0)
	}, ; 1265
	%struct.DSOCacheEntry {
		i64 3144245581, ; hash 0xbb69614d, from name: libaot-Xamarin.Android.Glide.Annotations
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.201_name, ; name: libaot-Xamarin.Android.Glide.Annotations.dll.so
		ptr null; void* handle (0x0)
	}, ; 1266
	%struct.DSOCacheEntry {
		i64 3144316167, ; hash 0xbb6a7507, from name: libaot-System.Reflection.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.107_name, ; name: libaot-System.Reflection.dll.so
		ptr null; void* handle (0x0)
	}, ; 1267
	%struct.DSOCacheEntry {
		i64 3152942784, ; hash 0xbbee16c0, from name: libaot-Xamarin.AndroidX.ConstraintLayout.Core.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.219_name, ; name: libaot-Xamarin.AndroidX.ConstraintLayout.Core.dll.so
		ptr null; void* handle (0x0)
	}, ; 1268
	%struct.DSOCacheEntry {
		i64 3159210919, ; hash 0xbc4dbba7, from name: libaot-Xamarin.AndroidX.Startup.StartupRuntime.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.260_name, ; name: libaot-Xamarin.AndroidX.Startup.StartupRuntime.dll.so
		ptr null; void* handle (0x0)
	}, ; 1269
	%struct.DSOCacheEntry {
		i64 3160747431, ; hash 0xbc652da7, from name: System.IO.MemoryMappedFiles
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.63_name, ; name: libaot-System.IO.MemoryMappedFiles.dll.so
		ptr null; void* handle (0x0)
	}, ; 1270
	%struct.DSOCacheEntry {
		i64 3173312641, ; hash 0xbd24e881, from name: libaot-System.Runtime.Handles
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.114_name, ; name: libaot-System.Runtime.Handles.dll.so
		ptr null; void* handle (0x0)
	}, ; 1271
	%struct.DSOCacheEntry {
		i64 3177211174, ; hash 0xbd606526, from name: libaot-Xamarin.AndroidX.Lifecycle.Common.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.236_name, ; name: libaot-Xamarin.AndroidX.Lifecycle.Common.dll.so
		ptr null; void* handle (0x0)
	}, ; 1272
	%struct.DSOCacheEntry {
		i64 3185845700, ; hash 0xbde425c4, from name: libmono-component-hot_reload
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.4_name, ; name: libmono-component-hot_reload.so
		ptr null; void* handle (0x0)
	}, ; 1273
	%struct.DSOCacheEntry {
		i64 3188889127, ; hash 0xbe129627, from name: aot-System.Runtime.Numerics.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.120_name, ; name: libaot-System.Runtime.Numerics.dll.so
		ptr null; void* handle (0x0)
	}, ; 1274
	%struct.DSOCacheEntry {
		i64 3189150546, ; hash 0xbe169352, from name: libaot-Xamarin.AndroidX.Lifecycle.LiveData.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.237_name, ; name: libaot-Xamarin.AndroidX.Lifecycle.LiveData.dll.so
		ptr null; void* handle (0x0)
	}, ; 1275
	%struct.DSOCacheEntry {
		i64 3190933424, ; hash 0xbe31c7b0, from name: aot-System.Net.Http.Json
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.73_name, ; name: libaot-System.Net.Http.Json.dll.so
		ptr null; void* handle (0x0)
	}, ; 1276
	%struct.DSOCacheEntry {
		i64 3192346100, ; hash 0xbe4755f4, from name: System.Security.SecureString
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.139_name, ; name: libaot-System.Security.SecureString.dll.so
		ptr null; void* handle (0x0)
	}, ; 1277
	%struct.DSOCacheEntry {
		i64 3193515020, ; hash 0xbe592c0c, from name: System.Web
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.163_name, ; name: libaot-System.Web.dll.so
		ptr null; void* handle (0x0)
	}, ; 1278
	%struct.DSOCacheEntry {
		i64 3194979304, ; hash 0xbe6f83e8, from name: aot-Xamarin.AndroidX.ViewPager
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.267_name, ; name: libaot-Xamarin.AndroidX.ViewPager.dll.so
		ptr null; void* handle (0x0)
	}, ; 1279
	%struct.DSOCacheEntry {
		i64 3195085067, ; hash 0xbe71210b, from name: aot-System.IO.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.67_name, ; name: libaot-System.IO.dll.so
		ptr null; void* handle (0x0)
	}, ; 1280
	%struct.DSOCacheEntry {
		i64 3197061657, ; hash 0xbe8f4a19, from name: aot-System.IO.Pipes
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.65_name, ; name: libaot-System.IO.Pipes.dll.so
		ptr null; void* handle (0x0)
	}, ; 1281
	%struct.DSOCacheEntry {
		i64 3198089322, ; hash 0xbe9ef86a, from name: aot-System.Xml.XmlSerializer
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.172_name, ; name: libaot-System.Xml.XmlSerializer.dll.so
		ptr null; void* handle (0x0)
	}, ; 1282
	%struct.DSOCacheEntry {
		i64 3199225864, ; hash 0xbeb05008, from name: aot-Microsoft.Win32.Primitives.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.14_name, ; name: libaot-Microsoft.Win32.Primitives.dll.so
		ptr null; void* handle (0x0)
	}, ; 1283
	%struct.DSOCacheEntry {
		i64 3208109669, ; hash 0xbf37de65, from name: aot-System.Security.Cryptography.Csp.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.131_name, ; name: libaot-System.Security.Cryptography.Csp.dll.so
		ptr null; void* handle (0x0)
	}, ; 1284
	%struct.DSOCacheEntry {
		i64 3210556674, ; hash 0xbf5d3502, from name: System.IO.FileSystem.Watcher.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.60_name, ; name: libaot-System.IO.FileSystem.Watcher.dll.so
		ptr null; void* handle (0x0)
	}, ; 1285
	%struct.DSOCacheEntry {
		i64 3211777861, ; hash 0xbf6fd745, from name: Xamarin.AndroidX.DocumentFile
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.226_name, ; name: libaot-Xamarin.AndroidX.DocumentFile.dll.so
		ptr null; void* handle (0x0)
	}, ; 1286
	%struct.DSOCacheEntry {
		i64 3212987759, ; hash 0xbf824d6f, from name: aot-System.Net.Primitives
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.80_name, ; name: libaot-System.Net.Primitives.dll.so
		ptr null; void* handle (0x0)
	}, ; 1287
	%struct.DSOCacheEntry {
		i64 3216481925, ; hash 0xbfb79e85, from name: libaot-System.Diagnostics.Process
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.39_name, ; name: libaot-System.Diagnostics.Process.dll.so
		ptr null; void* handle (0x0)
	}, ; 1288
	%struct.DSOCacheEntry {
		i64 3216491085, ; hash 0xbfb7c24d, from name: aot-Microsoft.Extensions.Configuration
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.184_name, ; name: libaot-Microsoft.Extensions.Configuration.dll.so
		ptr null; void* handle (0x0)
	}, ; 1289
	%struct.DSOCacheEntry {
		i64 3220365878, ; hash 0xbff2e236, from name: System.Threading
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.158_name, ; name: libaot-System.Threading.dll.so
		ptr null; void* handle (0x0)
	}, ; 1290
	%struct.DSOCacheEntry {
		i64 3222235573, ; hash 0xc00f69b5, from name: libaot-System.ComponentModel.Annotations.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.23_name, ; name: libaot-System.ComponentModel.Annotations.dll.so
		ptr null; void* handle (0x0)
	}, ; 1291
	%struct.DSOCacheEntry {
		i64 3222330758, ; hash 0xc010dd86, from name: aot-Xamarin.AndroidX.Arch.Core.Runtime
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.212_name, ; name: libaot-Xamarin.AndroidX.Arch.Core.Runtime.dll.so
		ptr null; void* handle (0x0)
	}, ; 1292
	%struct.DSOCacheEntry {
		i64 3227734480, ; hash 0xc06351d0, from name: libaot-System.Net.Http.Json.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.73_name, ; name: libaot-System.Net.Http.Json.dll.so
		ptr null; void* handle (0x0)
	}, ; 1293
	%struct.DSOCacheEntry {
		i64 3234506695, ; hash 0xc0caa7c7, from name: aot-System.Net.Sockets
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.85_name, ; name: libaot-System.Net.Sockets.dll.so
		ptr null; void* handle (0x0)
	}, ; 1294
	%struct.DSOCacheEntry {
		i64 3240981972, ; hash 0xc12d75d4, from name: aot-System.Threading
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.158_name, ; name: libaot-System.Threading.dll.so
		ptr null; void* handle (0x0)
	}, ; 1295
	%struct.DSOCacheEntry {
		i64 3243272429, ; hash 0xc15068ed, from name: aot-System.Xml.Linq.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.165_name, ; name: libaot-System.Xml.Linq.dll.so
		ptr null; void* handle (0x0)
	}, ; 1296
	%struct.DSOCacheEntry {
		i64 3245100719, ; hash 0xc16c4eaf, from name: aot-System.Globalization.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.52_name, ; name: libaot-System.Globalization.dll.so
		ptr null; void* handle (0x0)
	}, ; 1297
	%struct.DSOCacheEntry {
		i64 3249988131, ; hash 0xc1b6e223, from name: aot-Xamarin.AndroidX.Annotation.Experimental.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.207_name, ; name: libaot-Xamarin.AndroidX.Annotation.Experimental.dll.so
		ptr null; void* handle (0x0)
	}, ; 1298
	%struct.DSOCacheEntry {
		i64 3253979335, ; hash 0xc1f3c8c7, from name: aot-System.Net.WebSockets.Client
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.89_name, ; name: libaot-System.Net.WebSockets.Client.dll.so
		ptr null; void* handle (0x0)
	}, ; 1299
	%struct.DSOCacheEntry {
		i64 3255445380, ; hash 0xc20a2784, from name: aot-System.Xml.XPath.XDocument
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.169_name, ; name: libaot-System.Xml.XPath.XDocument.dll.so
		ptr null; void* handle (0x0)
	}, ; 1300
	%struct.DSOCacheEntry {
		i64 3257875127, ; hash 0xc22f3ab7, from name: libaot-System.IO.FileSystem.Watcher.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.60_name, ; name: libaot-System.IO.FileSystem.Watcher.dll.so
		ptr null; void* handle (0x0)
	}, ; 1301
	%struct.DSOCacheEntry {
		i64 3258312781, ; hash 0xc235e84d, from name: Xamarin.AndroidX.CardView
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.214_name, ; name: libaot-Xamarin.AndroidX.CardView.dll.so
		ptr null; void* handle (0x0)
	}, ; 1302
	%struct.DSOCacheEntry {
		i64 3259652464, ; hash 0xc24a5970, from name: libaot-System.Private.Xml.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.98_name, ; name: libaot-System.Private.Xml.dll.so
		ptr null; void* handle (0x0)
	}, ; 1303
	%struct.DSOCacheEntry {
		i64 3264918285, ; hash 0xc29ab30d, from name: libaot-System.Buffers.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.17_name, ; name: libaot-System.Buffers.dll.so
		ptr null; void* handle (0x0)
	}, ; 1304
	%struct.DSOCacheEntry {
		i64 3265384679, ; hash 0xc2a1d0e7, from name: aot-System.Globalization.Calendars
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.50_name, ; name: libaot-System.Globalization.Calendars.dll.so
		ptr null; void* handle (0x0)
	}, ; 1305
	%struct.DSOCacheEntry {
		i64 3268042121, ; hash 0xc2ca5d89, from name: aot-Xamarin.AndroidX.Loader.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.246_name, ; name: libaot-Xamarin.AndroidX.Loader.dll.so
		ptr null; void* handle (0x0)
	}, ; 1306
	%struct.DSOCacheEntry {
		i64 3269915954, ; hash 0xc2e6f532, from name: libaot-Microsoft.VisualBasic.Core
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.12_name, ; name: libaot-Microsoft.VisualBasic.Core.dll.so
		ptr null; void* handle (0x0)
	}, ; 1307
	%struct.DSOCacheEntry {
		i64 3270579866, ; hash 0xc2f1169a, from name: libaot-Xamarin.AndroidX.Tracing.Tracing
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.262_name, ; name: libaot-Xamarin.AndroidX.Tracing.Tracing.dll.so
		ptr null; void* handle (0x0)
	}, ; 1308
	%struct.DSOCacheEntry {
		i64 3271438092, ; hash 0xc2fe2f0c, from name: libaot-mscorlib.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.176_name, ; name: libaot-mscorlib.dll.so
		ptr null; void* handle (0x0)
	}, ; 1309
	%struct.DSOCacheEntry {
		i64 3272636642, ; hash 0xc31078e2, from name: libaot-System.Private.DataContractSerialization
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.95_name, ; name: libaot-System.Private.DataContractSerialization.dll.so
		ptr null; void* handle (0x0)
	}, ; 1310
	%struct.DSOCacheEntry {
		i64 3274854694, ; hash 0xc3325126, from name: libaot-System.Formats.Asn1.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.48_name, ; name: libaot-System.Formats.Asn1.dll.so
		ptr null; void* handle (0x0)
	}, ; 1311
	%struct.DSOCacheEntry {
		i64 3275660490, ; hash 0xc33e9cca, from name: System.Net.Http.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.74_name, ; name: libaot-System.Net.Http.dll.so
		ptr null; void* handle (0x0)
	}, ; 1312
	%struct.DSOCacheEntry {
		i64 3276227139, ; hash 0xc3474243, from name: aot-System.IO.IsolatedStorage.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.62_name, ; name: libaot-System.IO.IsolatedStorage.dll.so
		ptr null; void* handle (0x0)
	}, ; 1313
	%struct.DSOCacheEntry {
		i64 3282903222, ; hash 0xc3ad20b6, from name: aot-Xamarin.AndroidX.Emoji2
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.229_name, ; name: libaot-Xamarin.AndroidX.Emoji2.dll.so
		ptr null; void* handle (0x0)
	}, ; 1314
	%struct.DSOCacheEntry {
		i64 3290767353, ; hash 0xc4251ff9, from name: System.Security.Cryptography.Encoding
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.132_name, ; name: libaot-System.Security.Cryptography.Encoding.dll.so
		ptr null; void* handle (0x0)
	}, ; 1315
	%struct.DSOCacheEntry {
		i64 3291723528, ; hash 0xc433b708, from name: libaot-System.Security.Cryptography.Csp
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.131_name, ; name: libaot-System.Security.Cryptography.Csp.dll.so
		ptr null; void* handle (0x0)
	}, ; 1316
	%struct.DSOCacheEntry {
		i64 3294137703, ; hash 0xc4588d67, from name: libaot-System.Linq.Expressions.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.68_name, ; name: libaot-System.Linq.Expressions.dll.so
		ptr null; void* handle (0x0)
	}, ; 1317
	%struct.DSOCacheEntry {
		i64 3297018190, ; hash 0xc484814e, from name: libaot-System.Reflection.Emit.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.102_name, ; name: libaot-System.Reflection.Emit.dll.so
		ptr null; void* handle (0x0)
	}, ; 1318
	%struct.DSOCacheEntry {
		i64 3299363146, ; hash 0xc4a8494a, from name: System.Text.Encoding
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.145_name, ; name: libaot-System.Text.Encoding.dll.so
		ptr null; void* handle (0x0)
	}, ; 1319
	%struct.DSOCacheEntry {
		i64 3303498502, ; hash 0xc4e76306, from name: System.Diagnostics.FileVersionInfo
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.38_name, ; name: libaot-System.Diagnostics.FileVersionInfo.dll.so
		ptr null; void* handle (0x0)
	}, ; 1320
	%struct.DSOCacheEntry {
		i64 3310036410, ; hash 0xc54b25ba, from name: System.Numerics.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.93_name, ; name: libaot-System.Numerics.dll.so
		ptr null; void* handle (0x0)
	}, ; 1321
	%struct.DSOCacheEntry {
		i64 3311373004, ; hash 0xc55f8acc, from name: libaot-Microsoft.Win32.Primitives
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.14_name, ; name: libaot-Microsoft.Win32.Primitives.dll.so
		ptr null; void* handle (0x0)
	}, ; 1322
	%struct.DSOCacheEntry {
		i64 3312641499, ; hash 0xc572e5db, from name: libaot-System.Reflection.Metadata.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.104_name, ; name: libaot-System.Reflection.Metadata.dll.so
		ptr null; void* handle (0x0)
	}, ; 1323
	%struct.DSOCacheEntry {
		i64 3315762753, ; hash 0xc5a28641, from name: CommunityToolkit.Mvvm.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.182_name, ; name: libaot-CommunityToolkit.Mvvm.dll.so
		ptr null; void* handle (0x0)
	}, ; 1324
	%struct.DSOCacheEntry {
		i64 3317144872, ; hash 0xc5b79d28, from name: System.Data
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.34_name, ; name: libaot-System.Data.dll.so
		ptr null; void* handle (0x0)
	}, ; 1325
	%struct.DSOCacheEntry {
		i64 3320200080, ; hash 0xc5e63b90, from name: System.Linq.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.71_name, ; name: libaot-System.Linq.dll.so
		ptr null; void* handle (0x0)
	}, ; 1326
	%struct.DSOCacheEntry {
		i64 3321816931, ; hash 0xc5fee763, from name: libaot-Xamarin.AndroidX.ViewPager.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.267_name, ; name: libaot-Xamarin.AndroidX.ViewPager.dll.so
		ptr null; void* handle (0x0)
	}, ; 1327
	%struct.DSOCacheEntry {
		i64 3323143848, ; hash 0xc61326a8, from name: aot-Newtonsoft.Json.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.199_name, ; name: libaot-Newtonsoft.Json.dll.so
		ptr null; void* handle (0x0)
	}, ; 1328
	%struct.DSOCacheEntry {
		i64 3326770050, ; hash 0xc64a7b82, from name: aot-System.IO.FileSystem.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.61_name, ; name: libaot-System.IO.FileSystem.dll.so
		ptr null; void* handle (0x0)
	}, ; 1329
	%struct.DSOCacheEntry {
		i64 3326958024, ; hash 0xc64d59c8, from name: libaot-System.Linq.Queryable.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.70_name, ; name: libaot-System.Linq.Queryable.dll.so
		ptr null; void* handle (0x0)
	}, ; 1330
	%struct.DSOCacheEntry {
		i64 3327373302, ; hash 0xc653aff6, from name: aot-System.Runtime.Intrinsics.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.118_name, ; name: libaot-System.Runtime.Intrinsics.dll.so
		ptr null; void* handle (0x0)
	}, ; 1331
	%struct.DSOCacheEntry {
		i64 3330991993, ; hash 0xc68ae779, from name: libaot-Microsoft.Maui
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.196_name, ; name: libaot-Microsoft.Maui.dll.so
		ptr null; void* handle (0x0)
	}, ; 1332
	%struct.DSOCacheEntry {
		i64 3332970020, ; hash 0xc6a91624, from name: libaot-Xamarin.Kotlin.StdLib.Common.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.278_name, ; name: libaot-Xamarin.Kotlin.StdLib.Common.dll.so
		ptr null; void* handle (0x0)
	}, ; 1333
	%struct.DSOCacheEntry {
		i64 3335291068, ; hash 0xc6cc80bc, from name: System.Diagnostics.TextWriterTraceListener.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.41_name, ; name: libaot-System.Diagnostics.TextWriterTraceListener.dll.so
		ptr null; void* handle (0x0)
	}, ; 1334
	%struct.DSOCacheEntry {
		i64 3340431453, ; hash 0xc71af05d, from name: Xamarin.AndroidX.Arch.Core.Runtime
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.212_name, ; name: libaot-Xamarin.AndroidX.Arch.Core.Runtime.dll.so
		ptr null; void* handle (0x0)
	}, ; 1335
	%struct.DSOCacheEntry {
		i64 3341356560, ; hash 0xc7290e10, from name: aot-Xamarin.Android.Glide.Annotations.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.201_name, ; name: libaot-Xamarin.Android.Glide.Annotations.dll.so
		ptr null; void* handle (0x0)
	}, ; 1336
	%struct.DSOCacheEntry {
		i64 3344190177, ; hash 0xc7544ae1, from name: aot-Xamarin.AndroidX.Arch.Core.Common
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.211_name, ; name: libaot-Xamarin.AndroidX.Arch.Core.Common.dll.so
		ptr null; void* handle (0x0)
	}, ; 1337
	%struct.DSOCacheEntry {
		i64 3346324047, ; hash 0xc774da4f, from name: Xamarin.AndroidX.Navigation.Runtime
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.250_name, ; name: libaot-Xamarin.AndroidX.Navigation.Runtime.dll.so
		ptr null; void* handle (0x0)
	}, ; 1338
	%struct.DSOCacheEntry {
		i64 3351338360, ; hash 0xc7c15d78, from name: libaot-Xamarin.AndroidX.VectorDrawable.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.264_name, ; name: libaot-Xamarin.AndroidX.VectorDrawable.dll.so
		ptr null; void* handle (0x0)
	}, ; 1339
	%struct.DSOCacheEntry {
		i64 3352153286, ; hash 0xc7cdccc6, from name: aot-System.Resources.ResourceManager
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.109_name, ; name: libaot-System.Resources.ResourceManager.dll.so
		ptr null; void* handle (0x0)
	}, ; 1340
	%struct.DSOCacheEntry {
		i64 3356614701, ; hash 0xc811e02d, from name: Xamarin.AndroidX.LocalBroadcastManager.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.247_name, ; name: libaot-Xamarin.AndroidX.LocalBroadcastManager.dll.so
		ptr null; void* handle (0x0)
	}, ; 1341
	%struct.DSOCacheEntry {
		i64 3358260929, ; hash 0xc82afec1, from name: System.Text.Json
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.147_name, ; name: libaot-System.Text.Json.dll.so
		ptr null; void* handle (0x0)
	}, ; 1342
	%struct.DSOCacheEntry {
		i64 3359318915, ; hash 0xc83b2383, from name: libaot-System.Net.WebSockets.Client
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.89_name, ; name: libaot-System.Net.WebSockets.Client.dll.so
		ptr null; void* handle (0x0)
	}, ; 1343
	%struct.DSOCacheEntry {
		i64 3361673034, ; hash 0xc85f0f4a, from name: libaot-System.Resources.Writer.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.110_name, ; name: libaot-System.Resources.Writer.dll.so
		ptr null; void* handle (0x0)
	}, ; 1344
	%struct.DSOCacheEntry {
		i64 3362336904, ; hash 0xc8693088, from name: Xamarin.AndroidX.Activity.Ktx
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.205_name, ; name: libaot-Xamarin.AndroidX.Activity.Ktx.dll.so
		ptr null; void* handle (0x0)
	}, ; 1345
	%struct.DSOCacheEntry {
		i64 3362522851, ; hash 0xc86c06e3, from name: Xamarin.AndroidX.Core
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.221_name, ; name: libaot-Xamarin.AndroidX.Core.dll.so
		ptr null; void* handle (0x0)
	}, ; 1346
	%struct.DSOCacheEntry {
		i64 3362793654, ; hash 0xc87028b6, from name: System.IO.Pipes.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.65_name, ; name: libaot-System.IO.Pipes.dll.so
		ptr null; void* handle (0x0)
	}, ; 1347
	%struct.DSOCacheEntry {
		i64 3365984895, ; hash 0xc8a0da7f, from name: libaot-System.Net.WebHeaderCollection
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.87_name, ; name: libaot-System.Net.WebHeaderCollection.dll.so
		ptr null; void* handle (0x0)
	}, ; 1348
	%struct.DSOCacheEntry {
		i64 3366347497, ; hash 0xc8a662e9, from name: Java.Interop
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.178_name, ; name: libaot-Java.Interop.dll.so
		ptr null; void* handle (0x0)
	}, ; 1349
	%struct.DSOCacheEntry {
		i64 3366547669, ; hash 0xc8a970d5, from name: libaot-System.Net.Mail.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.76_name, ; name: libaot-System.Net.Mail.dll.so
		ptr null; void* handle (0x0)
	}, ; 1350
	%struct.DSOCacheEntry {
		i64 3368557256, ; hash 0xc8c81ac8, from name: libaot-GoogleGson
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.183_name, ; name: libaot-GoogleGson.dll.so
		ptr null; void* handle (0x0)
	}, ; 1351
	%struct.DSOCacheEntry {
		i64 3370380301, ; hash 0xc8e3ec0d, from name: libaot-Xamarin.AndroidX.Security.SecurityCrypto
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.258_name, ; name: libaot-Xamarin.AndroidX.Security.SecurityCrypto.dll.so
		ptr null; void* handle (0x0)
	}, ; 1352
	%struct.DSOCacheEntry {
		i64 3372075591, ; hash 0xc8fdca47, from name: System.Data.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.34_name, ; name: libaot-System.Data.dll.so
		ptr null; void* handle (0x0)
	}, ; 1353
	%struct.DSOCacheEntry {
		i64 3374999561, ; hash 0xc92a6809, from name: Xamarin.AndroidX.RecyclerView
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.254_name, ; name: libaot-Xamarin.AndroidX.RecyclerView.dll.so
		ptr null; void* handle (0x0)
	}, ; 1354
	%struct.DSOCacheEntry {
		i64 3390348110, ; hash 0xca149b4e, from name: aot-System.Net.Ping.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.79_name, ; name: libaot-System.Net.Ping.dll.so
		ptr null; void* handle (0x0)
	}, ; 1355
	%struct.DSOCacheEntry {
		i64 3390663103, ; hash 0xca1969bf, from name: aot-System.Net.Sockets.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.85_name, ; name: libaot-System.Net.Sockets.dll.so
		ptr null; void* handle (0x0)
	}, ; 1356
	%struct.DSOCacheEntry {
		i64 3391139387, ; hash 0xca20ae3b, from name: libaot-System.IO.IsolatedStorage.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.62_name, ; name: libaot-System.IO.IsolatedStorage.dll.so
		ptr null; void* handle (0x0)
	}, ; 1357
	%struct.DSOCacheEntry {
		i64 3394171410, ; hash 0xca4ef212, from name: Xamarin.AndroidX.Activity.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.204_name, ; name: libaot-Xamarin.AndroidX.Activity.dll.so
		ptr null; void* handle (0x0)
	}, ; 1358
	%struct.DSOCacheEntry {
		i64 3395529341, ; hash 0xca63aa7d, from name: aot-System.IO.Compression.FileSystem.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.54_name, ; name: libaot-System.IO.Compression.FileSystem.dll.so
		ptr null; void* handle (0x0)
	}, ; 1359
	%struct.DSOCacheEntry {
		i64 3396494892, ; hash 0xca72662c, from name: System.Net.Primitives.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.80_name, ; name: libaot-System.Net.Primitives.dll.so
		ptr null; void* handle (0x0)
	}, ; 1360
	%struct.DSOCacheEntry {
		i64 3400462534, ; hash 0xcaaef0c6, from name: mscorlib.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.176_name, ; name: libaot-mscorlib.dll.so
		ptr null; void* handle (0x0)
	}, ; 1361
	%struct.DSOCacheEntry {
		i64 3401133733, ; hash 0xcab92ea5, from name: System.Buffers.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.17_name, ; name: libaot-System.Buffers.dll.so
		ptr null; void* handle (0x0)
	}, ; 1362
	%struct.DSOCacheEntry {
		i64 3401606454, ; hash 0xcac06536, from name: Xamarin.AndroidX.ViewPager.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.267_name, ; name: libaot-Xamarin.AndroidX.ViewPager.dll.so
		ptr null; void* handle (0x0)
	}, ; 1363
	%struct.DSOCacheEntry {
		i64 3403922660, ; hash 0xcae3bce4, from name: aot-Xamarin.AndroidX.CardView.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.214_name, ; name: libaot-Xamarin.AndroidX.CardView.dll.so
		ptr null; void* handle (0x0)
	}, ; 1364
	%struct.DSOCacheEntry {
		i64 3405233483, ; hash 0xcaf7bd4b, from name: Xamarin.AndroidX.CustomView.PoolingContainer
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.225_name, ; name: libaot-Xamarin.AndroidX.CustomView.PoolingContainer.dll.so
		ptr null; void* handle (0x0)
	}, ; 1365
	%struct.DSOCacheEntry {
		i64 3409284616, ; hash 0xcb358e08, from name: aot-Xamarin.AndroidX.Browser
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.213_name, ; name: libaot-Xamarin.AndroidX.Browser.dll.so
		ptr null; void* handle (0x0)
	}, ; 1366
	%struct.DSOCacheEntry {
		i64 3410432226, ; hash 0xcb4710e2, from name: aot-CommunityToolkit.Mvvm
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.182_name, ; name: libaot-CommunityToolkit.Mvvm.dll.so
		ptr null; void* handle (0x0)
	}, ; 1367
	%struct.DSOCacheEntry {
		i64 3410472965, ; hash 0xcb47b005, from name: aot-System.Globalization.Extensions
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.51_name, ; name: libaot-System.Globalization.Extensions.dll.so
		ptr null; void* handle (0x0)
	}, ; 1368
	%struct.DSOCacheEntry {
		i64 3416727221, ; hash 0xcba71eb5, from name: libaot-System.Reflection.Emit.ILGeneration.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.100_name, ; name: libaot-System.Reflection.Emit.ILGeneration.dll.so
		ptr null; void* handle (0x0)
	}, ; 1369
	%struct.DSOCacheEntry {
		i64 3419029516, ; hash 0xcbca400c, from name: libaot-System.Dynamic.Runtime.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.47_name, ; name: libaot-System.Dynamic.Runtime.dll.so
		ptr null; void* handle (0x0)
	}, ; 1370
	%struct.DSOCacheEntry {
		i64 3420601737, ; hash 0xcbe23d89, from name: aot-System.Diagnostics.TextWriterTraceListener.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.41_name, ; name: libaot-System.Diagnostics.TextWriterTraceListener.dll.so
		ptr null; void* handle (0x0)
	}, ; 1371
	%struct.DSOCacheEntry {
		i64 3422266863, ; hash 0xcbfba5ef, from name: libmonodroid.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.7_name, ; name: libmonodroid.so
		ptr null; void* handle (0x0)
	}, ; 1372
	%struct.DSOCacheEntry {
		i64 3426249471, ; hash 0xcc386aff, from name: libaot-Xamarin.AndroidX.Annotation.Jvm.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.208_name, ; name: libaot-Xamarin.AndroidX.Annotation.Jvm.dll.so
		ptr null; void* handle (0x0)
	}, ; 1373
	%struct.DSOCacheEntry {
		i64 3427771393, ; hash 0xcc4fa401, from name: libaot-Xamarin.AndroidX.Collection.Ktx
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.216_name, ; name: libaot-Xamarin.AndroidX.Collection.Ktx.dll.so
		ptr null; void* handle (0x0)
	}, ; 1374
	%struct.DSOCacheEntry {
		i64 3429136800, ; hash 0xcc6479a0, from name: System.Xml
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.173_name, ; name: libaot-System.Xml.dll.so
		ptr null; void* handle (0x0)
	}, ; 1375
	%struct.DSOCacheEntry {
		i64 3430777524, ; hash 0xcc7d82b4, from name: netstandard
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.177_name, ; name: libaot-netstandard.dll.so
		ptr null; void* handle (0x0)
	}, ; 1376
	%struct.DSOCacheEntry {
		i64 3430929107, ; hash 0xcc7fd2d3, from name: aot-System.Net.HttpListener.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.75_name, ; name: libaot-System.Net.HttpListener.dll.so
		ptr null; void* handle (0x0)
	}, ; 1377
	%struct.DSOCacheEntry {
		i64 3431546258, ; hash 0xcc893d92, from name: aot-Xamarin.Android.Glide.Annotations
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.201_name, ; name: libaot-Xamarin.Android.Glide.Annotations.dll.so
		ptr null; void* handle (0x0)
	}, ; 1378
	%struct.DSOCacheEntry {
		i64 3435156617, ; hash 0xccc05489, from name: libaot-Xamarin.AndroidX.Arch.Core.Runtime.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.212_name, ; name: libaot-Xamarin.AndroidX.Arch.Core.Runtime.dll.so
		ptr null; void* handle (0x0)
	}, ; 1379
	%struct.DSOCacheEntry {
		i64 3436221997, ; hash 0xccd0962d, from name: libaot-System.Net.WebProxy
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.88_name, ; name: libaot-System.Net.WebProxy.dll.so
		ptr null; void* handle (0x0)
	}, ; 1380
	%struct.DSOCacheEntry {
		i64 3440653097, ; hash 0xcd143329, from name: aot-Xamarin.AndroidX.Window.Extensions.Core.Core
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.270_name, ; name: libaot-Xamarin.AndroidX.Window.Extensions.Core.Core.dll.so
		ptr null; void* handle (0x0)
	}, ; 1381
	%struct.DSOCacheEntry {
		i64 3445260447, ; hash 0xcd5a809f, from name: System.Formats.Tar
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.49_name, ; name: libaot-System.Formats.Tar.dll.so
		ptr null; void* handle (0x0)
	}, ; 1382
	%struct.DSOCacheEntry {
		i64 3445624513, ; hash 0xcd600ec1, from name: aot-System.ComponentModel.Primitives.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.26_name, ; name: libaot-System.ComponentModel.Primitives.dll.so
		ptr null; void* handle (0x0)
	}, ; 1383
	%struct.DSOCacheEntry {
		i64 3446869630, ; hash 0xcd730e7e, from name: aot-Xamarin.AndroidX.Emoji2.ViewsHelper
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.230_name, ; name: libaot-Xamarin.AndroidX.Emoji2.ViewsHelper.dll.so
		ptr null; void* handle (0x0)
	}, ; 1384
	%struct.DSOCacheEntry {
		i64 3447642345, ; hash 0xcd7ed8e9, from name: libaot-System.Net.Security
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.83_name, ; name: libaot-System.Net.Security.dll.so
		ptr null; void* handle (0x0)
	}, ; 1385
	%struct.DSOCacheEntry {
		i64 3448212429, ; hash 0xcd878bcd, from name: aot-System.IO.Compression
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.56_name, ; name: libaot-System.IO.Compression.dll.so
		ptr null; void* handle (0x0)
	}, ; 1386
	%struct.DSOCacheEntry {
		i64 3451169111, ; hash 0xcdb4a957, from name: libaot-System.Globalization.Extensions
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.51_name, ; name: libaot-System.Globalization.Extensions.dll.so
		ptr null; void* handle (0x0)
	}, ; 1387
	%struct.DSOCacheEntry {
		i64 3452007889, ; hash 0xcdc175d1, from name: libaot-Xamarin.Kotlin.StdLib.Jdk7.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.279_name, ; name: libaot-Xamarin.Kotlin.StdLib.Jdk7.dll.so
		ptr null; void* handle (0x0)
	}, ; 1388
	%struct.DSOCacheEntry {
		i64 3454514894, ; hash 0xcde7b6ce, from name: aot-Xamarin.AndroidX.Lifecycle.LiveData.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.237_name, ; name: libaot-Xamarin.AndroidX.Lifecycle.LiveData.dll.so
		ptr null; void* handle (0x0)
	}, ; 1389
	%struct.DSOCacheEntry {
		i64 3455619283, ; hash 0xcdf890d3, from name: aot-System.Security.Cryptography.Algorithms
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.129_name, ; name: libaot-System.Security.Cryptography.Algorithms.dll.so
		ptr null; void* handle (0x0)
	}, ; 1390
	%struct.DSOCacheEntry {
		i64 3456214840, ; hash 0xce01a738, from name: aot-Xamarin.AndroidX.Annotation.Jvm
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.208_name, ; name: libaot-Xamarin.AndroidX.Annotation.Jvm.dll.so
		ptr null; void* handle (0x0)
	}, ; 1391
	%struct.DSOCacheEntry {
		i64 3457531601, ; hash 0xce15bed1, from name: libaot-System.IO.MemoryMappedFiles
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.63_name, ; name: libaot-System.IO.MemoryMappedFiles.dll.so
		ptr null; void* handle (0x0)
	}, ; 1392
	%struct.DSOCacheEntry {
		i64 3470270667, ; hash 0xced820cb, from name: aot-System.Runtime.Intrinsics
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.118_name, ; name: libaot-System.Runtime.Intrinsics.dll.so
		ptr null; void* handle (0x0)
	}, ; 1393
	%struct.DSOCacheEntry {
		i64 3471140502, ; hash 0xcee56696, from name: libaot-_Microsoft.Android.Resource.Designer.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.10_name, ; name: libaot-_Microsoft.Android.Resource.Designer.dll.so
		ptr null; void* handle (0x0)
	}, ; 1394
	%struct.DSOCacheEntry {
		i64 3476120550, ; hash 0xcf3163e6, from name: Mono.Android
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.181_name, ; name: libaot-Mono.Android.dll.so
		ptr null; void* handle (0x0)
	}, ; 1395
	%struct.DSOCacheEntry {
		i64 3484819798, ; hash 0xcfb62156, from name: System.IO.IsolatedStorage.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.62_name, ; name: libaot-System.IO.IsolatedStorage.dll.so
		ptr null; void* handle (0x0)
	}, ; 1396
	%struct.DSOCacheEntry {
		i64 3486566296, ; hash 0xcfd0c798, from name: System.Transactions
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.160_name, ; name: libaot-System.Transactions.dll.so
		ptr null; void* handle (0x0)
	}, ; 1397
	%struct.DSOCacheEntry {
		i64 3488729752, ; hash 0xcff1ca98, from name: aot-Xamarin.KotlinX.Coroutines.Android.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.281_name, ; name: libaot-Xamarin.KotlinX.Coroutines.Android.dll.so
		ptr null; void* handle (0x0)
	}, ; 1398
	%struct.DSOCacheEntry {
		i64 3490240475, ; hash 0xd008d7db, from name: aot-netstandard.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.177_name, ; name: libaot-netstandard.dll.so
		ptr null; void* handle (0x0)
	}, ; 1399
	%struct.DSOCacheEntry {
		i64 3491575628, ; hash 0xd01d374c, from name: libaot-System.Security.SecureString
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.139_name, ; name: libaot-System.Security.SecureString.dll.so
		ptr null; void* handle (0x0)
	}, ; 1400
	%struct.DSOCacheEntry {
		i64 3493578853, ; hash 0xd03bc865, from name: aot-System.IO.UnmanagedMemoryStream.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.66_name, ; name: libaot-System.IO.UnmanagedMemoryStream.dll.so
		ptr null; void* handle (0x0)
	}, ; 1401
	%struct.DSOCacheEntry {
		i64 3495560389, ; hash 0xd05a04c5, from name: aot-System.Text.Encoding.Extensions.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.144_name, ; name: libaot-System.Text.Encoding.Extensions.dll.so
		ptr null; void* handle (0x0)
	}, ; 1402
	%struct.DSOCacheEntry {
		i64 3498419225, ; hash 0xd085a419, from name: aot-Xamarin.AndroidX.Navigation.Common.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.248_name, ; name: libaot-Xamarin.AndroidX.Navigation.Common.dll.so
		ptr null; void* handle (0x0)
	}, ; 1403
	%struct.DSOCacheEntry {
		i64 3508053737, ; hash 0xd118a6e9, from name: aot-Xamarin.Android.Glide.DiskLruCache
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.202_name, ; name: libaot-Xamarin.Android.Glide.DiskLruCache.dll.so
		ptr null; void* handle (0x0)
	}, ; 1404
	%struct.DSOCacheEntry {
		i64 3509114376, ; hash 0xd128d608, from name: System.Xml.Linq
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.165_name, ; name: libaot-System.Xml.Linq.dll.so
		ptr null; void* handle (0x0)
	}, ; 1405
	%struct.DSOCacheEntry {
		i64 3515068844, ; hash 0xd183b1ac, from name: libaot-System.Reflection
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.107_name, ; name: libaot-System.Reflection.dll.so
		ptr null; void* handle (0x0)
	}, ; 1406
	%struct.DSOCacheEntry {
		i64 3515205765, ; hash 0xd185c885, from name: aot-System.Runtime.CompilerServices.Unsafe
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.111_name, ; name: libaot-System.Runtime.CompilerServices.Unsafe.dll.so
		ptr null; void* handle (0x0)
	}, ; 1407
	%struct.DSOCacheEntry {
		i64 3522264030, ; hash 0xd1f17bde, from name: MauiApp1.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.9_name, ; name: libaot-MauiApp1.dll.so
		ptr null; void* handle (0x0)
	}, ; 1408
	%struct.DSOCacheEntry {
		i64 3522642626, ; hash 0xd1f742c2, from name: aot-Xamarin.AndroidX.Fragment.Ktx.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.233_name, ; name: libaot-Xamarin.AndroidX.Fragment.Ktx.dll.so
		ptr null; void* handle (0x0)
	}, ; 1409
	%struct.DSOCacheEntry {
		i64 3527681388, ; hash 0xd244256c, from name: libaot-System.IO.Compression.ZipFile.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.55_name, ; name: libaot-System.IO.Compression.ZipFile.dll.so
		ptr null; void* handle (0x0)
	}, ; 1410
	%struct.DSOCacheEntry {
		i64 3527981548, ; hash 0xd248b9ec, from name: System.Runtime.Loader.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.119_name, ; name: libaot-System.Runtime.Loader.dll.so
		ptr null; void* handle (0x0)
	}, ; 1411
	%struct.DSOCacheEntry {
		i64 3528602916, ; hash 0xd2523524, from name: aot-WindowsBase.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.175_name, ; name: libaot-WindowsBase.dll.so
		ptr null; void* handle (0x0)
	}, ; 1412
	%struct.DSOCacheEntry {
		i64 3530912306, ; hash 0xd2757232, from name: System.Configuration
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.29_name, ; name: libaot-System.Configuration.dll.so
		ptr null; void* handle (0x0)
	}, ; 1413
	%struct.DSOCacheEntry {
		i64 3531467364, ; hash 0xd27dea64, from name: Microsoft.Extensions.Options.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.191_name, ; name: libaot-Microsoft.Extensions.Options.dll.so
		ptr null; void* handle (0x0)
	}, ; 1414
	%struct.DSOCacheEntry {
		i64 3538012924, ; hash 0xd2e1cafc, from name: System.Threading.Channels.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.149_name, ; name: libaot-System.Threading.Channels.dll.so
		ptr null; void* handle (0x0)
	}, ; 1415
	%struct.DSOCacheEntry {
		i64 3538428207, ; hash 0xd2e8212f, from name: aot-Xamarin.AndroidX.Emoji2.ViewsHelper.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.230_name, ; name: libaot-Xamarin.AndroidX.Emoji2.ViewsHelper.dll.so
		ptr null; void* handle (0x0)
	}, ; 1416
	%struct.DSOCacheEntry {
		i64 3539954161, ; hash 0xd2ff69f1, from name: System.Net.HttpListener
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.75_name, ; name: libaot-System.Net.HttpListener.dll.so
		ptr null; void* handle (0x0)
	}, ; 1417
	%struct.DSOCacheEntry {
		i64 3540360104, ; hash 0xd3059ba8, from name: aot-System.Net.ServicePoint
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.84_name, ; name: libaot-System.Net.ServicePoint.dll.so
		ptr null; void* handle (0x0)
	}, ; 1418
	%struct.DSOCacheEntry {
		i64 3541483528, ; hash 0xd316c008, from name: System.Security.Cryptography.X509Certificates.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.135_name, ; name: libaot-System.Security.Cryptography.X509Certificates.dll.so
		ptr null; void* handle (0x0)
	}, ; 1419
	%struct.DSOCacheEntry {
		i64 3547939516, ; hash 0xd37942bc, from name: System.Private.Xml.Linq.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.97_name, ; name: libaot-System.Private.Xml.Linq.dll.so
		ptr null; void* handle (0x0)
	}, ; 1420
	%struct.DSOCacheEntry {
		i64 3548122718, ; hash 0xd37c0e5e, from name: System.IO.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.67_name, ; name: libaot-System.IO.dll.so
		ptr null; void* handle (0x0)
	}, ; 1421
	%struct.DSOCacheEntry {
		i64 3554143940, ; hash 0xd3d7eec4, from name: libaot-System.Collections.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.22_name, ; name: libaot-System.Collections.dll.so
		ptr null; void* handle (0x0)
	}, ; 1422
	%struct.DSOCacheEntry {
		i64 3557887367, ; hash 0xd4110d87, from name: libaot-System.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.174_name, ; name: libaot-System.dll.so
		ptr null; void* handle (0x0)
	}, ; 1423
	%struct.DSOCacheEntry {
		i64 3560100363, ; hash 0xd432d20b, from name: System.Threading.Timer
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.157_name, ; name: libaot-System.Threading.Timer.dll.so
		ptr null; void* handle (0x0)
	}, ; 1424
	%struct.DSOCacheEntry {
		i64 3563790061, ; hash 0xd46b1eed, from name: libaot-Microsoft.Extensions.Configuration.Abstractions
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.185_name, ; name: libaot-Microsoft.Extensions.Configuration.Abstractions.dll.so
		ptr null; void* handle (0x0)
	}, ; 1425
	%struct.DSOCacheEntry {
		i64 3565226175, ; hash 0xd48108bf, from name: libaot-System.Numerics
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.93_name, ; name: libaot-System.Numerics.dll.so
		ptr null; void* handle (0x0)
	}, ; 1426
	%struct.DSOCacheEntry {
		i64 3569135103, ; hash 0xd4bcadff, from name: aot-Xamarin.AndroidX.Lifecycle.ViewModel
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.243_name, ; name: libaot-Xamarin.AndroidX.Lifecycle.ViewModel.dll.so
		ptr null; void* handle (0x0)
	}, ; 1427
	%struct.DSOCacheEntry {
		i64 3570537973, ; hash 0xd4d215f5, from name: System.Resources.Writer.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.110_name, ; name: libaot-System.Resources.Writer.dll.so
		ptr null; void* handle (0x0)
	}, ; 1428
	%struct.DSOCacheEntry {
		i64 3570554715, ; hash 0xd4d2575b, from name: System.IO.FileSystem.AccessControl
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.57_name, ; name: libaot-System.IO.FileSystem.AccessControl.dll.so
		ptr null; void* handle (0x0)
	}, ; 1429
	%struct.DSOCacheEntry {
		i64 3571370414, ; hash 0xd4dec9ae, from name: libaot-System.Runtime.Intrinsics
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.118_name, ; name: libaot-System.Runtime.Intrinsics.dll.so
		ptr null; void* handle (0x0)
	}, ; 1430
	%struct.DSOCacheEntry {
		i64 3574279395, ; hash 0xd50b2ce3, from name: libaot-System.Runtime.Loader
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.119_name, ; name: libaot-System.Runtime.Loader.dll.so
		ptr null; void* handle (0x0)
	}, ; 1431
	%struct.DSOCacheEntry {
		i64 3577572540, ; hash 0xd53d6cbc, from name: System.Runtime.Intrinsics.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.118_name, ; name: libaot-System.Runtime.Intrinsics.dll.so
		ptr null; void* handle (0x0)
	}, ; 1432
	%struct.DSOCacheEntry {
		i64 3579496911, ; hash 0xd55ac9cf, from name: libaot-Xamarin.AndroidX.Lifecycle.Runtime
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.241_name, ; name: libaot-Xamarin.AndroidX.Lifecycle.Runtime.dll.so
		ptr null; void* handle (0x0)
	}, ; 1433
	%struct.DSOCacheEntry {
		i64 3580899767, ; hash 0xd57031b7, from name: libaot-Xamarin.AndroidX.Navigation.Fragment.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.249_name, ; name: libaot-Xamarin.AndroidX.Navigation.Fragment.dll.so
		ptr null; void* handle (0x0)
	}, ; 1434
	%struct.DSOCacheEntry {
		i64 3580928879, ; hash 0xd570a36f, from name: aot-Xamarin.AndroidX.Lifecycle.Common
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.236_name, ; name: libaot-Xamarin.AndroidX.Lifecycle.Common.dll.so
		ptr null; void* handle (0x0)
	}, ; 1435
	%struct.DSOCacheEntry {
		i64 3581103432, ; hash 0xd5734d48, from name: libaot-Xamarin.Kotlin.StdLib
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.277_name, ; name: libaot-Xamarin.Kotlin.StdLib.dll.so
		ptr null; void* handle (0x0)
	}, ; 1436
	%struct.DSOCacheEntry {
		i64 3582297397, ; hash 0xd5858535, from name: aot-Xamarin.AndroidX.Lifecycle.LiveData.Core
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.238_name, ; name: libaot-Xamarin.AndroidX.Lifecycle.LiveData.Core.dll.so
		ptr null; void* handle (0x0)
	}, ; 1437
	%struct.DSOCacheEntry {
		i64 3598340787, ; hash 0xd67a52b3, from name: System.Net.WebSockets.Client
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.89_name, ; name: libaot-System.Net.WebSockets.Client.dll.so
		ptr null; void* handle (0x0)
	}, ; 1438
	%struct.DSOCacheEntry {
		i64 3610022767, ; hash 0xd72c936f, from name: libaot-System.Security.Cryptography.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.136_name, ; name: libaot-System.Security.Cryptography.dll.so
		ptr null; void* handle (0x0)
	}, ; 1439
	%struct.DSOCacheEntry {
		i64 3616174750, ; hash 0xd78a729e, from name: libaot-Xamarin.AndroidX.Browser
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.213_name, ; name: libaot-Xamarin.AndroidX.Browser.dll.so
		ptr null; void* handle (0x0)
	}, ; 1440
	%struct.DSOCacheEntry {
		i64 3617535095, ; hash 0xd79f3477, from name: libaot-System.Xml.XDocument
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.168_name, ; name: libaot-System.Xml.XDocument.dll.so
		ptr null; void* handle (0x0)
	}, ; 1441
	%struct.DSOCacheEntry {
		i64 3620311876, ; hash 0xd7c99344, from name: libaot-System.IO.IsolatedStorage
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.62_name, ; name: libaot-System.IO.IsolatedStorage.dll.so
		ptr null; void* handle (0x0)
	}, ; 1442
	%struct.DSOCacheEntry {
		i64 3621506756, ; hash 0xd7dbcec4, from name: aot-Xamarin.AndroidX.Window.Extensions.Core.Core.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.270_name, ; name: libaot-Xamarin.AndroidX.Window.Extensions.Core.Core.dll.so
		ptr null; void* handle (0x0)
	}, ; 1443
	%struct.DSOCacheEntry {
		i64 3623194064, ; hash 0xd7f58dd0, from name: libaot-System.Linq
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.71_name, ; name: libaot-System.Linq.dll.so
		ptr null; void* handle (0x0)
	}, ; 1444
	%struct.DSOCacheEntry {
		i64 3624195450, ; hash 0xd804d57a, from name: System.Runtime.InteropServices.RuntimeInformation
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.116_name, ; name: libaot-System.Runtime.InteropServices.RuntimeInformation.dll.so
		ptr null; void* handle (0x0)
	}, ; 1445
	%struct.DSOCacheEntry {
		i64 3626488023, ; hash 0xd827d0d7, from name: System.Security.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.140_name, ; name: libaot-System.Security.dll.so
		ptr null; void* handle (0x0)
	}, ; 1446
	%struct.DSOCacheEntry {
		i64 3628358221, ; hash 0xd8445a4d, from name: System.Collections.Immutable.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.19_name, ; name: libaot-System.Collections.Immutable.dll.so
		ptr null; void* handle (0x0)
	}, ; 1447
	%struct.DSOCacheEntry {
		i64 3629173998, ; hash 0xd850ccee, from name: libaot-mscorlib
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.176_name, ; name: libaot-mscorlib.dll.so
		ptr null; void* handle (0x0)
	}, ; 1448
	%struct.DSOCacheEntry {
		i64 3633149353, ; hash 0xd88d75a9, from name: libaot-System.Xml.XmlDocument
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.171_name, ; name: libaot-System.Xml.XmlDocument.dll.so
		ptr null; void* handle (0x0)
	}, ; 1449
	%struct.DSOCacheEntry {
		i64 3633644679, ; hash 0xd8950487, from name: Xamarin.AndroidX.Annotation.Experimental
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.207_name, ; name: libaot-Xamarin.AndroidX.Annotation.Experimental.dll.so
		ptr null; void* handle (0x0)
	}, ; 1450
	%struct.DSOCacheEntry {
		i64 3636393175, ; hash 0xd8bef4d7, from name: libmonodroid
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.7_name, ; name: libmonodroid.so
		ptr null; void* handle (0x0)
	}, ; 1451
	%struct.DSOCacheEntry {
		i64 3640930543, ; hash 0xd90430ef, from name: libaot-System.Runtime.InteropServices.RuntimeInformation.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.116_name, ; name: libaot-System.Runtime.InteropServices.RuntimeInformation.dll.so
		ptr null; void* handle (0x0)
	}, ; 1452
	%struct.DSOCacheEntry {
		i64 3641597786, ; hash 0xd90e5f5a, from name: Xamarin.AndroidX.Lifecycle.LiveData.Core
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.238_name, ; name: libaot-Xamarin.AndroidX.Lifecycle.LiveData.Core.dll.so
		ptr null; void* handle (0x0)
	}, ; 1453
	%struct.DSOCacheEntry {
		i64 3643854240, ; hash 0xd930cda0, from name: Xamarin.AndroidX.Navigation.Fragment
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.249_name, ; name: libaot-Xamarin.AndroidX.Navigation.Fragment.dll.so
		ptr null; void* handle (0x0)
	}, ; 1454
	%struct.DSOCacheEntry {
		i64 3645089577, ; hash 0xd943a729, from name: System.ComponentModel.DataAnnotations
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.24_name, ; name: libaot-System.ComponentModel.DataAnnotations.dll.so
		ptr null; void* handle (0x0)
	}, ; 1455
	%struct.DSOCacheEntry {
		i64 3647597548, ; hash 0xd969ebec, from name: System.Runtime.InteropServices.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.117_name, ; name: libaot-System.Runtime.InteropServices.dll.so
		ptr null; void* handle (0x0)
	}, ; 1456
	%struct.DSOCacheEntry {
		i64 3648098342, ; hash 0xd9719026, from name: libaot-System.Runtime.Numerics
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.120_name, ; name: libaot-System.Runtime.Numerics.dll.so
		ptr null; void* handle (0x0)
	}, ; 1457
	%struct.DSOCacheEntry {
		i64 3650306124, ; hash 0xd993404c, from name: System.Text.Encodings.Web.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.146_name, ; name: libaot-System.Text.Encodings.Web.dll.so
		ptr null; void* handle (0x0)
	}, ; 1458
	%struct.DSOCacheEntry {
		i64 3653271801, ; hash 0xd9c080f9, from name: System.Threading.ThreadPool.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.156_name, ; name: libaot-System.Threading.ThreadPool.dll.so
		ptr null; void* handle (0x0)
	}, ; 1459
	%struct.DSOCacheEntry {
		i64 3653801034, ; hash 0xd9c8944a, from name: libaot-Xamarin.AndroidX.Collection.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.215_name, ; name: libaot-Xamarin.AndroidX.Collection.dll.so
		ptr null; void* handle (0x0)
	}, ; 1460
	%struct.DSOCacheEntry {
		i64 3660523487, ; hash 0xda2f27df, from name: System.Net.NetworkInformation
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.78_name, ; name: libaot-System.Net.NetworkInformation.dll.so
		ptr null; void* handle (0x0)
	}, ; 1461
	%struct.DSOCacheEntry {
		i64 3662939194, ; hash 0xda54043a, from name: aot-Xamarin.AndroidX.Navigation.Fragment.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.249_name, ; name: libaot-Xamarin.AndroidX.Navigation.Fragment.dll.so
		ptr null; void* handle (0x0)
	}, ; 1462
	%struct.DSOCacheEntry {
		i64 3663658191, ; hash 0xda5efccf, from name: System.IO.MemoryMappedFiles.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.63_name, ; name: libaot-System.IO.MemoryMappedFiles.dll.so
		ptr null; void* handle (0x0)
	}, ; 1463
	%struct.DSOCacheEntry {
		i64 3667786986, ; hash 0xda9dfcea, from name: aot-System.ComponentModel.Annotations
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.23_name, ; name: libaot-System.ComponentModel.Annotations.dll.so
		ptr null; void* handle (0x0)
	}, ; 1464
	%struct.DSOCacheEntry {
		i64 3674174023, ; hash 0xdaff7247, from name: aot-System.Security.Cryptography.Encoding.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.132_name, ; name: libaot-System.Security.Cryptography.Encoding.dll.so
		ptr null; void* handle (0x0)
	}, ; 1465
	%struct.DSOCacheEntry {
		i64 3678417590, ; hash 0xdb4032b6, from name: aot-System.Security
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.140_name, ; name: libaot-System.Security.dll.so
		ptr null; void* handle (0x0)
	}, ; 1466
	%struct.DSOCacheEntry {
		i64 3682565725, ; hash 0xdb7f7e5d, from name: Xamarin.AndroidX.Browser
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.213_name, ; name: libaot-Xamarin.AndroidX.Browser.dll.so
		ptr null; void* handle (0x0)
	}, ; 1467
	%struct.DSOCacheEntry {
		i64 3684032917, ; hash 0xdb95e195, from name: libaot-Xamarin.AndroidX.SavedState
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.256_name, ; name: libaot-Xamarin.AndroidX.SavedState.dll.so
		ptr null; void* handle (0x0)
	}, ; 1468
	%struct.DSOCacheEntry {
		i64 3684561358, ; hash 0xdb9df1ce, from name: Xamarin.AndroidX.Concurrent.Futures
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.217_name, ; name: libaot-Xamarin.AndroidX.Concurrent.Futures.dll.so
		ptr null; void* handle (0x0)
	}, ; 1469
	%struct.DSOCacheEntry {
		i64 3685223071, ; hash 0xdba80a9f, from name: libaot-System.IO.Compression.Brotli
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.53_name, ; name: libaot-System.IO.Compression.Brotli.dll.so
		ptr null; void* handle (0x0)
	}, ; 1470
	%struct.DSOCacheEntry {
		i64 3689962629, ; hash 0xdbf05c85, from name: System.Diagnostics.TraceSource.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.43_name, ; name: libaot-System.Diagnostics.TraceSource.dll.so
		ptr null; void* handle (0x0)
	}, ; 1471
	%struct.DSOCacheEntry {
		i64 3691419556, ; hash 0xdc0697a4, from name: libaot-System.Net.WebProxy.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.88_name, ; name: libaot-System.Net.WebProxy.dll.so
		ptr null; void* handle (0x0)
	}, ; 1472
	%struct.DSOCacheEntry {
		i64 3691770169, ; hash 0xdc0bf139, from name: Xamarin.AndroidX.Core.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.221_name, ; name: libaot-Xamarin.AndroidX.Core.dll.so
		ptr null; void* handle (0x0)
	}, ; 1473
	%struct.DSOCacheEntry {
		i64 3704513063, ; hash 0xdcce6227, from name: System.Resources.Reader.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.108_name, ; name: libaot-System.Resources.Reader.dll.so
		ptr null; void* handle (0x0)
	}, ; 1474
	%struct.DSOCacheEntry {
		i64 3705667778, ; hash 0xdce000c2, from name: libaot-System.Threading.Thread.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.155_name, ; name: libaot-System.Threading.Thread.dll.so
		ptr null; void* handle (0x0)
	}, ; 1475
	%struct.DSOCacheEntry {
		i64 3708930120, ; hash 0xdd11c848, from name: libaot-System.Numerics.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.93_name, ; name: libaot-System.Numerics.dll.so
		ptr null; void* handle (0x0)
	}, ; 1476
	%struct.DSOCacheEntry {
		i64 3712627230, ; hash 0xdd4a321e, from name: aot-System.Xml.XDocument
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.168_name, ; name: libaot-System.Xml.XDocument.dll.so
		ptr null; void* handle (0x0)
	}, ; 1477
	%struct.DSOCacheEntry {
		i64 3716563718, ; hash 0xdd864306, from name: System.Runtime.Intrinsics
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.118_name, ; name: libaot-System.Runtime.Intrinsics.dll.so
		ptr null; void* handle (0x0)
	}, ; 1478
	%struct.DSOCacheEntry {
		i64 3718780102, ; hash 0xdda814c6, from name: Xamarin.AndroidX.Annotation
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.206_name, ; name: libaot-Xamarin.AndroidX.Annotation.dll.so
		ptr null; void* handle (0x0)
	}, ; 1479
	%struct.DSOCacheEntry {
		i64 3720997800, ; hash 0xddc9eba8, from name: aot-System.IO.Compression.Brotli
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.53_name, ; name: libaot-System.IO.Compression.Brotli.dll.so
		ptr null; void* handle (0x0)
	}, ; 1480
	%struct.DSOCacheEntry {
		i64 3732100267, ; hash 0xde7354ab, from name: System.Net.NameResolution
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.77_name, ; name: libaot-System.Net.NameResolution.dll.so
		ptr null; void* handle (0x0)
	}, ; 1481
	%struct.DSOCacheEntry {
		i64 3732899189, ; hash 0xde7f8575, from name: mono-component-hot_reload.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.4_name, ; name: libmono-component-hot_reload.so
		ptr null; void* handle (0x0)
	}, ; 1482
	%struct.DSOCacheEntry {
		i64 3734123117, ; hash 0xde92326d, from name: libaot-System.Reflection.Emit.Lightweight.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.101_name, ; name: libaot-System.Reflection.Emit.Lightweight.dll.so
		ptr null; void* handle (0x0)
	}, ; 1483
	%struct.DSOCacheEntry {
		i64 3737238990, ; hash 0xdec1bdce, from name: libaot-System.Threading.ThreadPool.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.156_name, ; name: libaot-System.Threading.ThreadPool.dll.so
		ptr null; void* handle (0x0)
	}, ; 1484
	%struct.DSOCacheEntry {
		i64 3738581822, ; hash 0xded63b3e, from name: libaot-System.Runtime.Serialization.Json.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.122_name, ; name: libaot-System.Runtime.Serialization.Json.dll.so
		ptr null; void* handle (0x0)
	}, ; 1485
	%struct.DSOCacheEntry {
		i64 3744678207, ; hash 0xdf33413f, from name: aot-Mono.Android.Export
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.179_name, ; name: libaot-Mono.Android.Export.dll.so
		ptr null; void* handle (0x0)
	}, ; 1486
	%struct.DSOCacheEntry {
		i64 3748608112, ; hash 0xdf6f3870, from name: System.Diagnostics.DiagnosticSource
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.37_name, ; name: libaot-System.Diagnostics.DiagnosticSource.dll.so
		ptr null; void* handle (0x0)
	}, ; 1487
	%struct.DSOCacheEntry {
		i64 3751047912, ; hash 0xdf9472e8, from name: libaot-System.Transactions.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.160_name, ; name: libaot-System.Transactions.dll.so
		ptr null; void* handle (0x0)
	}, ; 1488
	%struct.DSOCacheEntry {
		i64 3751444290, ; hash 0xdf9a7f42, from name: System.Xml.XPath
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.170_name, ; name: libaot-System.Xml.XPath.dll.so
		ptr null; void* handle (0x0)
	}, ; 1489
	%struct.DSOCacheEntry {
		i64 3753974164, ; hash 0xdfc11994, from name: aot-System.IO.IsolatedStorage
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.62_name, ; name: libaot-System.IO.IsolatedStorage.dll.so
		ptr null; void* handle (0x0)
	}, ; 1490
	%struct.DSOCacheEntry {
		i64 3764359468, ; hash 0xe05f912c, from name: System.Globalization.Extensions.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.51_name, ; name: libaot-System.Globalization.Extensions.dll.so
		ptr null; void* handle (0x0)
	}, ; 1491
	%struct.DSOCacheEntry {
		i64 3772944910, ; hash 0xe0e2920e, from name: aot-Xamarin.AndroidX.CustomView.PoolingContainer
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.225_name, ; name: libaot-Xamarin.AndroidX.CustomView.PoolingContainer.dll.so
		ptr null; void* handle (0x0)
	}, ; 1492
	%struct.DSOCacheEntry {
		i64 3786282454, ; hash 0xe1ae15d6, from name: Xamarin.AndroidX.Collection
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.215_name, ; name: libaot-Xamarin.AndroidX.Collection.dll.so
		ptr null; void* handle (0x0)
	}, ; 1493
	%struct.DSOCacheEntry {
		i64 3786692699, ; hash 0xe1b4585b, from name: Xamarin.AndroidX.DynamicAnimation.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.228_name, ; name: libaot-Xamarin.AndroidX.DynamicAnimation.dll.so
		ptr null; void* handle (0x0)
	}, ; 1494
	%struct.DSOCacheEntry {
		i64 3786898687, ; hash 0xe1b77cff, from name: Microsoft.Maui.Controls.Compatibility.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.193_name, ; name: libaot-Microsoft.Maui.Controls.Compatibility.dll.so
		ptr null; void* handle (0x0)
	}, ; 1495
	%struct.DSOCacheEntry {
		i64 3788641884, ; hash 0xe1d2165c, from name: _Microsoft.Android.Resource.Designer.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.10_name, ; name: libaot-_Microsoft.Android.Resource.Designer.dll.so
		ptr null; void* handle (0x0)
	}, ; 1496
	%struct.DSOCacheEntry {
		i64 3790421216, ; hash 0xe1ed3ce0, from name: monosgen-2.0
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.6_name, ; name: libmonosgen-2.0.so
		ptr null; void* handle (0x0)
	}, ; 1497
	%struct.DSOCacheEntry {
		i64 3792276235, ; hash 0xe2098b0b, from name: System.Collections.NonGeneric
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.20_name, ; name: libaot-System.Collections.NonGeneric.dll.so
		ptr null; void* handle (0x0)
	}, ; 1498
	%struct.DSOCacheEntry {
		i64 3793550389, ; hash 0xe21cfc35, from name: aot-System.Diagnostics.FileVersionInfo.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.38_name, ; name: libaot-System.Diagnostics.FileVersionInfo.dll.so
		ptr null; void* handle (0x0)
	}, ; 1499
	%struct.DSOCacheEntry {
		i64 3800979733, ; hash 0xe28e5915, from name: Microsoft.Maui.Controls.Compatibility
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.193_name, ; name: libaot-Microsoft.Maui.Controls.Compatibility.dll.so
		ptr null; void* handle (0x0)
	}, ; 1500
	%struct.DSOCacheEntry {
		i64 3804701845, ; hash 0xe2c72495, from name: System.Net.Http.Json.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.73_name, ; name: libaot-System.Net.Http.Json.dll.so
		ptr null; void* handle (0x0)
	}, ; 1501
	%struct.DSOCacheEntry {
		i64 3808105303, ; hash 0xe2fb1357, from name: libaot-System.Threading.Thread
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.155_name, ; name: libaot-System.Threading.Thread.dll.so
		ptr null; void* handle (0x0)
	}, ; 1502
	%struct.DSOCacheEntry {
		i64 3808542031, ; hash 0xe301bd4f, from name: aot-Microsoft.Extensions.Configuration.Abstractions.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.185_name, ; name: libaot-Microsoft.Extensions.Configuration.Abstractions.dll.so
		ptr null; void* handle (0x0)
	}, ; 1503
	%struct.DSOCacheEntry {
		i64 3809224080, ; hash 0xe30c2590, from name: aot-Xamarin.AndroidX.ResourceInspection.Annotation
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.255_name, ; name: libaot-Xamarin.AndroidX.ResourceInspection.Annotation.dll.so
		ptr null; void* handle (0x0)
	}, ; 1504
	%struct.DSOCacheEntry {
		i64 3815310376, ; hash 0xe3690428, from name: System.Xml.XmlDocument.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.171_name, ; name: libaot-System.Xml.XmlDocument.dll.so
		ptr null; void* handle (0x0)
	}, ; 1505
	%struct.DSOCacheEntry {
		i64 3817984437, ; hash 0xe391d1b5, from name: libmonosgen-2.0.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.6_name, ; name: libmonosgen-2.0.so
		ptr null; void* handle (0x0)
	}, ; 1506
	%struct.DSOCacheEntry {
		i64 3818055582, ; hash 0xe392e79e, from name: Xamarin.AndroidX.Fragment.Ktx.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.233_name, ; name: libaot-Xamarin.AndroidX.Fragment.Ktx.dll.so
		ptr null; void* handle (0x0)
	}, ; 1507
	%struct.DSOCacheEntry {
		i64 3818879296, ; hash 0xe39f7940, from name: Xamarin.AndroidX.VectorDrawable.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.264_name, ; name: libaot-Xamarin.AndroidX.VectorDrawable.dll.so
		ptr null; void* handle (0x0)
	}, ; 1508
	%struct.DSOCacheEntry {
		i64 3819260425, ; hash 0xe3a54a09, from name: System.Net.WebProxy
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.88_name, ; name: libaot-System.Net.WebProxy.dll.so
		ptr null; void* handle (0x0)
	}, ; 1509
	%struct.DSOCacheEntry {
		i64 3823929434, ; hash 0xe3ec885a, from name: Xamarin.AndroidX.SavedState.SavedState.Ktx.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.257_name, ; name: libaot-Xamarin.AndroidX.SavedState.SavedState.Ktx.dll.so
		ptr null; void* handle (0x0)
	}, ; 1510
	%struct.DSOCacheEntry {
		i64 3824070419, ; hash 0xe3eeaf13, from name: aot-System.ObjectModel.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.94_name, ; name: libaot-System.ObjectModel.dll.so
		ptr null; void* handle (0x0)
	}, ; 1511
	%struct.DSOCacheEntry {
		i64 3827383881, ; hash 0xe4213e49, from name: Xamarin.AndroidX.Loader.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.246_name, ; name: libaot-Xamarin.AndroidX.Loader.dll.so
		ptr null; void* handle (0x0)
	}, ; 1512
	%struct.DSOCacheEntry {
		i64 3827730753, ; hash 0xe4268941, from name: libaot-System.Text.Encoding.Extensions.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.144_name, ; name: libaot-System.Text.Encoding.Extensions.dll.so
		ptr null; void* handle (0x0)
	}, ; 1513
	%struct.DSOCacheEntry {
		i64 3829490117, ; hash 0xe44161c5, from name: aot-System.Linq.Queryable
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.70_name, ; name: libaot-System.Linq.Queryable.dll.so
		ptr null; void* handle (0x0)
	}, ; 1514
	%struct.DSOCacheEntry {
		i64 3831263026, ; hash 0xe45c6f32, from name: System.ComponentModel.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.28_name, ; name: libaot-System.ComponentModel.dll.so
		ptr null; void* handle (0x0)
	}, ; 1515
	%struct.DSOCacheEntry {
		i64 3833859747, ; hash 0xe4840ea3, from name: libaot-System.Runtime.CompilerServices.VisualC
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.112_name, ; name: libaot-System.Runtime.CompilerServices.VisualC.dll.so
		ptr null; void* handle (0x0)
	}, ; 1516
	%struct.DSOCacheEntry {
		i64 3839108447, ; hash 0xe4d4255f, from name: libaot-Xamarin.AndroidX.ProfileInstaller.ProfileInstaller.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.253_name, ; name: libaot-Xamarin.AndroidX.ProfileInstaller.ProfileInstaller.dll.so
		ptr null; void* handle (0x0)
	}, ; 1517
	%struct.DSOCacheEntry {
		i64 3840023739, ; hash 0xe4e21cbb, from name: aot-System.Reflection.DispatchProxy.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.99_name, ; name: libaot-System.Reflection.DispatchProxy.dll.so
		ptr null; void* handle (0x0)
	}, ; 1518
	%struct.DSOCacheEntry {
		i64 3844890678, ; hash 0xe52c6036, from name: libaot-System.Net.Ping.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.79_name, ; name: libaot-System.Net.Ping.dll.so
		ptr null; void* handle (0x0)
	}, ; 1519
	%struct.DSOCacheEntry {
		i64 3852017238, ; hash 0xe5991e56, from name: libaot-Xamarin.KotlinX.Coroutines.Android.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.281_name, ; name: libaot-Xamarin.KotlinX.Coroutines.Android.dll.so
		ptr null; void* handle (0x0)
	}, ; 1520
	%struct.DSOCacheEntry {
		i64 3854296602, ; hash 0xe5bbe61a, from name: aot-System.IO.FileSystem.AccessControl
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.57_name, ; name: libaot-System.IO.FileSystem.AccessControl.dll.so
		ptr null; void* handle (0x0)
	}, ; 1521
	%struct.DSOCacheEntry {
		i64 3860312947, ; hash 0xe617b373, from name: aot-Xamarin.AndroidX.ConstraintLayout
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.218_name, ; name: libaot-Xamarin.AndroidX.ConstraintLayout.dll.so
		ptr null; void* handle (0x0)
	}, ; 1522
	%struct.DSOCacheEntry {
		i64 3864211371, ; hash 0xe6532fab, from name: aot-System.Security.Cryptography.OpenSsl.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.133_name, ; name: libaot-System.Security.Cryptography.OpenSsl.dll.so
		ptr null; void* handle (0x0)
	}, ; 1523
	%struct.DSOCacheEntry {
		i64 3864390755, ; hash 0xe655ec63, from name: System.Windows.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.164_name, ; name: libaot-System.Windows.dll.so
		ptr null; void* handle (0x0)
	}, ; 1524
	%struct.DSOCacheEntry {
		i64 3866820858, ; hash 0xe67b00fa, from name: aot-System.ServiceProcess.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.142_name, ; name: libaot-System.ServiceProcess.dll.so
		ptr null; void* handle (0x0)
	}, ; 1525
	%struct.DSOCacheEntry {
		i64 3873536506, ; hash 0xe6e179fa, from name: System.Security.Principal
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.138_name, ; name: libaot-System.Security.Principal.dll.so
		ptr null; void* handle (0x0)
	}, ; 1526
	%struct.DSOCacheEntry {
		i64 3877741179, ; hash 0xe721a27b, from name: libaot-Microsoft.Win32.Registry.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.15_name, ; name: libaot-Microsoft.Win32.Registry.dll.so
		ptr null; void* handle (0x0)
	}, ; 1527
	%struct.DSOCacheEntry {
		i64 3881546260, ; hash 0xe75bb214, from name: libaot-Mono.Android.Export
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.179_name, ; name: libaot-Mono.Android.Export.dll.so
		ptr null; void* handle (0x0)
	}, ; 1528
	%struct.DSOCacheEntry {
		i64 3882710139, ; hash 0xe76d747b, from name: aot-Mono.Android.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.181_name, ; name: libaot-Mono.Android.dll.so
		ptr null; void* handle (0x0)
	}, ; 1529
	%struct.DSOCacheEntry {
		i64 3888767677, ; hash 0xe7c9e2bd, from name: Xamarin.AndroidX.ProfileInstaller.ProfileInstaller
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.253_name, ; name: libaot-Xamarin.AndroidX.ProfileInstaller.ProfileInstaller.dll.so
		ptr null; void* handle (0x0)
	}, ; 1530
	%struct.DSOCacheEntry {
		i64 3889554181, ; hash 0xe7d5e305, from name: libaot-Microsoft.Extensions.Logging
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.188_name, ; name: libaot-Microsoft.Extensions.Logging.dll.so
		ptr null; void* handle (0x0)
	}, ; 1531
	%struct.DSOCacheEntry {
		i64 3891366301, ; hash 0xe7f1899d, from name: aot-System.Net.Http
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.74_name, ; name: libaot-System.Net.Http.dll.so
		ptr null; void* handle (0x0)
	}, ; 1532
	%struct.DSOCacheEntry {
		i64 3892615448, ; hash 0xe8049918, from name: libaot-Xamarin.AndroidX.SlidingPaneLayout.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.259_name, ; name: libaot-Xamarin.AndroidX.SlidingPaneLayout.dll.so
		ptr null; void* handle (0x0)
	}, ; 1533
	%struct.DSOCacheEntry {
		i64 3894530715, ; hash 0xe821d29b, from name: libaot-Xamarin.AndroidX.Navigation.Runtime.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.250_name, ; name: libaot-Xamarin.AndroidX.Navigation.Runtime.dll.so
		ptr null; void* handle (0x0)
	}, ; 1534
	%struct.DSOCacheEntry {
		i64 3899027519, ; hash 0xe866703f, from name: libaot-System.Diagnostics.Contracts.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.35_name, ; name: libaot-System.Diagnostics.Contracts.dll.so
		ptr null; void* handle (0x0)
	}, ; 1535
	%struct.DSOCacheEntry {
		i64 3900951485, ; hash 0xe883cbbd, from name: libaot-System.Net.WebSockets
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.90_name, ; name: libaot-System.Net.WebSockets.dll.so
		ptr null; void* handle (0x0)
	}, ; 1536
	%struct.DSOCacheEntry {
		i64 3909437042, ; hash 0xe9054672, from name: libaot-System.Memory
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.72_name, ; name: libaot-System.Memory.dll.so
		ptr null; void* handle (0x0)
	}, ; 1537
	%struct.DSOCacheEntry {
		i64 3910560976, ; hash 0xe9166cd0, from name: aot-Xamarin.AndroidX.Core.Core.Ktx.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.222_name, ; name: libaot-Xamarin.AndroidX.Core.Core.Ktx.dll.so
		ptr null; void* handle (0x0)
	}, ; 1538
	%struct.DSOCacheEntry {
		i64 3911579509, ; hash 0xe925f775, from name: aot-Xamarin.AndroidX.CustomView.PoolingContainer.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.225_name, ; name: libaot-Xamarin.AndroidX.CustomView.PoolingContainer.dll.so
		ptr null; void* handle (0x0)
	}, ; 1539
	%struct.DSOCacheEntry {
		i64 3914637484, ; hash 0xe954a0ac, from name: aot-Xamarin.Kotlin.StdLib.Common
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.278_name, ; name: libaot-Xamarin.Kotlin.StdLib.Common.dll.so
		ptr null; void* handle (0x0)
	}, ; 1540
	%struct.DSOCacheEntry {
		i64 3915264716, ; hash 0xe95e32cc, from name: aot-System.Security.Cryptography
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.136_name, ; name: libaot-System.Security.Cryptography.dll.so
		ptr null; void* handle (0x0)
	}, ; 1541
	%struct.DSOCacheEntry {
		i64 3915353232, ; hash 0xe95f8c90, from name: libaot-System.Net.WebClient.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.86_name, ; name: libaot-System.Net.WebClient.dll.so
		ptr null; void* handle (0x0)
	}, ; 1542
	%struct.DSOCacheEntry {
		i64 3916647714, ; hash 0xe9734d22, from name: libaot-System.Xml.XPath.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.170_name, ; name: libaot-System.Xml.XPath.dll.so
		ptr null; void* handle (0x0)
	}, ; 1543
	%struct.DSOCacheEntry {
		i64 3924508579, ; hash 0xe9eb3fa3, from name: aot-System.Transactions.Local
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.159_name, ; name: libaot-System.Transactions.Local.dll.so
		ptr null; void* handle (0x0)
	}, ; 1544
	%struct.DSOCacheEntry {
		i64 3925077246, ; hash 0xe9f3ecfe, from name: libaot-System.IO.Compression.Brotli.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.53_name, ; name: libaot-System.IO.Compression.Brotli.dll.so
		ptr null; void* handle (0x0)
	}, ; 1545
	%struct.DSOCacheEntry {
		i64 3926445742, ; hash 0xea08ceae, from name: libaot-Xamarin.Android.Glide.GifDecoder
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.203_name, ; name: libaot-Xamarin.Android.Glide.GifDecoder.dll.so
		ptr null; void* handle (0x0)
	}, ; 1546
	%struct.DSOCacheEntry {
		i64 3928044579, ; hash 0xea213423, from name: System.Xml.ReaderWriter
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.166_name, ; name: libaot-System.Xml.ReaderWriter.dll.so
		ptr null; void* handle (0x0)
	}, ; 1547
	%struct.DSOCacheEntry {
		i64 3930233922, ; hash 0xea429c42, from name: libaot-Xamarin.AndroidX.Collection
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.215_name, ; name: libaot-Xamarin.AndroidX.Collection.dll.so
		ptr null; void* handle (0x0)
	}, ; 1548
	%struct.DSOCacheEntry {
		i64 3930961601, ; hash 0xea4db6c1, from name: aot-Xamarin.AndroidX.Lifecycle.ViewModel.Ktx
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.244_name, ; name: libaot-Xamarin.AndroidX.Lifecycle.ViewModel.Ktx.dll.so
		ptr null; void* handle (0x0)
	}, ; 1549
	%struct.DSOCacheEntry {
		i64 3931092270, ; hash 0xea4fb52e, from name: Xamarin.AndroidX.Navigation.UI
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.251_name, ; name: libaot-Xamarin.AndroidX.Navigation.UI.dll.so
		ptr null; void* handle (0x0)
	}, ; 1550
	%struct.DSOCacheEntry {
		i64 3932309379, ; hash 0xea624783, from name: Microsoft.Win32.Registry.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.15_name, ; name: libaot-Microsoft.Win32.Registry.dll.so
		ptr null; void* handle (0x0)
	}, ; 1551
	%struct.DSOCacheEntry {
		i64 3932689723, ; hash 0xea68153b, from name: aot-Xamarin.AndroidX.VectorDrawable
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.264_name, ; name: libaot-Xamarin.AndroidX.VectorDrawable.dll.so
		ptr null; void* handle (0x0)
	}, ; 1552
	%struct.DSOCacheEntry {
		i64 3932713228, ; hash 0xea68710c, from name: libaot-System.IO.FileSystem.Primitives.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.59_name, ; name: libaot-System.IO.FileSystem.Primitives.dll.so
		ptr null; void* handle (0x0)
	}, ; 1553
	%struct.DSOCacheEntry {
		i64 3934808307, ; hash 0xea8868f3, from name: libaot-Mono.Android
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.181_name, ; name: libaot-Mono.Android.dll.so
		ptr null; void* handle (0x0)
	}, ; 1554
	%struct.DSOCacheEntry {
		i64 3935691993, ; hash 0xea95e4d9, from name: libaot-System.Security.Principal.Windows
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.137_name, ; name: libaot-System.Security.Principal.Windows.dll.so
		ptr null; void* handle (0x0)
	}, ; 1555
	%struct.DSOCacheEntry {
		i64 3936467727, ; hash 0xeaa1bb0f, from name: libaot-Xamarin.AndroidX.CardView.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.214_name, ; name: libaot-Xamarin.AndroidX.CardView.dll.so
		ptr null; void* handle (0x0)
	}, ; 1556
	%struct.DSOCacheEntry {
		i64 3941882301, ; hash 0xeaf459bd, from name: aot-Jsr305Binding
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.272_name, ; name: libaot-Jsr305Binding.dll.so
		ptr null; void* handle (0x0)
	}, ; 1557
	%struct.DSOCacheEntry {
		i64 3943891306, ; hash 0xeb13016a, from name: aot-System.Text.Encoding.CodePages
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.143_name, ; name: libaot-System.Text.Encoding.CodePages.dll.so
		ptr null; void* handle (0x0)
	}, ; 1558
	%struct.DSOCacheEntry {
		i64 3949469681, ; hash 0xeb681ff1, from name: aot-Mono.Android.Runtime.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.180_name, ; name: libaot-Mono.Android.Runtime.dll.so
		ptr null; void* handle (0x0)
	}, ; 1559
	%struct.DSOCacheEntry {
		i64 3953953790, ; hash 0xebac8bfe, from name: System.Text.Encoding.CodePages
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.143_name, ; name: libaot-System.Text.Encoding.CodePages.dll.so
		ptr null; void* handle (0x0)
	}, ; 1560
	%struct.DSOCacheEntry {
		i64 3956193289, ; hash 0xebceb809, from name: libaot-System.Memory.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.72_name, ; name: libaot-System.Memory.dll.so
		ptr null; void* handle (0x0)
	}, ; 1561
	%struct.DSOCacheEntry {
		i64 3958820853, ; hash 0xebf6cff5, from name: aot-System.Runtime.InteropServices.RuntimeInformation
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.116_name, ; name: libaot-System.Runtime.InteropServices.RuntimeInformation.dll.so
		ptr null; void* handle (0x0)
	}, ; 1562
	%struct.DSOCacheEntry {
		i64 3959773229, ; hash 0xec05582d, from name: Xamarin.AndroidX.Lifecycle.Process
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.240_name, ; name: libaot-Xamarin.AndroidX.Lifecycle.Process.dll.so
		ptr null; void* handle (0x0)
	}, ; 1563
	%struct.DSOCacheEntry {
		i64 3961462390, ; hash 0xec1f1e76, from name: libaot-System.Collections.Immutable.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.19_name, ; name: libaot-System.Collections.Immutable.dll.so
		ptr null; void* handle (0x0)
	}, ; 1564
	%struct.DSOCacheEntry {
		i64 3964477410, ; hash 0xec4d1fe2, from name: Microsoft.Maui.Graphics.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.198_name, ; name: libaot-Microsoft.Maui.Graphics.dll.so
		ptr null; void* handle (0x0)
	}, ; 1565
	%struct.DSOCacheEntry {
		i64 3964563519, ; hash 0xec4e703f, from name: aot-Xamarin.Kotlin.StdLib.Common.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.278_name, ; name: libaot-Xamarin.Kotlin.StdLib.Common.dll.so
		ptr null; void* handle (0x0)
	}, ; 1566
	%struct.DSOCacheEntry {
		i64 3972603866, ; hash 0xecc91fda, from name: aot-System.ComponentModel.DataAnnotations.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.24_name, ; name: libaot-System.ComponentModel.DataAnnotations.dll.so
		ptr null; void* handle (0x0)
	}, ; 1567
	%struct.DSOCacheEntry {
		i64 3979969436, ; hash 0xed39839c, from name: libaot-Xamarin.AndroidX.ConstraintLayout.Core
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.219_name, ; name: libaot-Xamarin.AndroidX.ConstraintLayout.Core.dll.so
		ptr null; void* handle (0x0)
	}, ; 1568
	%struct.DSOCacheEntry {
		i64 3980510446, ; hash 0xed41c4ee, from name: aot-System.Formats.Asn1
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.48_name, ; name: libaot-System.Formats.Asn1.dll.so
		ptr null; void* handle (0x0)
	}, ; 1569
	%struct.DSOCacheEntry {
		i64 3981335187, ; hash 0xed4e5a93, from name: aot-Xamarin.Kotlin.StdLib.Jdk8
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.280_name, ; name: libaot-Xamarin.Kotlin.StdLib.Jdk8.dll.so
		ptr null; void* handle (0x0)
	}, ; 1570
	%struct.DSOCacheEntry {
		i64 3983604604, ; hash 0xed70fb7c, from name: aot-Java.Interop
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.178_name, ; name: libaot-Java.Interop.dll.so
		ptr null; void* handle (0x0)
	}, ; 1571
	%struct.DSOCacheEntry {
		i64 3991557191, ; hash 0xedea5447, from name: aot-System.Numerics.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.93_name, ; name: libaot-System.Numerics.dll.so
		ptr null; void* handle (0x0)
	}, ; 1572
	%struct.DSOCacheEntry {
		i64 3992412609, ; hash 0xedf761c1, from name: System.Text.Encoding.Extensions.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.144_name, ; name: libaot-System.Text.Encoding.Extensions.dll.so
		ptr null; void* handle (0x0)
	}, ; 1573
	%struct.DSOCacheEntry {
		i64 3993813431, ; hash 0xee0cc1b7, from name: libaot-Xamarin.AndroidX.Lifecycle.LiveData.Core.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.238_name, ; name: libaot-Xamarin.AndroidX.Lifecycle.LiveData.Core.dll.so
		ptr null; void* handle (0x0)
	}, ; 1574
	%struct.DSOCacheEntry {
		i64 3996561484, ; hash 0xee36b04c, from name: aot-System.Runtime.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.126_name, ; name: libaot-System.Runtime.dll.so
		ptr null; void* handle (0x0)
	}, ; 1575
	%struct.DSOCacheEntry {
		i64 3996883099, ; hash 0xee3b989b, from name: libaot-System.Net.ServicePoint
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.84_name, ; name: libaot-System.Net.ServicePoint.dll.so
		ptr null; void* handle (0x0)
	}, ; 1576
	%struct.DSOCacheEntry {
		i64 4001521982, ; hash 0xee82613e, from name: libaot-GoogleGson.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.183_name, ; name: libaot-GoogleGson.dll.so
		ptr null; void* handle (0x0)
	}, ; 1577
	%struct.DSOCacheEntry {
		i64 4008346722, ; hash 0xeeea8462, from name: aot-Xamarin.AndroidX.Annotation
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.206_name, ; name: libaot-Xamarin.AndroidX.Annotation.dll.so
		ptr null; void* handle (0x0)
	}, ; 1578
	%struct.DSOCacheEntry {
		i64 4008891760, ; hash 0xeef2d570, from name: Xamarin.AndroidX.DrawerLayout.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.227_name, ; name: libaot-Xamarin.AndroidX.DrawerLayout.dll.so
		ptr null; void* handle (0x0)
	}, ; 1579
	%struct.DSOCacheEntry {
		i64 4024005801, ; hash 0xefd974a9, from name: libaot-System.Drawing.Primitives
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.45_name, ; name: libaot-System.Drawing.Primitives.dll.so
		ptr null; void* handle (0x0)
	}, ; 1580
	%struct.DSOCacheEntry {
		i64 4025784931, ; hash 0xeff49a63, from name: System.Memory
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.72_name, ; name: libaot-System.Memory.dll.so
		ptr null; void* handle (0x0)
	}, ; 1581
	%struct.DSOCacheEntry {
		i64 4027140892, ; hash 0xf0094b1c, from name: libaot-Xamarin.AndroidX.SwipeRefreshLayout
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.261_name, ; name: libaot-Xamarin.AndroidX.SwipeRefreshLayout.dll.so
		ptr null; void* handle (0x0)
	}, ; 1582
	%struct.DSOCacheEntry {
		i64 4027849569, ; hash 0xf0141b61, from name: aot-Xamarin.AndroidX.Tracing.Tracing
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.262_name, ; name: libaot-Xamarin.AndroidX.Tracing.Tracing.dll.so
		ptr null; void* handle (0x0)
	}, ; 1583
	%struct.DSOCacheEntry {
		i64 4030756602, ; hash 0xf04076fa, from name: libaot-Xamarin.AndroidX.DocumentFile.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.226_name, ; name: libaot-Xamarin.AndroidX.DocumentFile.dll.so
		ptr null; void* handle (0x0)
	}, ; 1584
	%struct.DSOCacheEntry {
		i64 4031292811, ; hash 0xf048a58b, from name: Xamarin.AndroidX.CardView.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.214_name, ; name: libaot-Xamarin.AndroidX.CardView.dll.so
		ptr null; void* handle (0x0)
	}, ; 1585
	%struct.DSOCacheEntry {
		i64 4035550910, ; hash 0xf0899ebe, from name: aot-Xamarin.AndroidX.ProfileInstaller.ProfileInstaller.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.253_name, ; name: libaot-Xamarin.AndroidX.ProfileInstaller.ProfileInstaller.dll.so
		ptr null; void* handle (0x0)
	}, ; 1586
	%struct.DSOCacheEntry {
		i64 4035626755, ; hash 0xf08ac703, from name: Xamarin.AndroidX.Concurrent.Futures.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.217_name, ; name: libaot-Xamarin.AndroidX.Concurrent.Futures.dll.so
		ptr null; void* handle (0x0)
	}, ; 1587
	%struct.DSOCacheEntry {
		i64 4042557652, ; hash 0xf0f488d4, from name: libaot-System.ComponentModel
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.28_name, ; name: libaot-System.ComponentModel.dll.so
		ptr null; void* handle (0x0)
	}, ; 1588
	%struct.DSOCacheEntry {
		i64 4051817882, ; hash 0xf181d59a, from name: Xamarin.Google.Crypto.Tink.Android.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.273_name, ; name: libaot-Xamarin.Google.Crypto.Tink.Android.dll.so
		ptr null; void* handle (0x0)
	}, ; 1589
	%struct.DSOCacheEntry {
		i64 4054681211, ; hash 0xf1ad867b, from name: System.Reflection.Emit.ILGeneration
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.100_name, ; name: libaot-System.Reflection.Emit.ILGeneration.dll.so
		ptr null; void* handle (0x0)
	}, ; 1590
	%struct.DSOCacheEntry {
		i64 4055633767, ; hash 0xf1bc0f67, from name: aot-System.Diagnostics.Tracing
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.44_name, ; name: libaot-System.Diagnostics.Tracing.dll.so
		ptr null; void* handle (0x0)
	}, ; 1591
	%struct.DSOCacheEntry {
		i64 4057390768, ; hash 0xf1d6deb0, from name: Microsoft.Extensions.Primitives.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.192_name, ; name: libaot-Microsoft.Extensions.Primitives.dll.so
		ptr null; void* handle (0x0)
	}, ; 1592
	%struct.DSOCacheEntry {
		i64 4062701690, ; hash 0xf227e87a, from name: libaot-System.Formats.Tar.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.49_name, ; name: libaot-System.Formats.Tar.dll.so
		ptr null; void* handle (0x0)
	}, ; 1593
	%struct.DSOCacheEntry {
		i64 4063454328, ; hash 0xf2336478, from name: aot-System.IO.Compression.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.56_name, ; name: libaot-System.IO.Compression.dll.so
		ptr null; void* handle (0x0)
	}, ; 1594
	%struct.DSOCacheEntry {
		i64 4066707603, ; hash 0xf2650893, from name: aot-System.Xml.XPath.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.170_name, ; name: libaot-System.Xml.XPath.dll.so
		ptr null; void* handle (0x0)
	}, ; 1595
	%struct.DSOCacheEntry {
		i64 4068852531, ; hash 0xf285c333, from name: aot-Xamarin.AndroidX.Emoji2.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.229_name, ; name: libaot-Xamarin.AndroidX.Emoji2.dll.so
		ptr null; void* handle (0x0)
	}, ; 1596
	%struct.DSOCacheEntry {
		i64 4076991141, ; hash 0xf301f2a5, from name: aot-System.ServiceModel.Web
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.141_name, ; name: libaot-System.ServiceModel.Web.dll.so
		ptr null; void* handle (0x0)
	}, ; 1597
	%struct.DSOCacheEntry {
		i64 4077685207, ; hash 0xf30c89d7, from name: aot-System.IO.FileSystem.Primitives.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.59_name, ; name: libaot-System.IO.FileSystem.Primitives.dll.so
		ptr null; void* handle (0x0)
	}, ; 1598
	%struct.DSOCacheEntry {
		i64 4082254757, ; hash 0xf35243a5, from name: aot-System.Linq.Parallel
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.69_name, ; name: libaot-System.Linq.Parallel.dll.so
		ptr null; void* handle (0x0)
	}, ; 1599
	%struct.DSOCacheEntry {
		i64 4083128482, ; hash 0xf35f98a2, from name: Xamarin.AndroidX.ResourceInspection.Annotation.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.255_name, ; name: libaot-Xamarin.AndroidX.ResourceInspection.Annotation.dll.so
		ptr null; void* handle (0x0)
	}, ; 1600
	%struct.DSOCacheEntry {
		i64 4085103346, ; hash 0xf37dbaf2, from name: aot-System.Reflection.TypeExtensions.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.106_name, ; name: libaot-System.Reflection.TypeExtensions.dll.so
		ptr null; void* handle (0x0)
	}, ; 1601
	%struct.DSOCacheEntry {
		i64 4087202641, ; hash 0xf39dc351, from name: mono-component-marshal-ilgen
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.5_name, ; name: libmono-component-marshal-ilgen.so
		ptr null; void* handle (0x0)
	}, ; 1602
	%struct.DSOCacheEntry {
		i64 4087759456, ; hash 0xf3a64260, from name: libaot-Xamarin.AndroidX.Legacy.Support.Core.Utils.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.235_name, ; name: libaot-Xamarin.AndroidX.Legacy.Support.Core.Utils.dll.so
		ptr null; void* handle (0x0)
	}, ; 1603
	%struct.DSOCacheEntry {
		i64 4093561575, ; hash 0xf3fecae7, from name: libaot-Microsoft.VisualBasic.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.13_name, ; name: libaot-Microsoft.VisualBasic.dll.so
		ptr null; void* handle (0x0)
	}, ; 1604
	%struct.DSOCacheEntry {
		i64 4094368364, ; hash 0xf40b1a6c, from name: aot-System.Security.SecureString
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.139_name, ; name: libaot-System.Security.SecureString.dll.so
		ptr null; void* handle (0x0)
	}, ; 1605
	%struct.DSOCacheEntry {
		i64 4100113165, ; hash 0xf462c30d, from name: System.Private.Uri
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.96_name, ; name: libaot-System.Private.Uri.dll.so
		ptr null; void* handle (0x0)
	}, ; 1606
	%struct.DSOCacheEntry {
		i64 4101282921, ; hash 0xf4749c69, from name: libaot-Xamarin.AndroidX.Activity.Ktx.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.205_name, ; name: libaot-Xamarin.AndroidX.Activity.Ktx.dll.so
		ptr null; void* handle (0x0)
	}, ; 1607
	%struct.DSOCacheEntry {
		i64 4101593132, ; hash 0xf479582c, from name: Xamarin.AndroidX.Emoji2
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.229_name, ; name: libaot-Xamarin.AndroidX.Emoji2.dll.so
		ptr null; void* handle (0x0)
	}, ; 1608
	%struct.DSOCacheEntry {
		i64 4112220824, ; hash 0xf51b8298, from name: aot-Xamarin.AndroidX.Core.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.221_name, ; name: libaot-Xamarin.AndroidX.Core.dll.so
		ptr null; void* handle (0x0)
	}, ; 1609
	%struct.DSOCacheEntry {
		i64 4112572424, ; hash 0xf520e008, from name: libaot-Xamarin.AndroidX.Window.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.269_name, ; name: libaot-Xamarin.AndroidX.Window.dll.so
		ptr null; void* handle (0x0)
	}, ; 1610
	%struct.DSOCacheEntry {
		i64 4113193990, ; hash 0xf52a5c06, from name: libaot-Xamarin.AndroidX.SwipeRefreshLayout.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.261_name, ; name: libaot-Xamarin.AndroidX.SwipeRefreshLayout.dll.so
		ptr null; void* handle (0x0)
	}, ; 1611
	%struct.DSOCacheEntry {
		i64 4117511225, ; hash 0xf56c3c39, from name: Xamarin.AndroidX.ViewPager2.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.268_name, ; name: libaot-Xamarin.AndroidX.ViewPager2.dll.so
		ptr null; void* handle (0x0)
	}, ; 1612
	%struct.DSOCacheEntry {
		i64 4121064240, ; hash 0xf5a27330, from name: System.Diagnostics.FileVersionInfo.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.38_name, ; name: libaot-System.Diagnostics.FileVersionInfo.dll.so
		ptr null; void* handle (0x0)
	}, ; 1613
	%struct.DSOCacheEntry {
		i64 4123430563, ; hash 0xf5c68ea3, from name: libaot-Xamarin.AndroidX.DynamicAnimation
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.228_name, ; name: libaot-Xamarin.AndroidX.DynamicAnimation.dll.so
		ptr null; void* handle (0x0)
	}, ; 1614
	%struct.DSOCacheEntry {
		i64 4124040645, ; hash 0xf5cfddc5, from name: aot-System.Security.Cryptography.X509Certificates.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.135_name, ; name: libaot-System.Security.Cryptography.X509Certificates.dll.so
		ptr null; void* handle (0x0)
	}, ; 1615
	%struct.DSOCacheEntry {
		i64 4124759570, ; hash 0xf5dad612, from name: libaot-System.Private.CoreLib.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.283_name, ; name: libaot-System.Private.CoreLib.dll.so
		ptr null; void* handle (0x0)
	}, ; 1616
	%struct.DSOCacheEntry {
		i64 4125976845, ; hash 0xf5ed690d, from name: System.ComponentModel.TypeConverter.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.27_name, ; name: libaot-System.ComponentModel.TypeConverter.dll.so
		ptr null; void* handle (0x0)
	}, ; 1617
	%struct.DSOCacheEntry {
		i64 4126470640, ; hash 0xf5f4f1f0, from name: Microsoft.Extensions.DependencyInjection
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.186_name, ; name: libaot-Microsoft.Extensions.DependencyInjection.dll.so
		ptr null; void* handle (0x0)
	}, ; 1618
	%struct.DSOCacheEntry {
		i64 4126614450, ; hash 0xf5f723b2, from name: aot-Microsoft.Maui.Graphics
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.198_name, ; name: libaot-Microsoft.Maui.Graphics.dll.so
		ptr null; void* handle (0x0)
	}, ; 1619
	%struct.DSOCacheEntry {
		i64 4127599839, ; hash 0xf6062cdf, from name: aot-System.Net.NameResolution.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.77_name, ; name: libaot-System.Net.NameResolution.dll.so
		ptr null; void* handle (0x0)
	}, ; 1620
	%struct.DSOCacheEntry {
		i64 4127667938, ; hash 0xf60736e2, from name: System.IO.FileSystem.Watcher
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.60_name, ; name: libaot-System.IO.FileSystem.Watcher.dll.so
		ptr null; void* handle (0x0)
	}, ; 1621
	%struct.DSOCacheEntry {
		i64 4130442656, ; hash 0xf6318da0, from name: System.AppContext
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.16_name, ; name: libaot-System.AppContext.dll.so
		ptr null; void* handle (0x0)
	}, ; 1622
	%struct.DSOCacheEntry {
		i64 4138783678, ; hash 0xf6b0d3be, from name: aot-Xamarin.AndroidX.Browser.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.213_name, ; name: libaot-Xamarin.AndroidX.Browser.dll.so
		ptr null; void* handle (0x0)
	}, ; 1623
	%struct.DSOCacheEntry {
		i64 4141496111, ; hash 0xf6da372f, from name: libaot-Microsoft.Extensions.Primitives
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.192_name, ; name: libaot-Microsoft.Extensions.Primitives.dll.so
		ptr null; void* handle (0x0)
	}, ; 1624
	%struct.DSOCacheEntry {
		i64 4147491756, ; hash 0xf735b3ac, from name: Xamarin.AndroidX.RecyclerView.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.254_name, ; name: libaot-Xamarin.AndroidX.RecyclerView.dll.so
		ptr null; void* handle (0x0)
	}, ; 1625
	%struct.DSOCacheEntry {
		i64 4151237749, ; hash 0xf76edc75, from name: System.Core
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.31_name, ; name: libaot-System.Core.dll.so
		ptr null; void* handle (0x0)
	}, ; 1626
	%struct.DSOCacheEntry {
		i64 4152357740, ; hash 0xf77ff36c, from name: libmono-component-debugger.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.3_name, ; name: libmono-component-debugger.so
		ptr null; void* handle (0x0)
	}, ; 1627
	%struct.DSOCacheEntry {
		i64 4154531413, ; hash 0xf7a11e55, from name: aot-System
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.174_name, ; name: libaot-System.dll.so
		ptr null; void* handle (0x0)
	}, ; 1628
	%struct.DSOCacheEntry {
		i64 4157543055, ; hash 0xf7cf128f, from name: libaot-System.Reflection.Metadata
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.104_name, ; name: libaot-System.Reflection.Metadata.dll.so
		ptr null; void* handle (0x0)
	}, ; 1629
	%struct.DSOCacheEntry {
		i64 4159265925, ; hash 0xf7e95c85, from name: System.Xml.XmlSerializer
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.172_name, ; name: libaot-System.Xml.XmlSerializer.dll.so
		ptr null; void* handle (0x0)
	}, ; 1630
	%struct.DSOCacheEntry {
		i64 4159683834, ; hash 0xf7efbcfa, from name: libaot-System.ComponentModel.EventBasedAsync
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.25_name, ; name: libaot-System.ComponentModel.EventBasedAsync.dll.so
		ptr null; void* handle (0x0)
	}, ; 1631
	%struct.DSOCacheEntry {
		i64 4161255271, ; hash 0xf807b767, from name: System.Reflection.TypeExtensions
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.106_name, ; name: libaot-System.Reflection.TypeExtensions.dll.so
		ptr null; void* handle (0x0)
	}, ; 1632
	%struct.DSOCacheEntry {
		i64 4161309507, ; hash 0xf8088b43, from name: libaot-System.Private.CoreLib
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.283_name, ; name: libaot-System.Private.CoreLib.dll.so
		ptr null; void* handle (0x0)
	}, ; 1633
	%struct.DSOCacheEntry {
		i64 4166655295, ; hash 0xf85a1d3f, from name: libaot-System.Text.Encoding.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.145_name, ; name: libaot-System.Text.Encoding.dll.so
		ptr null; void* handle (0x0)
	}, ; 1634
	%struct.DSOCacheEntry {
		i64 4167185970, ; hash 0xf8623632, from name: aot-System.Configuration
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.29_name, ; name: libaot-System.Configuration.dll.so
		ptr null; void* handle (0x0)
	}, ; 1635
	%struct.DSOCacheEntry {
		i64 4168181461, ; hash 0xf87166d5, from name: libaot-System.Collections.Immutable
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.19_name, ; name: libaot-System.Collections.Immutable.dll.so
		ptr null; void* handle (0x0)
	}, ; 1636
	%struct.DSOCacheEntry {
		i64 4168496586, ; hash 0xf87635ca, from name: aot-System.Security.Principal.Windows
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.137_name, ; name: libaot-System.Security.Principal.Windows.dll.so
		ptr null; void* handle (0x0)
	}, ; 1637
	%struct.DSOCacheEntry {
		i64 4169082996, ; hash 0xf87f2874, from name: libaot-Xamarin.AndroidX.Core
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.221_name, ; name: libaot-Xamarin.AndroidX.Core.dll.so
		ptr null; void* handle (0x0)
	}, ; 1638
	%struct.DSOCacheEntry {
		i64 4173297316, ; hash 0xf8bf76a4, from name: libaot-System.Net.NameResolution
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.77_name, ; name: libaot-System.Net.NameResolution.dll.so
		ptr null; void* handle (0x0)
	}, ; 1639
	%struct.DSOCacheEntry {
		i64 4174629528, ; hash 0xf8d3ca98, from name: aot-Microsoft.Maui.Essentials
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.197_name, ; name: libaot-Microsoft.Maui.Essentials.dll.so
		ptr null; void* handle (0x0)
	}, ; 1640
	%struct.DSOCacheEntry {
		i64 4181039957, ; hash 0xf9359b55, from name: aot-Jsr305Binding.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.272_name, ; name: libaot-Jsr305Binding.dll.so
		ptr null; void* handle (0x0)
	}, ; 1641
	%struct.DSOCacheEntry {
		i64 4181436372, ; hash 0xf93ba7d4, from name: System.Runtime.Serialization.Primitives
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.123_name, ; name: libaot-System.Runtime.Serialization.Primitives.dll.so
		ptr null; void* handle (0x0)
	}, ; 1642
	%struct.DSOCacheEntry {
		i64 4184302796, ; hash 0xf96764cc, from name: mono-component-debugger.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.3_name, ; name: libmono-component-debugger.so
		ptr null; void* handle (0x0)
	}, ; 1643
	%struct.DSOCacheEntry {
		i64 4185676441, ; hash 0xf97c5a99, from name: System.Security
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.140_name, ; name: libaot-System.Security.dll.so
		ptr null; void* handle (0x0)
	}, ; 1644
	%struct.DSOCacheEntry {
		i64 4185748872, ; hash 0xf97d7588, from name: libaot-System.Threading.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.158_name, ; name: libaot-System.Threading.dll.so
		ptr null; void* handle (0x0)
	}, ; 1645
	%struct.DSOCacheEntry {
		i64 4190964592, ; hash 0xf9cd0b70, from name: System.Runtime.Serialization.Json.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.122_name, ; name: libaot-System.Runtime.Serialization.Json.dll.so
		ptr null; void* handle (0x0)
	}, ; 1646
	%struct.DSOCacheEntry {
		i64 4194414906, ; hash 0xfa01b13a, from name: aot-System.Private.Xml.Linq.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.97_name, ; name: libaot-System.Private.Xml.Linq.dll.so
		ptr null; void* handle (0x0)
	}, ; 1647
	%struct.DSOCacheEntry {
		i64 4198755985, ; hash 0xfa43ee91, from name: aot-Xamarin.AndroidX.CardView
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.214_name, ; name: libaot-Xamarin.AndroidX.CardView.dll.so
		ptr null; void* handle (0x0)
	}, ; 1648
	%struct.DSOCacheEntry {
		i64 4199366255, ; hash 0xfa4d3e6f, from name: libaot-System.Web.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.163_name, ; name: libaot-System.Web.dll.so
		ptr null; void* handle (0x0)
	}, ; 1649
	%struct.DSOCacheEntry {
		i64 4202493026, ; hash 0xfa7cf462, from name: libaot-System.Data.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.34_name, ; name: libaot-System.Data.dll.so
		ptr null; void* handle (0x0)
	}, ; 1650
	%struct.DSOCacheEntry {
		i64 4202975478, ; hash 0xfa8450f6, from name: libaot-Xamarin.AndroidX.DynamicAnimation.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.228_name, ; name: libaot-Xamarin.AndroidX.DynamicAnimation.dll.so
		ptr null; void* handle (0x0)
	}, ; 1651
	%struct.DSOCacheEntry {
		i64 4203668311, ; hash 0xfa8ee357, from name: libaot-System.Net.NetworkInformation
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.78_name, ; name: libaot-System.Net.NetworkInformation.dll.so
		ptr null; void* handle (0x0)
	}, ; 1652
	%struct.DSOCacheEntry {
		i64 4216448956, ; hash 0xfb51e7bc, from name: System.Reflection.Metadata.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.104_name, ; name: libaot-System.Reflection.Metadata.dll.so
		ptr null; void* handle (0x0)
	}, ; 1653
	%struct.DSOCacheEntry {
		i64 4216688043, ; hash 0xfb558dab, from name: aot-System.Numerics
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.93_name, ; name: libaot-System.Numerics.dll.so
		ptr null; void* handle (0x0)
	}, ; 1654
	%struct.DSOCacheEntry {
		i64 4217903328, ; hash 0xfb6818e0, from name: libaot-Xamarin.AndroidX.Legacy.Support.Core.Utils
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.235_name, ; name: libaot-Xamarin.AndroidX.Legacy.Support.Core.Utils.dll.so
		ptr null; void* handle (0x0)
	}, ; 1655
	%struct.DSOCacheEntry {
		i64 4219935887, ; hash 0xfb871c8f, from name: aot-System.IO.MemoryMappedFiles
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.63_name, ; name: libaot-System.IO.MemoryMappedFiles.dll.so
		ptr null; void* handle (0x0)
	}, ; 1656
	%struct.DSOCacheEntry {
		i64 4223557098, ; hash 0xfbbe5dea, from name: System.Linq.Queryable.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.70_name, ; name: libaot-System.Linq.Queryable.dll.so
		ptr null; void* handle (0x0)
	}, ; 1657
	%struct.DSOCacheEntry {
		i64 4224035530, ; hash 0xfbc5aaca, from name: aot-Mono.Android.Runtime
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.180_name, ; name: libaot-Mono.Android.Runtime.dll.so
		ptr null; void* handle (0x0)
	}, ; 1658
	%struct.DSOCacheEntry {
		i64 4233363484, ; hash 0xfc54001c, from name: System.Xml.Serialization.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.167_name, ; name: libaot-System.Xml.Serialization.dll.so
		ptr null; void* handle (0x0)
	}, ; 1659
	%struct.DSOCacheEntry {
		i64 4233710920, ; hash 0xfc594d48, from name: aot-Xamarin.AndroidX.Interpolator
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.234_name, ; name: libaot-Xamarin.AndroidX.Interpolator.dll.so
		ptr null; void* handle (0x0)
	}, ; 1660
	%struct.DSOCacheEntry {
		i64 4238303082, ; hash 0xfc9f5f6a, from name: aot-System.Threading.ThreadPool.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.156_name, ; name: libaot-System.Threading.ThreadPool.dll.so
		ptr null; void* handle (0x0)
	}, ; 1661
	%struct.DSOCacheEntry {
		i64 4249989576, ; hash 0xfd51b1c8, from name: aot-Xamarin.AndroidX.Window.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.269_name, ; name: libaot-Xamarin.AndroidX.Window.dll.so
		ptr null; void* handle (0x0)
	}, ; 1662
	%struct.DSOCacheEntry {
		i64 4254568634, ; hash 0xfd9790ba, from name: Xamarin.AndroidX.Navigation.Runtime.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.250_name, ; name: libaot-Xamarin.AndroidX.Navigation.Runtime.dll.so
		ptr null; void* handle (0x0)
	}, ; 1663
	%struct.DSOCacheEntry {
		i64 4254738242, ; hash 0xfd9a2742, from name: aot-System.Collections.Specialized.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.21_name, ; name: libaot-System.Collections.Specialized.dll.so
		ptr null; void* handle (0x0)
	}, ; 1664
	%struct.DSOCacheEntry {
		i64 4256097574, ; hash 0xfdaee526, from name: Xamarin.AndroidX.Core.Core.Ktx
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.222_name, ; name: libaot-Xamarin.AndroidX.Core.Core.Ktx.dll.so
		ptr null; void* handle (0x0)
	}, ; 1665
	%struct.DSOCacheEntry {
		i64 4258378803, ; hash 0xfdd1b433, from name: Xamarin.AndroidX.Lifecycle.ViewModel.Ktx
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.244_name, ; name: libaot-Xamarin.AndroidX.Lifecycle.ViewModel.Ktx.dll.so
		ptr null; void* handle (0x0)
	}, ; 1666
	%struct.DSOCacheEntry {
		i64 4260525087, ; hash 0xfdf2741f, from name: System.Buffers
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.17_name, ; name: libaot-System.Buffers.dll.so
		ptr null; void* handle (0x0)
	}, ; 1667
	%struct.DSOCacheEntry {
		i64 4264013839, ; hash 0xfe27b00f, from name: libaot-System.Runtime.Serialization.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.125_name, ; name: libaot-System.Runtime.Serialization.dll.so
		ptr null; void* handle (0x0)
	}, ; 1668
	%struct.DSOCacheEntry {
		i64 4264044254, ; hash 0xfe2826de, from name: libaot-System.Runtime.InteropServices
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.117_name, ; name: libaot-System.Runtime.InteropServices.dll.so
		ptr null; void* handle (0x0)
	}, ; 1669
	%struct.DSOCacheEntry {
		i64 4264632430, ; hash 0xfe31206e, from name: libaot-System.Resources.ResourceManager.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.109_name, ; name: libaot-System.Resources.ResourceManager.dll.so
		ptr null; void* handle (0x0)
	}, ; 1670
	%struct.DSOCacheEntry {
		i64 4268523408, ; hash 0xfe6c7f90, from name: aot-Microsoft.Win32.Primitives
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.14_name, ; name: libaot-Microsoft.Win32.Primitives.dll.so
		ptr null; void* handle (0x0)
	}, ; 1671
	%struct.DSOCacheEntry {
		i64 4270991500, ; hash 0xfe92288c, from name: aot-Microsoft.Extensions.Options.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.191_name, ; name: libaot-Microsoft.Extensions.Options.dll.so
		ptr null; void* handle (0x0)
	}, ; 1672
	%struct.DSOCacheEntry {
		i64 4271960013, ; hash 0xfea0efcd, from name: aot-System.Reflection.Metadata
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.104_name, ; name: libaot-System.Reflection.Metadata.dll.so
		ptr null; void* handle (0x0)
	}, ; 1673
	%struct.DSOCacheEntry {
		i64 4274711243, ; hash 0xfecaeacb, from name: libaot-System.Diagnostics.Process.dll.so
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.39_name, ; name: libaot-System.Diagnostics.Process.dll.so
		ptr null; void* handle (0x0)
	}, ; 1674
	%struct.DSOCacheEntry {
		i64 4274976490, ; hash 0xfecef6ea, from name: System.Runtime.Numerics
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.120_name, ; name: libaot-System.Runtime.Numerics.dll.so
		ptr null; void* handle (0x0)
	}, ; 1675
	%struct.DSOCacheEntry {
		i64 4280470307, ; hash 0xff22cb23, from name: libaot-System.Text.Encodings.Web
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.146_name, ; name: libaot-System.Text.Encodings.Web.dll.so
		ptr null; void* handle (0x0)
	}, ; 1676
	%struct.DSOCacheEntry {
		i64 4281329653, ; hash 0xff2fe7f5, from name: libaot-System.IO.Pipes.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.65_name, ; name: libaot-System.IO.Pipes.dll.so
		ptr null; void* handle (0x0)
	}, ; 1677
	%struct.DSOCacheEntry {
		i64 4281468691, ; hash 0xff320713, from name: libaot-Microsoft.Extensions.Logging.Debug
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.190_name, ; name: libaot-Microsoft.Extensions.Logging.Debug.dll.so
		ptr null; void* handle (0x0)
	}, ; 1678
	%struct.DSOCacheEntry {
		i64 4288261976, ; hash 0xff99af58, from name: mono-component-debugger
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.3_name, ; name: libmono-component-debugger.so
		ptr null; void* handle (0x0)
	}, ; 1679
	%struct.DSOCacheEntry {
		i64 4288835934, ; hash 0xffa2715e, from name: System.Drawing.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.46_name, ; name: libaot-System.Drawing.dll.so
		ptr null; void* handle (0x0)
	}, ; 1680
	%struct.DSOCacheEntry {
		i64 4289040471, ; hash 0xffa59057, from name: aot-System.Web.HttpUtility
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.162_name, ; name: libaot-System.Web.HttpUtility.dll.so
		ptr null; void* handle (0x0)
	}, ; 1681
	%struct.DSOCacheEntry {
		i64 4292070286, ; hash 0xffd3cb8e, from name: libaot-System.IO.FileSystem.AccessControl.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.57_name, ; name: libaot-System.IO.FileSystem.AccessControl.dll.so
		ptr null; void* handle (0x0)
	}, ; 1682
	%struct.DSOCacheEntry {
		i64 4292120959, ; hash 0xffd4917f, from name: Xamarin.AndroidX.Lifecycle.ViewModelSavedState
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.245_name, ; name: libaot-Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll.so
		ptr null; void* handle (0x0)
	}, ; 1683
	%struct.DSOCacheEntry {
		i64 4293691339, ; hash 0xffec87cb, from name: libaot-System.Runtime.Serialization.Xml.dll.so
		i8 1, ; bool ignore
		ptr @.DSOCacheEntry.124_name, ; name: libaot-System.Runtime.Serialization.Xml.dll.so
		ptr null; void* handle (0x0)
	}, ; 1684
	%struct.DSOCacheEntry {
		i64 4294570506, ; hash 0xfff9f20a, from name: libaot-Microsoft.Extensions.DependencyInjection.Abstractions
		i8 0, ; bool ignore
		ptr @.DSOCacheEntry.187_name, ; name: libaot-Microsoft.Extensions.DependencyInjection.Abstractions.dll.so
		ptr null; void* handle (0x0)
	} ; 1685
], align 8

@_XamarinAndroidBundledAssembly_name_0_0 = internal dso_local global [62 x i8] zeroinitializer, align 1
@_XamarinAndroidBundledAssembly_name_1_1 = internal dso_local global [62 x i8] zeroinitializer, align 1
@_XamarinAndroidBundledAssembly_name_2_2 = internal dso_local global [62 x i8] zeroinitializer, align 1
@_XamarinAndroidBundledAssembly_name_3_3 = internal dso_local global [62 x i8] zeroinitializer, align 1
@_XamarinAndroidBundledAssembly_name_4_4 = internal dso_local global [62 x i8] zeroinitializer, align 1
@_XamarinAndroidBundledAssembly_name_5_5 = internal dso_local global [62 x i8] zeroinitializer, align 1
@_XamarinAndroidBundledAssembly_name_6_6 = internal dso_local global [62 x i8] zeroinitializer, align 1
@_XamarinAndroidBundledAssembly_name_7_7 = internal dso_local global [62 x i8] zeroinitializer, align 1
@_XamarinAndroidBundledAssembly_name_8_8 = internal dso_local global [62 x i8] zeroinitializer, align 1
@_XamarinAndroidBundledAssembly_name_9_9 = internal dso_local global [62 x i8] zeroinitializer, align 1
@_XamarinAndroidBundledAssembly_name_a_a = internal dso_local global [62 x i8] zeroinitializer, align 1
@_XamarinAndroidBundledAssembly_name_b_b = internal dso_local global [62 x i8] zeroinitializer, align 1
@_XamarinAndroidBundledAssembly_name_c_c = internal dso_local global [62 x i8] zeroinitializer, align 1
@_XamarinAndroidBundledAssembly_name_d_d = internal dso_local global [62 x i8] zeroinitializer, align 1
@_XamarinAndroidBundledAssembly_name_e_e = internal dso_local global [62 x i8] zeroinitializer, align 1
@_XamarinAndroidBundledAssembly_name_f_f = internal dso_local global [62 x i8] zeroinitializer, align 1
@_XamarinAndroidBundledAssembly_name_10_10 = internal dso_local global [62 x i8] zeroinitializer, align 1
@_XamarinAndroidBundledAssembly_name_11_11 = internal dso_local global [62 x i8] zeroinitializer, align 1
@_XamarinAndroidBundledAssembly_name_12_12 = internal dso_local global [62 x i8] zeroinitializer, align 1
@_XamarinAndroidBundledAssembly_name_13_13 = internal dso_local global [62 x i8] zeroinitializer, align 1
@_XamarinAndroidBundledAssembly_name_14_14 = internal dso_local global [62 x i8] zeroinitializer, align 1
@_XamarinAndroidBundledAssembly_name_15_15 = internal dso_local global [62 x i8] zeroinitializer, align 1
@_XamarinAndroidBundledAssembly_name_16_16 = internal dso_local global [62 x i8] zeroinitializer, align 1
@_XamarinAndroidBundledAssembly_name_17_17 = internal dso_local global [62 x i8] zeroinitializer, align 1
@_XamarinAndroidBundledAssembly_name_18_18 = internal dso_local global [62 x i8] zeroinitializer, align 1
@_XamarinAndroidBundledAssembly_name_19_19 = internal dso_local global [62 x i8] zeroinitializer, align 1
@_XamarinAndroidBundledAssembly_name_1a_1a = internal dso_local global [62 x i8] zeroinitializer, align 1
@_XamarinAndroidBundledAssembly_name_1b_1b = internal dso_local global [62 x i8] zeroinitializer, align 1
@_XamarinAndroidBundledAssembly_name_1c_1c = internal dso_local global [62 x i8] zeroinitializer, align 1
@_XamarinAndroidBundledAssembly_name_1d_1d = internal dso_local global [62 x i8] zeroinitializer, align 1
@_XamarinAndroidBundledAssembly_name_1e_1e = internal dso_local global [62 x i8] zeroinitializer, align 1
@_XamarinAndroidBundledAssembly_name_1f_1f = internal dso_local global [62 x i8] zeroinitializer, align 1
@_XamarinAndroidBundledAssembly_name_20_20 = internal dso_local global [62 x i8] zeroinitializer, align 1
@_XamarinAndroidBundledAssembly_name_21_21 = internal dso_local global [62 x i8] zeroinitializer, align 1
@_XamarinAndroidBundledAssembly_name_22_22 = internal dso_local global [62 x i8] zeroinitializer, align 1
@_XamarinAndroidBundledAssembly_name_23_23 = internal dso_local global [62 x i8] zeroinitializer, align 1
@_XamarinAndroidBundledAssembly_name_24_24 = internal dso_local global [62 x i8] zeroinitializer, align 1
@_XamarinAndroidBundledAssembly_name_25_25 = internal dso_local global [62 x i8] zeroinitializer, align 1
@_XamarinAndroidBundledAssembly_name_26_26 = internal dso_local global [62 x i8] zeroinitializer, align 1
@_XamarinAndroidBundledAssembly_name_27_27 = internal dso_local global [62 x i8] zeroinitializer, align 1
@_XamarinAndroidBundledAssembly_name_28_28 = internal dso_local global [62 x i8] zeroinitializer, align 1
@_XamarinAndroidBundledAssembly_name_29_29 = internal dso_local global [62 x i8] zeroinitializer, align 1
@_XamarinAndroidBundledAssembly_name_2a_2a = internal dso_local global [62 x i8] zeroinitializer, align 1
@_XamarinAndroidBundledAssembly_name_2b_2b = internal dso_local global [62 x i8] zeroinitializer, align 1
@_XamarinAndroidBundledAssembly_name_2c_2c = internal dso_local global [62 x i8] zeroinitializer, align 1
@_XamarinAndroidBundledAssembly_name_2d_2d = internal dso_local global [62 x i8] zeroinitializer, align 1
@_XamarinAndroidBundledAssembly_name_2e_2e = internal dso_local global [62 x i8] zeroinitializer, align 1
@_XamarinAndroidBundledAssembly_name_2f_2f = internal dso_local global [62 x i8] zeroinitializer, align 1
@_XamarinAndroidBundledAssembly_name_30_30 = internal dso_local global [62 x i8] zeroinitializer, align 1
@_XamarinAndroidBundledAssembly_name_31_31 = internal dso_local global [62 x i8] zeroinitializer, align 1
@_XamarinAndroidBundledAssembly_name_32_32 = internal dso_local global [62 x i8] zeroinitializer, align 1
@_XamarinAndroidBundledAssembly_name_33_33 = internal dso_local global [62 x i8] zeroinitializer, align 1
@_XamarinAndroidBundledAssembly_name_34_34 = internal dso_local global [62 x i8] zeroinitializer, align 1
@_XamarinAndroidBundledAssembly_name_35_35 = internal dso_local global [62 x i8] zeroinitializer, align 1
@_XamarinAndroidBundledAssembly_name_36_36 = internal dso_local global [62 x i8] zeroinitializer, align 1
@_XamarinAndroidBundledAssembly_name_37_37 = internal dso_local global [62 x i8] zeroinitializer, align 1
@_XamarinAndroidBundledAssembly_name_38_38 = internal dso_local global [62 x i8] zeroinitializer, align 1
@_XamarinAndroidBundledAssembly_name_39_39 = internal dso_local global [62 x i8] zeroinitializer, align 1
@_XamarinAndroidBundledAssembly_name_3a_3a = internal dso_local global [62 x i8] zeroinitializer, align 1
@_XamarinAndroidBundledAssembly_name_3b_3b = internal dso_local global [62 x i8] zeroinitializer, align 1
@_XamarinAndroidBundledAssembly_name_3c_3c = internal dso_local global [62 x i8] zeroinitializer, align 1
@_XamarinAndroidBundledAssembly_name_3d_3d = internal dso_local global [62 x i8] zeroinitializer, align 1
@_XamarinAndroidBundledAssembly_name_3e_3e = internal dso_local global [62 x i8] zeroinitializer, align 1
@_XamarinAndroidBundledAssembly_name_3f_3f = internal dso_local global [62 x i8] zeroinitializer, align 1
@_XamarinAndroidBundledAssembly_name_40_40 = internal dso_local global [62 x i8] zeroinitializer, align 1
@_XamarinAndroidBundledAssembly_name_41_41 = internal dso_local global [62 x i8] zeroinitializer, align 1
@_XamarinAndroidBundledAssembly_name_42_42 = internal dso_local global [62 x i8] zeroinitializer, align 1
@_XamarinAndroidBundledAssembly_name_43_43 = internal dso_local global [62 x i8] zeroinitializer, align 1
@_XamarinAndroidBundledAssembly_name_44_44 = internal dso_local global [62 x i8] zeroinitializer, align 1
@_XamarinAndroidBundledAssembly_name_45_45 = internal dso_local global [62 x i8] zeroinitializer, align 1
@_XamarinAndroidBundledAssembly_name_46_46 = internal dso_local global [62 x i8] zeroinitializer, align 1
@_XamarinAndroidBundledAssembly_name_47_47 = internal dso_local global [62 x i8] zeroinitializer, align 1
@_XamarinAndroidBundledAssembly_name_48_48 = internal dso_local global [62 x i8] zeroinitializer, align 1
@_XamarinAndroidBundledAssembly_name_49_49 = internal dso_local global [62 x i8] zeroinitializer, align 1
@_XamarinAndroidBundledAssembly_name_4a_4a = internal dso_local global [62 x i8] zeroinitializer, align 1
@_XamarinAndroidBundledAssembly_name_4b_4b = internal dso_local global [62 x i8] zeroinitializer, align 1
@_XamarinAndroidBundledAssembly_name_4c_4c = internal dso_local global [62 x i8] zeroinitializer, align 1
@_XamarinAndroidBundledAssembly_name_4d_4d = internal dso_local global [62 x i8] zeroinitializer, align 1
@_XamarinAndroidBundledAssembly_name_4e_4e = internal dso_local global [62 x i8] zeroinitializer, align 1
@_XamarinAndroidBundledAssembly_name_4f_4f = internal dso_local global [62 x i8] zeroinitializer, align 1
@_XamarinAndroidBundledAssembly_name_50_50 = internal dso_local global [62 x i8] zeroinitializer, align 1
@_XamarinAndroidBundledAssembly_name_51_51 = internal dso_local global [62 x i8] zeroinitializer, align 1
@_XamarinAndroidBundledAssembly_name_52_52 = internal dso_local global [62 x i8] zeroinitializer, align 1
@_XamarinAndroidBundledAssembly_name_53_53 = internal dso_local global [62 x i8] zeroinitializer, align 1
@_XamarinAndroidBundledAssembly_name_54_54 = internal dso_local global [62 x i8] zeroinitializer, align 1
@_XamarinAndroidBundledAssembly_name_55_55 = internal dso_local global [62 x i8] zeroinitializer, align 1
@_XamarinAndroidBundledAssembly_name_56_56 = internal dso_local global [62 x i8] zeroinitializer, align 1
@_XamarinAndroidBundledAssembly_name_57_57 = internal dso_local global [62 x i8] zeroinitializer, align 1
@_XamarinAndroidBundledAssembly_name_58_58 = internal dso_local global [62 x i8] zeroinitializer, align 1
@_XamarinAndroidBundledAssembly_name_59_59 = internal dso_local global [62 x i8] zeroinitializer, align 1
@_XamarinAndroidBundledAssembly_name_5a_5a = internal dso_local global [62 x i8] zeroinitializer, align 1
@_XamarinAndroidBundledAssembly_name_5b_5b = internal dso_local global [62 x i8] zeroinitializer, align 1
@_XamarinAndroidBundledAssembly_name_5c_5c = internal dso_local global [62 x i8] zeroinitializer, align 1
@_XamarinAndroidBundledAssembly_name_5d_5d = internal dso_local global [62 x i8] zeroinitializer, align 1
@_XamarinAndroidBundledAssembly_name_5e_5e = internal dso_local global [62 x i8] zeroinitializer, align 1
@_XamarinAndroidBundledAssembly_name_5f_5f = internal dso_local global [62 x i8] zeroinitializer, align 1
@_XamarinAndroidBundledAssembly_name_60_60 = internal dso_local global [62 x i8] zeroinitializer, align 1
@_XamarinAndroidBundledAssembly_name_61_61 = internal dso_local global [62 x i8] zeroinitializer, align 1
@_XamarinAndroidBundledAssembly_name_62_62 = internal dso_local global [62 x i8] zeroinitializer, align 1
@_XamarinAndroidBundledAssembly_name_63_63 = internal dso_local global [62 x i8] zeroinitializer, align 1
@_XamarinAndroidBundledAssembly_name_64_64 = internal dso_local global [62 x i8] zeroinitializer, align 1
@_XamarinAndroidBundledAssembly_name_65_65 = internal dso_local global [62 x i8] zeroinitializer, align 1
@_XamarinAndroidBundledAssembly_name_66_66 = internal dso_local global [62 x i8] zeroinitializer, align 1
@_XamarinAndroidBundledAssembly_name_67_67 = internal dso_local global [62 x i8] zeroinitializer, align 1
@_XamarinAndroidBundledAssembly_name_68_68 = internal dso_local global [62 x i8] zeroinitializer, align 1
@_XamarinAndroidBundledAssembly_name_69_69 = internal dso_local global [62 x i8] zeroinitializer, align 1
@_XamarinAndroidBundledAssembly_name_6a_6a = internal dso_local global [62 x i8] zeroinitializer, align 1
@_XamarinAndroidBundledAssembly_name_6b_6b = internal dso_local global [62 x i8] zeroinitializer, align 1
@_XamarinAndroidBundledAssembly_name_6c_6c = internal dso_local global [62 x i8] zeroinitializer, align 1
@_XamarinAndroidBundledAssembly_name_6d_6d = internal dso_local global [62 x i8] zeroinitializer, align 1
@_XamarinAndroidBundledAssembly_name_6e_6e = internal dso_local global [62 x i8] zeroinitializer, align 1
@_XamarinAndroidBundledAssembly_name_6f_6f = internal dso_local global [62 x i8] zeroinitializer, align 1
@_XamarinAndroidBundledAssembly_name_70_70 = internal dso_local global [62 x i8] zeroinitializer, align 1
@_XamarinAndroidBundledAssembly_name_71_71 = internal dso_local global [62 x i8] zeroinitializer, align 1
@_XamarinAndroidBundledAssembly_name_72_72 = internal dso_local global [62 x i8] zeroinitializer, align 1
@_XamarinAndroidBundledAssembly_name_73_73 = internal dso_local global [62 x i8] zeroinitializer, align 1
@_XamarinAndroidBundledAssembly_name_74_74 = internal dso_local global [62 x i8] zeroinitializer, align 1
@_XamarinAndroidBundledAssembly_name_75_75 = internal dso_local global [62 x i8] zeroinitializer, align 1
@_XamarinAndroidBundledAssembly_name_76_76 = internal dso_local global [62 x i8] zeroinitializer, align 1
@_XamarinAndroidBundledAssembly_name_77_77 = internal dso_local global [62 x i8] zeroinitializer, align 1
@_XamarinAndroidBundledAssembly_name_78_78 = internal dso_local global [62 x i8] zeroinitializer, align 1
@_XamarinAndroidBundledAssembly_name_79_79 = internal dso_local global [62 x i8] zeroinitializer, align 1
@_XamarinAndroidBundledAssembly_name_7a_7a = internal dso_local global [62 x i8] zeroinitializer, align 1
@_XamarinAndroidBundledAssembly_name_7b_7b = internal dso_local global [62 x i8] zeroinitializer, align 1
@_XamarinAndroidBundledAssembly_name_7c_7c = internal dso_local global [62 x i8] zeroinitializer, align 1
@_XamarinAndroidBundledAssembly_name_7d_7d = internal dso_local global [62 x i8] zeroinitializer, align 1
@_XamarinAndroidBundledAssembly_name_7e_7e = internal dso_local global [62 x i8] zeroinitializer, align 1
@_XamarinAndroidBundledAssembly_name_7f_7f = internal dso_local global [62 x i8] zeroinitializer, align 1
@_XamarinAndroidBundledAssembly_name_80_80 = internal dso_local global [62 x i8] zeroinitializer, align 1
@_XamarinAndroidBundledAssembly_name_81_81 = internal dso_local global [62 x i8] zeroinitializer, align 1
@_XamarinAndroidBundledAssembly_name_82_82 = internal dso_local global [62 x i8] zeroinitializer, align 1
@_XamarinAndroidBundledAssembly_name_83_83 = internal dso_local global [62 x i8] zeroinitializer, align 1
@_XamarinAndroidBundledAssembly_name_84_84 = internal dso_local global [62 x i8] zeroinitializer, align 1
@_XamarinAndroidBundledAssembly_name_85_85 = internal dso_local global [62 x i8] zeroinitializer, align 1
@_XamarinAndroidBundledAssembly_name_86_86 = internal dso_local global [62 x i8] zeroinitializer, align 1
@_XamarinAndroidBundledAssembly_name_87_87 = internal dso_local global [62 x i8] zeroinitializer, align 1
@_XamarinAndroidBundledAssembly_name_88_88 = internal dso_local global [62 x i8] zeroinitializer, align 1
@_XamarinAndroidBundledAssembly_name_89_89 = internal dso_local global [62 x i8] zeroinitializer, align 1
@_XamarinAndroidBundledAssembly_name_8a_8a = internal dso_local global [62 x i8] zeroinitializer, align 1
@_XamarinAndroidBundledAssembly_name_8b_8b = internal dso_local global [62 x i8] zeroinitializer, align 1
@_XamarinAndroidBundledAssembly_name_8c_8c = internal dso_local global [62 x i8] zeroinitializer, align 1
@_XamarinAndroidBundledAssembly_name_8d_8d = internal dso_local global [62 x i8] zeroinitializer, align 1
@_XamarinAndroidBundledAssembly_name_8e_8e = internal dso_local global [62 x i8] zeroinitializer, align 1
@_XamarinAndroidBundledAssembly_name_8f_8f = internal dso_local global [62 x i8] zeroinitializer, align 1
@_XamarinAndroidBundledAssembly_name_90_90 = internal dso_local global [62 x i8] zeroinitializer, align 1
@_XamarinAndroidBundledAssembly_name_91_91 = internal dso_local global [62 x i8] zeroinitializer, align 1
@_XamarinAndroidBundledAssembly_name_92_92 = internal dso_local global [62 x i8] zeroinitializer, align 1
@_XamarinAndroidBundledAssembly_name_93_93 = internal dso_local global [62 x i8] zeroinitializer, align 1
@_XamarinAndroidBundledAssembly_name_94_94 = internal dso_local global [62 x i8] zeroinitializer, align 1
@_XamarinAndroidBundledAssembly_name_95_95 = internal dso_local global [62 x i8] zeroinitializer, align 1
@_XamarinAndroidBundledAssembly_name_96_96 = internal dso_local global [62 x i8] zeroinitializer, align 1
@_XamarinAndroidBundledAssembly_name_97_97 = internal dso_local global [62 x i8] zeroinitializer, align 1
@_XamarinAndroidBundledAssembly_name_98_98 = internal dso_local global [62 x i8] zeroinitializer, align 1
@_XamarinAndroidBundledAssembly_name_99_99 = internal dso_local global [62 x i8] zeroinitializer, align 1
@_XamarinAndroidBundledAssembly_name_9a_9a = internal dso_local global [62 x i8] zeroinitializer, align 1
@_XamarinAndroidBundledAssembly_name_9b_9b = internal dso_local global [62 x i8] zeroinitializer, align 1
@_XamarinAndroidBundledAssembly_name_9c_9c = internal dso_local global [62 x i8] zeroinitializer, align 1
@_XamarinAndroidBundledAssembly_name_9d_9d = internal dso_local global [62 x i8] zeroinitializer, align 1
@_XamarinAndroidBundledAssembly_name_9e_9e = internal dso_local global [62 x i8] zeroinitializer, align 1
@_XamarinAndroidBundledAssembly_name_9f_9f = internal dso_local global [62 x i8] zeroinitializer, align 1
@_XamarinAndroidBundledAssembly_name_a0_a0 = internal dso_local global [62 x i8] zeroinitializer, align 1
@_XamarinAndroidBundledAssembly_name_a1_a1 = internal dso_local global [62 x i8] zeroinitializer, align 1
@_XamarinAndroidBundledAssembly_name_a2_a2 = internal dso_local global [62 x i8] zeroinitializer, align 1
@_XamarinAndroidBundledAssembly_name_a3_a3 = internal dso_local global [62 x i8] zeroinitializer, align 1
@_XamarinAndroidBundledAssembly_name_a4_a4 = internal dso_local global [62 x i8] zeroinitializer, align 1
@_XamarinAndroidBundledAssembly_name_a5_a5 = internal dso_local global [62 x i8] zeroinitializer, align 1
@_XamarinAndroidBundledAssembly_name_a6_a6 = internal dso_local global [62 x i8] zeroinitializer, align 1
@_XamarinAndroidBundledAssembly_name_a7_a7 = internal dso_local global [62 x i8] zeroinitializer, align 1
@_XamarinAndroidBundledAssembly_name_a8_a8 = internal dso_local global [62 x i8] zeroinitializer, align 1
@_XamarinAndroidBundledAssembly_name_a9_a9 = internal dso_local global [62 x i8] zeroinitializer, align 1
@_XamarinAndroidBundledAssembly_name_aa_aa = internal dso_local global [62 x i8] zeroinitializer, align 1
@_XamarinAndroidBundledAssembly_name_ab_ab = internal dso_local global [62 x i8] zeroinitializer, align 1
@_XamarinAndroidBundledAssembly_name_ac_ac = internal dso_local global [62 x i8] zeroinitializer, align 1
@_XamarinAndroidBundledAssembly_name_ad_ad = internal dso_local global [62 x i8] zeroinitializer, align 1
@_XamarinAndroidBundledAssembly_name_ae_ae = internal dso_local global [62 x i8] zeroinitializer, align 1
@_XamarinAndroidBundledAssembly_name_af_af = internal dso_local global [62 x i8] zeroinitializer, align 1
@_XamarinAndroidBundledAssembly_name_b0_b0 = internal dso_local global [62 x i8] zeroinitializer, align 1
@_XamarinAndroidBundledAssembly_name_b1_b1 = internal dso_local global [62 x i8] zeroinitializer, align 1
@_XamarinAndroidBundledAssembly_name_b2_b2 = internal dso_local global [62 x i8] zeroinitializer, align 1
@_XamarinAndroidBundledAssembly_name_b3_b3 = internal dso_local global [62 x i8] zeroinitializer, align 1
@_XamarinAndroidBundledAssembly_name_b4_b4 = internal dso_local global [62 x i8] zeroinitializer, align 1
@_XamarinAndroidBundledAssembly_name_b5_b5 = internal dso_local global [62 x i8] zeroinitializer, align 1
@_XamarinAndroidBundledAssembly_name_b6_b6 = internal dso_local global [62 x i8] zeroinitializer, align 1
@_XamarinAndroidBundledAssembly_name_b7_b7 = internal dso_local global [62 x i8] zeroinitializer, align 1
@_XamarinAndroidBundledAssembly_name_b8_b8 = internal dso_local global [62 x i8] zeroinitializer, align 1
@_XamarinAndroidBundledAssembly_name_b9_b9 = internal dso_local global [62 x i8] zeroinitializer, align 1
@_XamarinAndroidBundledAssembly_name_ba_ba = internal dso_local global [62 x i8] zeroinitializer, align 1
@_XamarinAndroidBundledAssembly_name_bb_bb = internal dso_local global [62 x i8] zeroinitializer, align 1
@_XamarinAndroidBundledAssembly_name_bc_bc = internal dso_local global [62 x i8] zeroinitializer, align 1
@_XamarinAndroidBundledAssembly_name_bd_bd = internal dso_local global [62 x i8] zeroinitializer, align 1
@_XamarinAndroidBundledAssembly_name_be_be = internal dso_local global [62 x i8] zeroinitializer, align 1
@_XamarinAndroidBundledAssembly_name_bf_bf = internal dso_local global [62 x i8] zeroinitializer, align 1
@_XamarinAndroidBundledAssembly_name_c0_c0 = internal dso_local global [62 x i8] zeroinitializer, align 1
@_XamarinAndroidBundledAssembly_name_c1_c1 = internal dso_local global [62 x i8] zeroinitializer, align 1
@_XamarinAndroidBundledAssembly_name_c2_c2 = internal dso_local global [62 x i8] zeroinitializer, align 1
@_XamarinAndroidBundledAssembly_name_c3_c3 = internal dso_local global [62 x i8] zeroinitializer, align 1
@_XamarinAndroidBundledAssembly_name_c4_c4 = internal dso_local global [62 x i8] zeroinitializer, align 1
@_XamarinAndroidBundledAssembly_name_c5_c5 = internal dso_local global [62 x i8] zeroinitializer, align 1
@_XamarinAndroidBundledAssembly_name_c6_c6 = internal dso_local global [62 x i8] zeroinitializer, align 1
@_XamarinAndroidBundledAssembly_name_c7_c7 = internal dso_local global [62 x i8] zeroinitializer, align 1
@_XamarinAndroidBundledAssembly_name_c8_c8 = internal dso_local global [62 x i8] zeroinitializer, align 1
@_XamarinAndroidBundledAssembly_name_c9_c9 = internal dso_local global [62 x i8] zeroinitializer, align 1
@_XamarinAndroidBundledAssembly_name_ca_ca = internal dso_local global [62 x i8] zeroinitializer, align 1
@_XamarinAndroidBundledAssembly_name_cb_cb = internal dso_local global [62 x i8] zeroinitializer, align 1
@_XamarinAndroidBundledAssembly_name_cc_cc = internal dso_local global [62 x i8] zeroinitializer, align 1
@_XamarinAndroidBundledAssembly_name_cd_cd = internal dso_local global [62 x i8] zeroinitializer, align 1
@_XamarinAndroidBundledAssembly_name_ce_ce = internal dso_local global [62 x i8] zeroinitializer, align 1
@_XamarinAndroidBundledAssembly_name_cf_cf = internal dso_local global [62 x i8] zeroinitializer, align 1
@_XamarinAndroidBundledAssembly_name_d0_d0 = internal dso_local global [62 x i8] zeroinitializer, align 1
@_XamarinAndroidBundledAssembly_name_d1_d1 = internal dso_local global [62 x i8] zeroinitializer, align 1
@_XamarinAndroidBundledAssembly_name_d2_d2 = internal dso_local global [62 x i8] zeroinitializer, align 1
@_XamarinAndroidBundledAssembly_name_d3_d3 = internal dso_local global [62 x i8] zeroinitializer, align 1
@_XamarinAndroidBundledAssembly_name_d4_d4 = internal dso_local global [62 x i8] zeroinitializer, align 1
@_XamarinAndroidBundledAssembly_name_d5_d5 = internal dso_local global [62 x i8] zeroinitializer, align 1
@_XamarinAndroidBundledAssembly_name_d6_d6 = internal dso_local global [62 x i8] zeroinitializer, align 1
@_XamarinAndroidBundledAssembly_name_d7_d7 = internal dso_local global [62 x i8] zeroinitializer, align 1
@_XamarinAndroidBundledAssembly_name_d8_d8 = internal dso_local global [62 x i8] zeroinitializer, align 1
@_XamarinAndroidBundledAssembly_name_d9_d9 = internal dso_local global [62 x i8] zeroinitializer, align 1
@_XamarinAndroidBundledAssembly_name_da_da = internal dso_local global [62 x i8] zeroinitializer, align 1
@_XamarinAndroidBundledAssembly_name_db_db = internal dso_local global [62 x i8] zeroinitializer, align 1
@_XamarinAndroidBundledAssembly_name_dc_dc = internal dso_local global [62 x i8] zeroinitializer, align 1
@_XamarinAndroidBundledAssembly_name_dd_dd = internal dso_local global [62 x i8] zeroinitializer, align 1
@_XamarinAndroidBundledAssembly_name_de_de = internal dso_local global [62 x i8] zeroinitializer, align 1
@_XamarinAndroidBundledAssembly_name_df_df = internal dso_local global [62 x i8] zeroinitializer, align 1
@_XamarinAndroidBundledAssembly_name_e0_e0 = internal dso_local global [62 x i8] zeroinitializer, align 1
@_XamarinAndroidBundledAssembly_name_e1_e1 = internal dso_local global [62 x i8] zeroinitializer, align 1
@_XamarinAndroidBundledAssembly_name_e2_e2 = internal dso_local global [62 x i8] zeroinitializer, align 1
@_XamarinAndroidBundledAssembly_name_e3_e3 = internal dso_local global [62 x i8] zeroinitializer, align 1
@_XamarinAndroidBundledAssembly_name_e4_e4 = internal dso_local global [62 x i8] zeroinitializer, align 1
@_XamarinAndroidBundledAssembly_name_e5_e5 = internal dso_local global [62 x i8] zeroinitializer, align 1
@_XamarinAndroidBundledAssembly_name_e6_e6 = internal dso_local global [62 x i8] zeroinitializer, align 1
@_XamarinAndroidBundledAssembly_name_e7_e7 = internal dso_local global [62 x i8] zeroinitializer, align 1
@_XamarinAndroidBundledAssembly_name_e8_e8 = internal dso_local global [62 x i8] zeroinitializer, align 1
@_XamarinAndroidBundledAssembly_name_e9_e9 = internal dso_local global [62 x i8] zeroinitializer, align 1
@_XamarinAndroidBundledAssembly_name_ea_ea = internal dso_local global [62 x i8] zeroinitializer, align 1
@_XamarinAndroidBundledAssembly_name_eb_eb = internal dso_local global [62 x i8] zeroinitializer, align 1
@_XamarinAndroidBundledAssembly_name_ec_ec = internal dso_local global [62 x i8] zeroinitializer, align 1
@_XamarinAndroidBundledAssembly_name_ed_ed = internal dso_local global [62 x i8] zeroinitializer, align 1
@_XamarinAndroidBundledAssembly_name_ee_ee = internal dso_local global [62 x i8] zeroinitializer, align 1
@_XamarinAndroidBundledAssembly_name_ef_ef = internal dso_local global [62 x i8] zeroinitializer, align 1
@_XamarinAndroidBundledAssembly_name_f0_f0 = internal dso_local global [62 x i8] zeroinitializer, align 1
@_XamarinAndroidBundledAssembly_name_f1_f1 = internal dso_local global [62 x i8] zeroinitializer, align 1
@_XamarinAndroidBundledAssembly_name_f2_f2 = internal dso_local global [62 x i8] zeroinitializer, align 1
@_XamarinAndroidBundledAssembly_name_f3_f3 = internal dso_local global [62 x i8] zeroinitializer, align 1
@_XamarinAndroidBundledAssembly_name_f4_f4 = internal dso_local global [62 x i8] zeroinitializer, align 1
@_XamarinAndroidBundledAssembly_name_f5_f5 = internal dso_local global [62 x i8] zeroinitializer, align 1
@_XamarinAndroidBundledAssembly_name_f6_f6 = internal dso_local global [62 x i8] zeroinitializer, align 1
@_XamarinAndroidBundledAssembly_name_f7_f7 = internal dso_local global [62 x i8] zeroinitializer, align 1
@_XamarinAndroidBundledAssembly_name_f8_f8 = internal dso_local global [62 x i8] zeroinitializer, align 1
@_XamarinAndroidBundledAssembly_name_f9_f9 = internal dso_local global [62 x i8] zeroinitializer, align 1
@_XamarinAndroidBundledAssembly_name_fa_fa = internal dso_local global [62 x i8] zeroinitializer, align 1
@_XamarinAndroidBundledAssembly_name_fb_fb = internal dso_local global [62 x i8] zeroinitializer, align 1
@_XamarinAndroidBundledAssembly_name_fc_fc = internal dso_local global [62 x i8] zeroinitializer, align 1
@_XamarinAndroidBundledAssembly_name_fd_fd = internal dso_local global [62 x i8] zeroinitializer, align 1
@_XamarinAndroidBundledAssembly_name_fe_fe = internal dso_local global [62 x i8] zeroinitializer, align 1
@_XamarinAndroidBundledAssembly_name_ff_ff = internal dso_local global [62 x i8] zeroinitializer, align 1
@_XamarinAndroidBundledAssembly_name_100_100 = internal dso_local global [62 x i8] zeroinitializer, align 1
@_XamarinAndroidBundledAssembly_name_101_101 = internal dso_local global [62 x i8] zeroinitializer, align 1
@_XamarinAndroidBundledAssembly_name_102_102 = internal dso_local global [62 x i8] zeroinitializer, align 1
@_XamarinAndroidBundledAssembly_name_103_103 = internal dso_local global [62 x i8] zeroinitializer, align 1
@_XamarinAndroidBundledAssembly_name_104_104 = internal dso_local global [62 x i8] zeroinitializer, align 1
@_XamarinAndroidBundledAssembly_name_105_105 = internal dso_local global [62 x i8] zeroinitializer, align 1
@_XamarinAndroidBundledAssembly_name_106_106 = internal dso_local global [62 x i8] zeroinitializer, align 1
@_XamarinAndroidBundledAssembly_name_107_107 = internal dso_local global [62 x i8] zeroinitializer, align 1
@_XamarinAndroidBundledAssembly_name_108_108 = internal dso_local global [62 x i8] zeroinitializer, align 1
@_XamarinAndroidBundledAssembly_name_109_109 = internal dso_local global [62 x i8] zeroinitializer, align 1
@_XamarinAndroidBundledAssembly_name_10a_10a = internal dso_local global [62 x i8] zeroinitializer, align 1
@_XamarinAndroidBundledAssembly_name_10b_10b = internal dso_local global [62 x i8] zeroinitializer, align 1
@_XamarinAndroidBundledAssembly_name_10c_10c = internal dso_local global [62 x i8] zeroinitializer, align 1
@_XamarinAndroidBundledAssembly_name_10d_10d = internal dso_local global [62 x i8] zeroinitializer, align 1
@_XamarinAndroidBundledAssembly_name_10e_10e = internal dso_local global [62 x i8] zeroinitializer, align 1
@_XamarinAndroidBundledAssembly_name_10f_10f = internal dso_local global [62 x i8] zeroinitializer, align 1
@_XamarinAndroidBundledAssembly_name_110_110 = internal dso_local global [62 x i8] zeroinitializer, align 1
@_XamarinAndroidBundledAssembly_name_111_111 = internal dso_local global [62 x i8] zeroinitializer, align 1
@_XamarinAndroidBundledAssembly_name_112_112 = internal dso_local global [62 x i8] zeroinitializer, align 1
@_XamarinAndroidBundledAssembly_name_113_113 = internal dso_local global [62 x i8] zeroinitializer, align 1
@_XamarinAndroidBundledAssembly_name_114_114 = internal dso_local global [62 x i8] zeroinitializer, align 1
@_XamarinAndroidBundledAssembly_name_115_115 = internal dso_local global [62 x i8] zeroinitializer, align 1
@_XamarinAndroidBundledAssembly_name_116_116 = internal dso_local global [62 x i8] zeroinitializer, align 1
@_XamarinAndroidBundledAssembly_name_117_117 = internal dso_local global [62 x i8] zeroinitializer, align 1
@_XamarinAndroidBundledAssembly_name_118_118 = internal dso_local global [62 x i8] zeroinitializer, align 1
@_XamarinAndroidBundledAssembly_name_119_119 = internal dso_local global [62 x i8] zeroinitializer, align 1
@_XamarinAndroidBundledAssembly_name_11a_11a = internal dso_local global [62 x i8] zeroinitializer, align 1
@_XamarinAndroidBundledAssembly_name_11b_11b = internal dso_local global [62 x i8] zeroinitializer, align 1
@_XamarinAndroidBundledAssembly_name_11c_11c = internal dso_local global [62 x i8] zeroinitializer, align 1
@_XamarinAndroidBundledAssembly_name_11d_11d = internal dso_local global [62 x i8] zeroinitializer, align 1
@_XamarinAndroidBundledAssembly_name_11e_11e = internal dso_local global [62 x i8] zeroinitializer, align 1
@_XamarinAndroidBundledAssembly_name_11f_11f = internal dso_local global [62 x i8] zeroinitializer, align 1
@_XamarinAndroidBundledAssembly_name_120_120 = internal dso_local global [62 x i8] zeroinitializer, align 1
@_XamarinAndroidBundledAssembly_name_121_121 = internal dso_local global [62 x i8] zeroinitializer, align 1
@_XamarinAndroidBundledAssembly_name_122_122 = internal dso_local global [62 x i8] zeroinitializer, align 1
@_XamarinAndroidBundledAssembly_name_123_123 = internal dso_local global [62 x i8] zeroinitializer, align 1
@_XamarinAndroidBundledAssembly_name_124_124 = internal dso_local global [62 x i8] zeroinitializer, align 1
@_XamarinAndroidBundledAssembly_name_125_125 = internal dso_local global [62 x i8] zeroinitializer, align 1
@_XamarinAndroidBundledAssembly_name_126_126 = internal dso_local global [62 x i8] zeroinitializer, align 1
@_XamarinAndroidBundledAssembly_name_127_127 = internal dso_local global [62 x i8] zeroinitializer, align 1
@_XamarinAndroidBundledAssembly_name_128_128 = internal dso_local global [62 x i8] zeroinitializer, align 1
@_XamarinAndroidBundledAssembly_name_129_129 = internal dso_local global [62 x i8] zeroinitializer, align 1
@_XamarinAndroidBundledAssembly_name_12a_12a = internal dso_local global [62 x i8] zeroinitializer, align 1
@_XamarinAndroidBundledAssembly_name_12b_12b = internal dso_local global [62 x i8] zeroinitializer, align 1
@_XamarinAndroidBundledAssembly_name_12c_12c = internal dso_local global [62 x i8] zeroinitializer, align 1
@_XamarinAndroidBundledAssembly_name_12d_12d = internal dso_local global [62 x i8] zeroinitializer, align 1
@_XamarinAndroidBundledAssembly_name_12e_12e = internal dso_local global [62 x i8] zeroinitializer, align 1
@_XamarinAndroidBundledAssembly_name_12f_12f = internal dso_local global [62 x i8] zeroinitializer, align 1
@_XamarinAndroidBundledAssembly_name_130_130 = internal dso_local global [62 x i8] zeroinitializer, align 1
@_XamarinAndroidBundledAssembly_name_131_131 = internal dso_local global [62 x i8] zeroinitializer, align 1
@_XamarinAndroidBundledAssembly_name_132_132 = internal dso_local global [62 x i8] zeroinitializer, align 1
@_XamarinAndroidBundledAssembly_name_133_133 = internal dso_local global [62 x i8] zeroinitializer, align 1
@_XamarinAndroidBundledAssembly_name_134_134 = internal dso_local global [62 x i8] zeroinitializer, align 1

; Bundled assembly name buffers, all 62 bytes long
@bundled_assemblies = dso_local local_unnamed_addr global [309 x %struct.XamarinAndroidBundledAssembly] [
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 62, ; uint32_t name_length (0x3e)
		ptr @_XamarinAndroidBundledAssembly_name_0_0; char* name
	}, ; 0
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 62, ; uint32_t name_length (0x3e)
		ptr @_XamarinAndroidBundledAssembly_name_1_1; char* name
	}, ; 1
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 62, ; uint32_t name_length (0x3e)
		ptr @_XamarinAndroidBundledAssembly_name_2_2; char* name
	}, ; 2
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 62, ; uint32_t name_length (0x3e)
		ptr @_XamarinAndroidBundledAssembly_name_3_3; char* name
	}, ; 3
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 62, ; uint32_t name_length (0x3e)
		ptr @_XamarinAndroidBundledAssembly_name_4_4; char* name
	}, ; 4
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 62, ; uint32_t name_length (0x3e)
		ptr @_XamarinAndroidBundledAssembly_name_5_5; char* name
	}, ; 5
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 62, ; uint32_t name_length (0x3e)
		ptr @_XamarinAndroidBundledAssembly_name_6_6; char* name
	}, ; 6
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 62, ; uint32_t name_length (0x3e)
		ptr @_XamarinAndroidBundledAssembly_name_7_7; char* name
	}, ; 7
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 62, ; uint32_t name_length (0x3e)
		ptr @_XamarinAndroidBundledAssembly_name_8_8; char* name
	}, ; 8
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 62, ; uint32_t name_length (0x3e)
		ptr @_XamarinAndroidBundledAssembly_name_9_9; char* name
	}, ; 9
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 62, ; uint32_t name_length (0x3e)
		ptr @_XamarinAndroidBundledAssembly_name_a_a; char* name
	}, ; 10
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 62, ; uint32_t name_length (0x3e)
		ptr @_XamarinAndroidBundledAssembly_name_b_b; char* name
	}, ; 11
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 62, ; uint32_t name_length (0x3e)
		ptr @_XamarinAndroidBundledAssembly_name_c_c; char* name
	}, ; 12
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 62, ; uint32_t name_length (0x3e)
		ptr @_XamarinAndroidBundledAssembly_name_d_d; char* name
	}, ; 13
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 62, ; uint32_t name_length (0x3e)
		ptr @_XamarinAndroidBundledAssembly_name_e_e; char* name
	}, ; 14
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 62, ; uint32_t name_length (0x3e)
		ptr @_XamarinAndroidBundledAssembly_name_f_f; char* name
	}, ; 15
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 62, ; uint32_t name_length (0x3e)
		ptr @_XamarinAndroidBundledAssembly_name_10_10; char* name
	}, ; 16
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 62, ; uint32_t name_length (0x3e)
		ptr @_XamarinAndroidBundledAssembly_name_11_11; char* name
	}, ; 17
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 62, ; uint32_t name_length (0x3e)
		ptr @_XamarinAndroidBundledAssembly_name_12_12; char* name
	}, ; 18
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 62, ; uint32_t name_length (0x3e)
		ptr @_XamarinAndroidBundledAssembly_name_13_13; char* name
	}, ; 19
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 62, ; uint32_t name_length (0x3e)
		ptr @_XamarinAndroidBundledAssembly_name_14_14; char* name
	}, ; 20
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 62, ; uint32_t name_length (0x3e)
		ptr @_XamarinAndroidBundledAssembly_name_15_15; char* name
	}, ; 21
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 62, ; uint32_t name_length (0x3e)
		ptr @_XamarinAndroidBundledAssembly_name_16_16; char* name
	}, ; 22
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 62, ; uint32_t name_length (0x3e)
		ptr @_XamarinAndroidBundledAssembly_name_17_17; char* name
	}, ; 23
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 62, ; uint32_t name_length (0x3e)
		ptr @_XamarinAndroidBundledAssembly_name_18_18; char* name
	}, ; 24
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 62, ; uint32_t name_length (0x3e)
		ptr @_XamarinAndroidBundledAssembly_name_19_19; char* name
	}, ; 25
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 62, ; uint32_t name_length (0x3e)
		ptr @_XamarinAndroidBundledAssembly_name_1a_1a; char* name
	}, ; 26
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 62, ; uint32_t name_length (0x3e)
		ptr @_XamarinAndroidBundledAssembly_name_1b_1b; char* name
	}, ; 27
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 62, ; uint32_t name_length (0x3e)
		ptr @_XamarinAndroidBundledAssembly_name_1c_1c; char* name
	}, ; 28
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 62, ; uint32_t name_length (0x3e)
		ptr @_XamarinAndroidBundledAssembly_name_1d_1d; char* name
	}, ; 29
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 62, ; uint32_t name_length (0x3e)
		ptr @_XamarinAndroidBundledAssembly_name_1e_1e; char* name
	}, ; 30
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 62, ; uint32_t name_length (0x3e)
		ptr @_XamarinAndroidBundledAssembly_name_1f_1f; char* name
	}, ; 31
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 62, ; uint32_t name_length (0x3e)
		ptr @_XamarinAndroidBundledAssembly_name_20_20; char* name
	}, ; 32
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 62, ; uint32_t name_length (0x3e)
		ptr @_XamarinAndroidBundledAssembly_name_21_21; char* name
	}, ; 33
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 62, ; uint32_t name_length (0x3e)
		ptr @_XamarinAndroidBundledAssembly_name_22_22; char* name
	}, ; 34
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 62, ; uint32_t name_length (0x3e)
		ptr @_XamarinAndroidBundledAssembly_name_23_23; char* name
	}, ; 35
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 62, ; uint32_t name_length (0x3e)
		ptr @_XamarinAndroidBundledAssembly_name_24_24; char* name
	}, ; 36
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 62, ; uint32_t name_length (0x3e)
		ptr @_XamarinAndroidBundledAssembly_name_25_25; char* name
	}, ; 37
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 62, ; uint32_t name_length (0x3e)
		ptr @_XamarinAndroidBundledAssembly_name_26_26; char* name
	}, ; 38
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 62, ; uint32_t name_length (0x3e)
		ptr @_XamarinAndroidBundledAssembly_name_27_27; char* name
	}, ; 39
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 62, ; uint32_t name_length (0x3e)
		ptr @_XamarinAndroidBundledAssembly_name_28_28; char* name
	}, ; 40
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 62, ; uint32_t name_length (0x3e)
		ptr @_XamarinAndroidBundledAssembly_name_29_29; char* name
	}, ; 41
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 62, ; uint32_t name_length (0x3e)
		ptr @_XamarinAndroidBundledAssembly_name_2a_2a; char* name
	}, ; 42
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 62, ; uint32_t name_length (0x3e)
		ptr @_XamarinAndroidBundledAssembly_name_2b_2b; char* name
	}, ; 43
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 62, ; uint32_t name_length (0x3e)
		ptr @_XamarinAndroidBundledAssembly_name_2c_2c; char* name
	}, ; 44
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 62, ; uint32_t name_length (0x3e)
		ptr @_XamarinAndroidBundledAssembly_name_2d_2d; char* name
	}, ; 45
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 62, ; uint32_t name_length (0x3e)
		ptr @_XamarinAndroidBundledAssembly_name_2e_2e; char* name
	}, ; 46
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 62, ; uint32_t name_length (0x3e)
		ptr @_XamarinAndroidBundledAssembly_name_2f_2f; char* name
	}, ; 47
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 62, ; uint32_t name_length (0x3e)
		ptr @_XamarinAndroidBundledAssembly_name_30_30; char* name
	}, ; 48
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 62, ; uint32_t name_length (0x3e)
		ptr @_XamarinAndroidBundledAssembly_name_31_31; char* name
	}, ; 49
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 62, ; uint32_t name_length (0x3e)
		ptr @_XamarinAndroidBundledAssembly_name_32_32; char* name
	}, ; 50
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 62, ; uint32_t name_length (0x3e)
		ptr @_XamarinAndroidBundledAssembly_name_33_33; char* name
	}, ; 51
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 62, ; uint32_t name_length (0x3e)
		ptr @_XamarinAndroidBundledAssembly_name_34_34; char* name
	}, ; 52
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 62, ; uint32_t name_length (0x3e)
		ptr @_XamarinAndroidBundledAssembly_name_35_35; char* name
	}, ; 53
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 62, ; uint32_t name_length (0x3e)
		ptr @_XamarinAndroidBundledAssembly_name_36_36; char* name
	}, ; 54
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 62, ; uint32_t name_length (0x3e)
		ptr @_XamarinAndroidBundledAssembly_name_37_37; char* name
	}, ; 55
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 62, ; uint32_t name_length (0x3e)
		ptr @_XamarinAndroidBundledAssembly_name_38_38; char* name
	}, ; 56
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 62, ; uint32_t name_length (0x3e)
		ptr @_XamarinAndroidBundledAssembly_name_39_39; char* name
	}, ; 57
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 62, ; uint32_t name_length (0x3e)
		ptr @_XamarinAndroidBundledAssembly_name_3a_3a; char* name
	}, ; 58
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 62, ; uint32_t name_length (0x3e)
		ptr @_XamarinAndroidBundledAssembly_name_3b_3b; char* name
	}, ; 59
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 62, ; uint32_t name_length (0x3e)
		ptr @_XamarinAndroidBundledAssembly_name_3c_3c; char* name
	}, ; 60
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 62, ; uint32_t name_length (0x3e)
		ptr @_XamarinAndroidBundledAssembly_name_3d_3d; char* name
	}, ; 61
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 62, ; uint32_t name_length (0x3e)
		ptr @_XamarinAndroidBundledAssembly_name_3e_3e; char* name
	}, ; 62
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 62, ; uint32_t name_length (0x3e)
		ptr @_XamarinAndroidBundledAssembly_name_3f_3f; char* name
	}, ; 63
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 62, ; uint32_t name_length (0x3e)
		ptr @_XamarinAndroidBundledAssembly_name_40_40; char* name
	}, ; 64
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 62, ; uint32_t name_length (0x3e)
		ptr @_XamarinAndroidBundledAssembly_name_41_41; char* name
	}, ; 65
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 62, ; uint32_t name_length (0x3e)
		ptr @_XamarinAndroidBundledAssembly_name_42_42; char* name
	}, ; 66
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 62, ; uint32_t name_length (0x3e)
		ptr @_XamarinAndroidBundledAssembly_name_43_43; char* name
	}, ; 67
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 62, ; uint32_t name_length (0x3e)
		ptr @_XamarinAndroidBundledAssembly_name_44_44; char* name
	}, ; 68
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 62, ; uint32_t name_length (0x3e)
		ptr @_XamarinAndroidBundledAssembly_name_45_45; char* name
	}, ; 69
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 62, ; uint32_t name_length (0x3e)
		ptr @_XamarinAndroidBundledAssembly_name_46_46; char* name
	}, ; 70
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 62, ; uint32_t name_length (0x3e)
		ptr @_XamarinAndroidBundledAssembly_name_47_47; char* name
	}, ; 71
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 62, ; uint32_t name_length (0x3e)
		ptr @_XamarinAndroidBundledAssembly_name_48_48; char* name
	}, ; 72
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 62, ; uint32_t name_length (0x3e)
		ptr @_XamarinAndroidBundledAssembly_name_49_49; char* name
	}, ; 73
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 62, ; uint32_t name_length (0x3e)
		ptr @_XamarinAndroidBundledAssembly_name_4a_4a; char* name
	}, ; 74
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 62, ; uint32_t name_length (0x3e)
		ptr @_XamarinAndroidBundledAssembly_name_4b_4b; char* name
	}, ; 75
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 62, ; uint32_t name_length (0x3e)
		ptr @_XamarinAndroidBundledAssembly_name_4c_4c; char* name
	}, ; 76
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 62, ; uint32_t name_length (0x3e)
		ptr @_XamarinAndroidBundledAssembly_name_4d_4d; char* name
	}, ; 77
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 62, ; uint32_t name_length (0x3e)
		ptr @_XamarinAndroidBundledAssembly_name_4e_4e; char* name
	}, ; 78
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 62, ; uint32_t name_length (0x3e)
		ptr @_XamarinAndroidBundledAssembly_name_4f_4f; char* name
	}, ; 79
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 62, ; uint32_t name_length (0x3e)
		ptr @_XamarinAndroidBundledAssembly_name_50_50; char* name
	}, ; 80
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 62, ; uint32_t name_length (0x3e)
		ptr @_XamarinAndroidBundledAssembly_name_51_51; char* name
	}, ; 81
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 62, ; uint32_t name_length (0x3e)
		ptr @_XamarinAndroidBundledAssembly_name_52_52; char* name
	}, ; 82
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 62, ; uint32_t name_length (0x3e)
		ptr @_XamarinAndroidBundledAssembly_name_53_53; char* name
	}, ; 83
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 62, ; uint32_t name_length (0x3e)
		ptr @_XamarinAndroidBundledAssembly_name_54_54; char* name
	}, ; 84
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 62, ; uint32_t name_length (0x3e)
		ptr @_XamarinAndroidBundledAssembly_name_55_55; char* name
	}, ; 85
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 62, ; uint32_t name_length (0x3e)
		ptr @_XamarinAndroidBundledAssembly_name_56_56; char* name
	}, ; 86
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 62, ; uint32_t name_length (0x3e)
		ptr @_XamarinAndroidBundledAssembly_name_57_57; char* name
	}, ; 87
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 62, ; uint32_t name_length (0x3e)
		ptr @_XamarinAndroidBundledAssembly_name_58_58; char* name
	}, ; 88
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 62, ; uint32_t name_length (0x3e)
		ptr @_XamarinAndroidBundledAssembly_name_59_59; char* name
	}, ; 89
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 62, ; uint32_t name_length (0x3e)
		ptr @_XamarinAndroidBundledAssembly_name_5a_5a; char* name
	}, ; 90
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 62, ; uint32_t name_length (0x3e)
		ptr @_XamarinAndroidBundledAssembly_name_5b_5b; char* name
	}, ; 91
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 62, ; uint32_t name_length (0x3e)
		ptr @_XamarinAndroidBundledAssembly_name_5c_5c; char* name
	}, ; 92
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 62, ; uint32_t name_length (0x3e)
		ptr @_XamarinAndroidBundledAssembly_name_5d_5d; char* name
	}, ; 93
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 62, ; uint32_t name_length (0x3e)
		ptr @_XamarinAndroidBundledAssembly_name_5e_5e; char* name
	}, ; 94
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 62, ; uint32_t name_length (0x3e)
		ptr @_XamarinAndroidBundledAssembly_name_5f_5f; char* name
	}, ; 95
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 62, ; uint32_t name_length (0x3e)
		ptr @_XamarinAndroidBundledAssembly_name_60_60; char* name
	}, ; 96
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 62, ; uint32_t name_length (0x3e)
		ptr @_XamarinAndroidBundledAssembly_name_61_61; char* name
	}, ; 97
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 62, ; uint32_t name_length (0x3e)
		ptr @_XamarinAndroidBundledAssembly_name_62_62; char* name
	}, ; 98
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 62, ; uint32_t name_length (0x3e)
		ptr @_XamarinAndroidBundledAssembly_name_63_63; char* name
	}, ; 99
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 62, ; uint32_t name_length (0x3e)
		ptr @_XamarinAndroidBundledAssembly_name_64_64; char* name
	}, ; 100
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 62, ; uint32_t name_length (0x3e)
		ptr @_XamarinAndroidBundledAssembly_name_65_65; char* name
	}, ; 101
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 62, ; uint32_t name_length (0x3e)
		ptr @_XamarinAndroidBundledAssembly_name_66_66; char* name
	}, ; 102
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 62, ; uint32_t name_length (0x3e)
		ptr @_XamarinAndroidBundledAssembly_name_67_67; char* name
	}, ; 103
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 62, ; uint32_t name_length (0x3e)
		ptr @_XamarinAndroidBundledAssembly_name_68_68; char* name
	}, ; 104
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 62, ; uint32_t name_length (0x3e)
		ptr @_XamarinAndroidBundledAssembly_name_69_69; char* name
	}, ; 105
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 62, ; uint32_t name_length (0x3e)
		ptr @_XamarinAndroidBundledAssembly_name_6a_6a; char* name
	}, ; 106
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 62, ; uint32_t name_length (0x3e)
		ptr @_XamarinAndroidBundledAssembly_name_6b_6b; char* name
	}, ; 107
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 62, ; uint32_t name_length (0x3e)
		ptr @_XamarinAndroidBundledAssembly_name_6c_6c; char* name
	}, ; 108
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 62, ; uint32_t name_length (0x3e)
		ptr @_XamarinAndroidBundledAssembly_name_6d_6d; char* name
	}, ; 109
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 62, ; uint32_t name_length (0x3e)
		ptr @_XamarinAndroidBundledAssembly_name_6e_6e; char* name
	}, ; 110
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 62, ; uint32_t name_length (0x3e)
		ptr @_XamarinAndroidBundledAssembly_name_6f_6f; char* name
	}, ; 111
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 62, ; uint32_t name_length (0x3e)
		ptr @_XamarinAndroidBundledAssembly_name_70_70; char* name
	}, ; 112
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 62, ; uint32_t name_length (0x3e)
		ptr @_XamarinAndroidBundledAssembly_name_71_71; char* name
	}, ; 113
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 62, ; uint32_t name_length (0x3e)
		ptr @_XamarinAndroidBundledAssembly_name_72_72; char* name
	}, ; 114
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 62, ; uint32_t name_length (0x3e)
		ptr @_XamarinAndroidBundledAssembly_name_73_73; char* name
	}, ; 115
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 62, ; uint32_t name_length (0x3e)
		ptr @_XamarinAndroidBundledAssembly_name_74_74; char* name
	}, ; 116
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 62, ; uint32_t name_length (0x3e)
		ptr @_XamarinAndroidBundledAssembly_name_75_75; char* name
	}, ; 117
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 62, ; uint32_t name_length (0x3e)
		ptr @_XamarinAndroidBundledAssembly_name_76_76; char* name
	}, ; 118
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 62, ; uint32_t name_length (0x3e)
		ptr @_XamarinAndroidBundledAssembly_name_77_77; char* name
	}, ; 119
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 62, ; uint32_t name_length (0x3e)
		ptr @_XamarinAndroidBundledAssembly_name_78_78; char* name
	}, ; 120
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 62, ; uint32_t name_length (0x3e)
		ptr @_XamarinAndroidBundledAssembly_name_79_79; char* name
	}, ; 121
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 62, ; uint32_t name_length (0x3e)
		ptr @_XamarinAndroidBundledAssembly_name_7a_7a; char* name
	}, ; 122
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 62, ; uint32_t name_length (0x3e)
		ptr @_XamarinAndroidBundledAssembly_name_7b_7b; char* name
	}, ; 123
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 62, ; uint32_t name_length (0x3e)
		ptr @_XamarinAndroidBundledAssembly_name_7c_7c; char* name
	}, ; 124
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 62, ; uint32_t name_length (0x3e)
		ptr @_XamarinAndroidBundledAssembly_name_7d_7d; char* name
	}, ; 125
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 62, ; uint32_t name_length (0x3e)
		ptr @_XamarinAndroidBundledAssembly_name_7e_7e; char* name
	}, ; 126
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 62, ; uint32_t name_length (0x3e)
		ptr @_XamarinAndroidBundledAssembly_name_7f_7f; char* name
	}, ; 127
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 62, ; uint32_t name_length (0x3e)
		ptr @_XamarinAndroidBundledAssembly_name_80_80; char* name
	}, ; 128
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 62, ; uint32_t name_length (0x3e)
		ptr @_XamarinAndroidBundledAssembly_name_81_81; char* name
	}, ; 129
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 62, ; uint32_t name_length (0x3e)
		ptr @_XamarinAndroidBundledAssembly_name_82_82; char* name
	}, ; 130
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 62, ; uint32_t name_length (0x3e)
		ptr @_XamarinAndroidBundledAssembly_name_83_83; char* name
	}, ; 131
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 62, ; uint32_t name_length (0x3e)
		ptr @_XamarinAndroidBundledAssembly_name_84_84; char* name
	}, ; 132
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 62, ; uint32_t name_length (0x3e)
		ptr @_XamarinAndroidBundledAssembly_name_85_85; char* name
	}, ; 133
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 62, ; uint32_t name_length (0x3e)
		ptr @_XamarinAndroidBundledAssembly_name_86_86; char* name
	}, ; 134
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 62, ; uint32_t name_length (0x3e)
		ptr @_XamarinAndroidBundledAssembly_name_87_87; char* name
	}, ; 135
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 62, ; uint32_t name_length (0x3e)
		ptr @_XamarinAndroidBundledAssembly_name_88_88; char* name
	}, ; 136
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 62, ; uint32_t name_length (0x3e)
		ptr @_XamarinAndroidBundledAssembly_name_89_89; char* name
	}, ; 137
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 62, ; uint32_t name_length (0x3e)
		ptr @_XamarinAndroidBundledAssembly_name_8a_8a; char* name
	}, ; 138
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 62, ; uint32_t name_length (0x3e)
		ptr @_XamarinAndroidBundledAssembly_name_8b_8b; char* name
	}, ; 139
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 62, ; uint32_t name_length (0x3e)
		ptr @_XamarinAndroidBundledAssembly_name_8c_8c; char* name
	}, ; 140
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 62, ; uint32_t name_length (0x3e)
		ptr @_XamarinAndroidBundledAssembly_name_8d_8d; char* name
	}, ; 141
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 62, ; uint32_t name_length (0x3e)
		ptr @_XamarinAndroidBundledAssembly_name_8e_8e; char* name
	}, ; 142
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 62, ; uint32_t name_length (0x3e)
		ptr @_XamarinAndroidBundledAssembly_name_8f_8f; char* name
	}, ; 143
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 62, ; uint32_t name_length (0x3e)
		ptr @_XamarinAndroidBundledAssembly_name_90_90; char* name
	}, ; 144
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 62, ; uint32_t name_length (0x3e)
		ptr @_XamarinAndroidBundledAssembly_name_91_91; char* name
	}, ; 145
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 62, ; uint32_t name_length (0x3e)
		ptr @_XamarinAndroidBundledAssembly_name_92_92; char* name
	}, ; 146
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 62, ; uint32_t name_length (0x3e)
		ptr @_XamarinAndroidBundledAssembly_name_93_93; char* name
	}, ; 147
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 62, ; uint32_t name_length (0x3e)
		ptr @_XamarinAndroidBundledAssembly_name_94_94; char* name
	}, ; 148
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 62, ; uint32_t name_length (0x3e)
		ptr @_XamarinAndroidBundledAssembly_name_95_95; char* name
	}, ; 149
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 62, ; uint32_t name_length (0x3e)
		ptr @_XamarinAndroidBundledAssembly_name_96_96; char* name
	}, ; 150
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 62, ; uint32_t name_length (0x3e)
		ptr @_XamarinAndroidBundledAssembly_name_97_97; char* name
	}, ; 151
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 62, ; uint32_t name_length (0x3e)
		ptr @_XamarinAndroidBundledAssembly_name_98_98; char* name
	}, ; 152
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 62, ; uint32_t name_length (0x3e)
		ptr @_XamarinAndroidBundledAssembly_name_99_99; char* name
	}, ; 153
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 62, ; uint32_t name_length (0x3e)
		ptr @_XamarinAndroidBundledAssembly_name_9a_9a; char* name
	}, ; 154
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 62, ; uint32_t name_length (0x3e)
		ptr @_XamarinAndroidBundledAssembly_name_9b_9b; char* name
	}, ; 155
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 62, ; uint32_t name_length (0x3e)
		ptr @_XamarinAndroidBundledAssembly_name_9c_9c; char* name
	}, ; 156
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 62, ; uint32_t name_length (0x3e)
		ptr @_XamarinAndroidBundledAssembly_name_9d_9d; char* name
	}, ; 157
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 62, ; uint32_t name_length (0x3e)
		ptr @_XamarinAndroidBundledAssembly_name_9e_9e; char* name
	}, ; 158
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 62, ; uint32_t name_length (0x3e)
		ptr @_XamarinAndroidBundledAssembly_name_9f_9f; char* name
	}, ; 159
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 62, ; uint32_t name_length (0x3e)
		ptr @_XamarinAndroidBundledAssembly_name_a0_a0; char* name
	}, ; 160
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 62, ; uint32_t name_length (0x3e)
		ptr @_XamarinAndroidBundledAssembly_name_a1_a1; char* name
	}, ; 161
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 62, ; uint32_t name_length (0x3e)
		ptr @_XamarinAndroidBundledAssembly_name_a2_a2; char* name
	}, ; 162
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 62, ; uint32_t name_length (0x3e)
		ptr @_XamarinAndroidBundledAssembly_name_a3_a3; char* name
	}, ; 163
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 62, ; uint32_t name_length (0x3e)
		ptr @_XamarinAndroidBundledAssembly_name_a4_a4; char* name
	}, ; 164
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 62, ; uint32_t name_length (0x3e)
		ptr @_XamarinAndroidBundledAssembly_name_a5_a5; char* name
	}, ; 165
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 62, ; uint32_t name_length (0x3e)
		ptr @_XamarinAndroidBundledAssembly_name_a6_a6; char* name
	}, ; 166
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 62, ; uint32_t name_length (0x3e)
		ptr @_XamarinAndroidBundledAssembly_name_a7_a7; char* name
	}, ; 167
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 62, ; uint32_t name_length (0x3e)
		ptr @_XamarinAndroidBundledAssembly_name_a8_a8; char* name
	}, ; 168
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 62, ; uint32_t name_length (0x3e)
		ptr @_XamarinAndroidBundledAssembly_name_a9_a9; char* name
	}, ; 169
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 62, ; uint32_t name_length (0x3e)
		ptr @_XamarinAndroidBundledAssembly_name_aa_aa; char* name
	}, ; 170
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 62, ; uint32_t name_length (0x3e)
		ptr @_XamarinAndroidBundledAssembly_name_ab_ab; char* name
	}, ; 171
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 62, ; uint32_t name_length (0x3e)
		ptr @_XamarinAndroidBundledAssembly_name_ac_ac; char* name
	}, ; 172
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 62, ; uint32_t name_length (0x3e)
		ptr @_XamarinAndroidBundledAssembly_name_ad_ad; char* name
	}, ; 173
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 62, ; uint32_t name_length (0x3e)
		ptr @_XamarinAndroidBundledAssembly_name_ae_ae; char* name
	}, ; 174
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 62, ; uint32_t name_length (0x3e)
		ptr @_XamarinAndroidBundledAssembly_name_af_af; char* name
	}, ; 175
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 62, ; uint32_t name_length (0x3e)
		ptr @_XamarinAndroidBundledAssembly_name_b0_b0; char* name
	}, ; 176
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 62, ; uint32_t name_length (0x3e)
		ptr @_XamarinAndroidBundledAssembly_name_b1_b1; char* name
	}, ; 177
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 62, ; uint32_t name_length (0x3e)
		ptr @_XamarinAndroidBundledAssembly_name_b2_b2; char* name
	}, ; 178
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 62, ; uint32_t name_length (0x3e)
		ptr @_XamarinAndroidBundledAssembly_name_b3_b3; char* name
	}, ; 179
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 62, ; uint32_t name_length (0x3e)
		ptr @_XamarinAndroidBundledAssembly_name_b4_b4; char* name
	}, ; 180
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 62, ; uint32_t name_length (0x3e)
		ptr @_XamarinAndroidBundledAssembly_name_b5_b5; char* name
	}, ; 181
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 62, ; uint32_t name_length (0x3e)
		ptr @_XamarinAndroidBundledAssembly_name_b6_b6; char* name
	}, ; 182
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 62, ; uint32_t name_length (0x3e)
		ptr @_XamarinAndroidBundledAssembly_name_b7_b7; char* name
	}, ; 183
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 62, ; uint32_t name_length (0x3e)
		ptr @_XamarinAndroidBundledAssembly_name_b8_b8; char* name
	}, ; 184
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 62, ; uint32_t name_length (0x3e)
		ptr @_XamarinAndroidBundledAssembly_name_b9_b9; char* name
	}, ; 185
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 62, ; uint32_t name_length (0x3e)
		ptr @_XamarinAndroidBundledAssembly_name_ba_ba; char* name
	}, ; 186
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 62, ; uint32_t name_length (0x3e)
		ptr @_XamarinAndroidBundledAssembly_name_bb_bb; char* name
	}, ; 187
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 62, ; uint32_t name_length (0x3e)
		ptr @_XamarinAndroidBundledAssembly_name_bc_bc; char* name
	}, ; 188
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 62, ; uint32_t name_length (0x3e)
		ptr @_XamarinAndroidBundledAssembly_name_bd_bd; char* name
	}, ; 189
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 62, ; uint32_t name_length (0x3e)
		ptr @_XamarinAndroidBundledAssembly_name_be_be; char* name
	}, ; 190
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 62, ; uint32_t name_length (0x3e)
		ptr @_XamarinAndroidBundledAssembly_name_bf_bf; char* name
	}, ; 191
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 62, ; uint32_t name_length (0x3e)
		ptr @_XamarinAndroidBundledAssembly_name_c0_c0; char* name
	}, ; 192
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 62, ; uint32_t name_length (0x3e)
		ptr @_XamarinAndroidBundledAssembly_name_c1_c1; char* name
	}, ; 193
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 62, ; uint32_t name_length (0x3e)
		ptr @_XamarinAndroidBundledAssembly_name_c2_c2; char* name
	}, ; 194
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 62, ; uint32_t name_length (0x3e)
		ptr @_XamarinAndroidBundledAssembly_name_c3_c3; char* name
	}, ; 195
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 62, ; uint32_t name_length (0x3e)
		ptr @_XamarinAndroidBundledAssembly_name_c4_c4; char* name
	}, ; 196
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 62, ; uint32_t name_length (0x3e)
		ptr @_XamarinAndroidBundledAssembly_name_c5_c5; char* name
	}, ; 197
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 62, ; uint32_t name_length (0x3e)
		ptr @_XamarinAndroidBundledAssembly_name_c6_c6; char* name
	}, ; 198
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 62, ; uint32_t name_length (0x3e)
		ptr @_XamarinAndroidBundledAssembly_name_c7_c7; char* name
	}, ; 199
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 62, ; uint32_t name_length (0x3e)
		ptr @_XamarinAndroidBundledAssembly_name_c8_c8; char* name
	}, ; 200
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 62, ; uint32_t name_length (0x3e)
		ptr @_XamarinAndroidBundledAssembly_name_c9_c9; char* name
	}, ; 201
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 62, ; uint32_t name_length (0x3e)
		ptr @_XamarinAndroidBundledAssembly_name_ca_ca; char* name
	}, ; 202
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 62, ; uint32_t name_length (0x3e)
		ptr @_XamarinAndroidBundledAssembly_name_cb_cb; char* name
	}, ; 203
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 62, ; uint32_t name_length (0x3e)
		ptr @_XamarinAndroidBundledAssembly_name_cc_cc; char* name
	}, ; 204
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 62, ; uint32_t name_length (0x3e)
		ptr @_XamarinAndroidBundledAssembly_name_cd_cd; char* name
	}, ; 205
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 62, ; uint32_t name_length (0x3e)
		ptr @_XamarinAndroidBundledAssembly_name_ce_ce; char* name
	}, ; 206
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 62, ; uint32_t name_length (0x3e)
		ptr @_XamarinAndroidBundledAssembly_name_cf_cf; char* name
	}, ; 207
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 62, ; uint32_t name_length (0x3e)
		ptr @_XamarinAndroidBundledAssembly_name_d0_d0; char* name
	}, ; 208
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 62, ; uint32_t name_length (0x3e)
		ptr @_XamarinAndroidBundledAssembly_name_d1_d1; char* name
	}, ; 209
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 62, ; uint32_t name_length (0x3e)
		ptr @_XamarinAndroidBundledAssembly_name_d2_d2; char* name
	}, ; 210
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 62, ; uint32_t name_length (0x3e)
		ptr @_XamarinAndroidBundledAssembly_name_d3_d3; char* name
	}, ; 211
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 62, ; uint32_t name_length (0x3e)
		ptr @_XamarinAndroidBundledAssembly_name_d4_d4; char* name
	}, ; 212
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 62, ; uint32_t name_length (0x3e)
		ptr @_XamarinAndroidBundledAssembly_name_d5_d5; char* name
	}, ; 213
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 62, ; uint32_t name_length (0x3e)
		ptr @_XamarinAndroidBundledAssembly_name_d6_d6; char* name
	}, ; 214
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 62, ; uint32_t name_length (0x3e)
		ptr @_XamarinAndroidBundledAssembly_name_d7_d7; char* name
	}, ; 215
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 62, ; uint32_t name_length (0x3e)
		ptr @_XamarinAndroidBundledAssembly_name_d8_d8; char* name
	}, ; 216
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 62, ; uint32_t name_length (0x3e)
		ptr @_XamarinAndroidBundledAssembly_name_d9_d9; char* name
	}, ; 217
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 62, ; uint32_t name_length (0x3e)
		ptr @_XamarinAndroidBundledAssembly_name_da_da; char* name
	}, ; 218
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 62, ; uint32_t name_length (0x3e)
		ptr @_XamarinAndroidBundledAssembly_name_db_db; char* name
	}, ; 219
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 62, ; uint32_t name_length (0x3e)
		ptr @_XamarinAndroidBundledAssembly_name_dc_dc; char* name
	}, ; 220
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 62, ; uint32_t name_length (0x3e)
		ptr @_XamarinAndroidBundledAssembly_name_dd_dd; char* name
	}, ; 221
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 62, ; uint32_t name_length (0x3e)
		ptr @_XamarinAndroidBundledAssembly_name_de_de; char* name
	}, ; 222
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 62, ; uint32_t name_length (0x3e)
		ptr @_XamarinAndroidBundledAssembly_name_df_df; char* name
	}, ; 223
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 62, ; uint32_t name_length (0x3e)
		ptr @_XamarinAndroidBundledAssembly_name_e0_e0; char* name
	}, ; 224
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 62, ; uint32_t name_length (0x3e)
		ptr @_XamarinAndroidBundledAssembly_name_e1_e1; char* name
	}, ; 225
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 62, ; uint32_t name_length (0x3e)
		ptr @_XamarinAndroidBundledAssembly_name_e2_e2; char* name
	}, ; 226
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 62, ; uint32_t name_length (0x3e)
		ptr @_XamarinAndroidBundledAssembly_name_e3_e3; char* name
	}, ; 227
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 62, ; uint32_t name_length (0x3e)
		ptr @_XamarinAndroidBundledAssembly_name_e4_e4; char* name
	}, ; 228
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 62, ; uint32_t name_length (0x3e)
		ptr @_XamarinAndroidBundledAssembly_name_e5_e5; char* name
	}, ; 229
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 62, ; uint32_t name_length (0x3e)
		ptr @_XamarinAndroidBundledAssembly_name_e6_e6; char* name
	}, ; 230
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 62, ; uint32_t name_length (0x3e)
		ptr @_XamarinAndroidBundledAssembly_name_e7_e7; char* name
	}, ; 231
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 62, ; uint32_t name_length (0x3e)
		ptr @_XamarinAndroidBundledAssembly_name_e8_e8; char* name
	}, ; 232
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 62, ; uint32_t name_length (0x3e)
		ptr @_XamarinAndroidBundledAssembly_name_e9_e9; char* name
	}, ; 233
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 62, ; uint32_t name_length (0x3e)
		ptr @_XamarinAndroidBundledAssembly_name_ea_ea; char* name
	}, ; 234
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 62, ; uint32_t name_length (0x3e)
		ptr @_XamarinAndroidBundledAssembly_name_eb_eb; char* name
	}, ; 235
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 62, ; uint32_t name_length (0x3e)
		ptr @_XamarinAndroidBundledAssembly_name_ec_ec; char* name
	}, ; 236
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 62, ; uint32_t name_length (0x3e)
		ptr @_XamarinAndroidBundledAssembly_name_ed_ed; char* name
	}, ; 237
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 62, ; uint32_t name_length (0x3e)
		ptr @_XamarinAndroidBundledAssembly_name_ee_ee; char* name
	}, ; 238
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 62, ; uint32_t name_length (0x3e)
		ptr @_XamarinAndroidBundledAssembly_name_ef_ef; char* name
	}, ; 239
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 62, ; uint32_t name_length (0x3e)
		ptr @_XamarinAndroidBundledAssembly_name_f0_f0; char* name
	}, ; 240
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 62, ; uint32_t name_length (0x3e)
		ptr @_XamarinAndroidBundledAssembly_name_f1_f1; char* name
	}, ; 241
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 62, ; uint32_t name_length (0x3e)
		ptr @_XamarinAndroidBundledAssembly_name_f2_f2; char* name
	}, ; 242
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 62, ; uint32_t name_length (0x3e)
		ptr @_XamarinAndroidBundledAssembly_name_f3_f3; char* name
	}, ; 243
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 62, ; uint32_t name_length (0x3e)
		ptr @_XamarinAndroidBundledAssembly_name_f4_f4; char* name
	}, ; 244
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 62, ; uint32_t name_length (0x3e)
		ptr @_XamarinAndroidBundledAssembly_name_f5_f5; char* name
	}, ; 245
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 62, ; uint32_t name_length (0x3e)
		ptr @_XamarinAndroidBundledAssembly_name_f6_f6; char* name
	}, ; 246
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 62, ; uint32_t name_length (0x3e)
		ptr @_XamarinAndroidBundledAssembly_name_f7_f7; char* name
	}, ; 247
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 62, ; uint32_t name_length (0x3e)
		ptr @_XamarinAndroidBundledAssembly_name_f8_f8; char* name
	}, ; 248
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 62, ; uint32_t name_length (0x3e)
		ptr @_XamarinAndroidBundledAssembly_name_f9_f9; char* name
	}, ; 249
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 62, ; uint32_t name_length (0x3e)
		ptr @_XamarinAndroidBundledAssembly_name_fa_fa; char* name
	}, ; 250
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 62, ; uint32_t name_length (0x3e)
		ptr @_XamarinAndroidBundledAssembly_name_fb_fb; char* name
	}, ; 251
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 62, ; uint32_t name_length (0x3e)
		ptr @_XamarinAndroidBundledAssembly_name_fc_fc; char* name
	}, ; 252
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 62, ; uint32_t name_length (0x3e)
		ptr @_XamarinAndroidBundledAssembly_name_fd_fd; char* name
	}, ; 253
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 62, ; uint32_t name_length (0x3e)
		ptr @_XamarinAndroidBundledAssembly_name_fe_fe; char* name
	}, ; 254
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 62, ; uint32_t name_length (0x3e)
		ptr @_XamarinAndroidBundledAssembly_name_ff_ff; char* name
	}, ; 255
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 62, ; uint32_t name_length (0x3e)
		ptr @_XamarinAndroidBundledAssembly_name_100_100; char* name
	}, ; 256
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 62, ; uint32_t name_length (0x3e)
		ptr @_XamarinAndroidBundledAssembly_name_101_101; char* name
	}, ; 257
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 62, ; uint32_t name_length (0x3e)
		ptr @_XamarinAndroidBundledAssembly_name_102_102; char* name
	}, ; 258
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 62, ; uint32_t name_length (0x3e)
		ptr @_XamarinAndroidBundledAssembly_name_103_103; char* name
	}, ; 259
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 62, ; uint32_t name_length (0x3e)
		ptr @_XamarinAndroidBundledAssembly_name_104_104; char* name
	}, ; 260
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 62, ; uint32_t name_length (0x3e)
		ptr @_XamarinAndroidBundledAssembly_name_105_105; char* name
	}, ; 261
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 62, ; uint32_t name_length (0x3e)
		ptr @_XamarinAndroidBundledAssembly_name_106_106; char* name
	}, ; 262
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 62, ; uint32_t name_length (0x3e)
		ptr @_XamarinAndroidBundledAssembly_name_107_107; char* name
	}, ; 263
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 62, ; uint32_t name_length (0x3e)
		ptr @_XamarinAndroidBundledAssembly_name_108_108; char* name
	}, ; 264
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 62, ; uint32_t name_length (0x3e)
		ptr @_XamarinAndroidBundledAssembly_name_109_109; char* name
	}, ; 265
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 62, ; uint32_t name_length (0x3e)
		ptr @_XamarinAndroidBundledAssembly_name_10a_10a; char* name
	}, ; 266
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 62, ; uint32_t name_length (0x3e)
		ptr @_XamarinAndroidBundledAssembly_name_10b_10b; char* name
	}, ; 267
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 62, ; uint32_t name_length (0x3e)
		ptr @_XamarinAndroidBundledAssembly_name_10c_10c; char* name
	}, ; 268
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 62, ; uint32_t name_length (0x3e)
		ptr @_XamarinAndroidBundledAssembly_name_10d_10d; char* name
	}, ; 269
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 62, ; uint32_t name_length (0x3e)
		ptr @_XamarinAndroidBundledAssembly_name_10e_10e; char* name
	}, ; 270
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 62, ; uint32_t name_length (0x3e)
		ptr @_XamarinAndroidBundledAssembly_name_10f_10f; char* name
	}, ; 271
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 62, ; uint32_t name_length (0x3e)
		ptr @_XamarinAndroidBundledAssembly_name_110_110; char* name
	}, ; 272
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 62, ; uint32_t name_length (0x3e)
		ptr @_XamarinAndroidBundledAssembly_name_111_111; char* name
	}, ; 273
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 62, ; uint32_t name_length (0x3e)
		ptr @_XamarinAndroidBundledAssembly_name_112_112; char* name
	}, ; 274
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 62, ; uint32_t name_length (0x3e)
		ptr @_XamarinAndroidBundledAssembly_name_113_113; char* name
	}, ; 275
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 62, ; uint32_t name_length (0x3e)
		ptr @_XamarinAndroidBundledAssembly_name_114_114; char* name
	}, ; 276
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 62, ; uint32_t name_length (0x3e)
		ptr @_XamarinAndroidBundledAssembly_name_115_115; char* name
	}, ; 277
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 62, ; uint32_t name_length (0x3e)
		ptr @_XamarinAndroidBundledAssembly_name_116_116; char* name
	}, ; 278
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 62, ; uint32_t name_length (0x3e)
		ptr @_XamarinAndroidBundledAssembly_name_117_117; char* name
	}, ; 279
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 62, ; uint32_t name_length (0x3e)
		ptr @_XamarinAndroidBundledAssembly_name_118_118; char* name
	}, ; 280
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 62, ; uint32_t name_length (0x3e)
		ptr @_XamarinAndroidBundledAssembly_name_119_119; char* name
	}, ; 281
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 62, ; uint32_t name_length (0x3e)
		ptr @_XamarinAndroidBundledAssembly_name_11a_11a; char* name
	}, ; 282
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 62, ; uint32_t name_length (0x3e)
		ptr @_XamarinAndroidBundledAssembly_name_11b_11b; char* name
	}, ; 283
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 62, ; uint32_t name_length (0x3e)
		ptr @_XamarinAndroidBundledAssembly_name_11c_11c; char* name
	}, ; 284
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 62, ; uint32_t name_length (0x3e)
		ptr @_XamarinAndroidBundledAssembly_name_11d_11d; char* name
	}, ; 285
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 62, ; uint32_t name_length (0x3e)
		ptr @_XamarinAndroidBundledAssembly_name_11e_11e; char* name
	}, ; 286
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 62, ; uint32_t name_length (0x3e)
		ptr @_XamarinAndroidBundledAssembly_name_11f_11f; char* name
	}, ; 287
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 62, ; uint32_t name_length (0x3e)
		ptr @_XamarinAndroidBundledAssembly_name_120_120; char* name
	}, ; 288
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 62, ; uint32_t name_length (0x3e)
		ptr @_XamarinAndroidBundledAssembly_name_121_121; char* name
	}, ; 289
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 62, ; uint32_t name_length (0x3e)
		ptr @_XamarinAndroidBundledAssembly_name_122_122; char* name
	}, ; 290
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 62, ; uint32_t name_length (0x3e)
		ptr @_XamarinAndroidBundledAssembly_name_123_123; char* name
	}, ; 291
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 62, ; uint32_t name_length (0x3e)
		ptr @_XamarinAndroidBundledAssembly_name_124_124; char* name
	}, ; 292
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 62, ; uint32_t name_length (0x3e)
		ptr @_XamarinAndroidBundledAssembly_name_125_125; char* name
	}, ; 293
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 62, ; uint32_t name_length (0x3e)
		ptr @_XamarinAndroidBundledAssembly_name_126_126; char* name
	}, ; 294
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 62, ; uint32_t name_length (0x3e)
		ptr @_XamarinAndroidBundledAssembly_name_127_127; char* name
	}, ; 295
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 62, ; uint32_t name_length (0x3e)
		ptr @_XamarinAndroidBundledAssembly_name_128_128; char* name
	}, ; 296
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 62, ; uint32_t name_length (0x3e)
		ptr @_XamarinAndroidBundledAssembly_name_129_129; char* name
	}, ; 297
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 62, ; uint32_t name_length (0x3e)
		ptr @_XamarinAndroidBundledAssembly_name_12a_12a; char* name
	}, ; 298
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 62, ; uint32_t name_length (0x3e)
		ptr @_XamarinAndroidBundledAssembly_name_12b_12b; char* name
	}, ; 299
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 62, ; uint32_t name_length (0x3e)
		ptr @_XamarinAndroidBundledAssembly_name_12c_12c; char* name
	}, ; 300
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 62, ; uint32_t name_length (0x3e)
		ptr @_XamarinAndroidBundledAssembly_name_12d_12d; char* name
	}, ; 301
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 62, ; uint32_t name_length (0x3e)
		ptr @_XamarinAndroidBundledAssembly_name_12e_12e; char* name
	}, ; 302
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 62, ; uint32_t name_length (0x3e)
		ptr @_XamarinAndroidBundledAssembly_name_12f_12f; char* name
	}, ; 303
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 62, ; uint32_t name_length (0x3e)
		ptr @_XamarinAndroidBundledAssembly_name_130_130; char* name
	}, ; 304
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 62, ; uint32_t name_length (0x3e)
		ptr @_XamarinAndroidBundledAssembly_name_131_131; char* name
	}, ; 305
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 62, ; uint32_t name_length (0x3e)
		ptr @_XamarinAndroidBundledAssembly_name_132_132; char* name
	}, ; 306
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 62, ; uint32_t name_length (0x3e)
		ptr @_XamarinAndroidBundledAssembly_name_133_133; char* name
	}, ; 307
	%struct.XamarinAndroidBundledAssembly {
		i32 -1, ; int32_t apk_fd (0xffffffff)
		i32 0, ; uint32_t data_offset (0x0)
		i32 0, ; uint32_t data_size (0x0)
		ptr null, ; uint8_t* data (0x0)
		i32 62, ; uint32_t name_length (0x3e)
		ptr @_XamarinAndroidBundledAssembly_name_134_134; char* name
	} ; 308
], align 4

@assembly_store_bundled_assemblies = dso_local local_unnamed_addr global [0 x %struct.AssemblyStoreSingleAssemblyRuntimeData] zeroinitializer, align 4

@assembly_stores = dso_local local_unnamed_addr global [0 x %struct.AssemblyStoreRuntimeData] zeroinitializer, align 4

; Strings
@.str.0 = private unnamed_addr constant [7 x i8] c"normal\00", align 1

; Application environment variables name:value pairs
@.env.0 = private unnamed_addr constant [29 x i8] c"DOTNET_MODIFIABLE_ASSEMBLIES\00", align 1
@.env.1 = private unnamed_addr constant [6 x i8] c"Debug\00", align 1
@.env.2 = private unnamed_addr constant [15 x i8] c"MONO_GC_PARAMS\00", align 1
@.env.3 = private unnamed_addr constant [21 x i8] c"major=marksweep-conc\00", align 1
@.env.4 = private unnamed_addr constant [15 x i8] c"MONO_LOG_LEVEL\00", align 1
@.env.5 = private unnamed_addr constant [5 x i8] c"info\00", align 1
@.env.6 = private unnamed_addr constant [17 x i8] c"XAMARIN_BUILD_ID\00", align 1
@.env.7 = private unnamed_addr constant [37 x i8] c"2af80d53-fd4e-40ea-b862-30100c6a165f\00", align 1
@.env.8 = private unnamed_addr constant [28 x i8] c"XA_HTTP_CLIENT_HANDLER_TYPE\00", align 1
@.env.9 = private unnamed_addr constant [42 x i8] c"Xamarin.Android.Net.AndroidMessageHandler\00", align 1
@.env.10 = private unnamed_addr constant [29 x i8] c"__XA_PACKAGE_NAMING_POLICY__\00", align 1
@.env.11 = private unnamed_addr constant [15 x i8] c"LowercaseCrc64\00", align 1

;ApplicationConfig
@.ApplicationConfig.0_android_package_name = private unnamed_addr constant [25 x i8] c"com.companyname.mauiapp1\00", align 1

;DSOCacheEntry
@.DSOCacheEntry.0_name = private unnamed_addr constant [35 x i8] c"libSystem.IO.Compression.Native.so\00", align 1
@.DSOCacheEntry.1_name = private unnamed_addr constant [20 x i8] c"libSystem.Native.so\00", align 1
@.DSOCacheEntry.2_name = private unnamed_addr constant [50 x i8] c"libSystem.Security.Cryptography.Native.Android.so\00", align 1
@.DSOCacheEntry.3_name = private unnamed_addr constant [30 x i8] c"libmono-component-debugger.so\00", align 1
@.DSOCacheEntry.4_name = private unnamed_addr constant [32 x i8] c"libmono-component-hot_reload.so\00", align 1
@.DSOCacheEntry.5_name = private unnamed_addr constant [35 x i8] c"libmono-component-marshal-ilgen.so\00", align 1
@.DSOCacheEntry.6_name = private unnamed_addr constant [19 x i8] c"libmonosgen-2.0.so\00", align 1
@.DSOCacheEntry.7_name = private unnamed_addr constant [16 x i8] c"libmonodroid.so\00", align 1
@.DSOCacheEntry.8_name = private unnamed_addr constant [31 x i8] c"libxamarin-debug-app-helper.so\00", align 1
@.DSOCacheEntry.9_name = private unnamed_addr constant [23 x i8] c"libaot-MauiApp1.dll.so\00", align 1
@.DSOCacheEntry.10_name = private unnamed_addr constant [51 x i8] c"libaot-_Microsoft.Android.Resource.Designer.dll.so\00", align 1
@.DSOCacheEntry.11_name = private unnamed_addr constant [31 x i8] c"libaot-Microsoft.CSharp.dll.so\00", align 1
@.DSOCacheEntry.12_name = private unnamed_addr constant [41 x i8] c"libaot-Microsoft.VisualBasic.Core.dll.so\00", align 1
@.DSOCacheEntry.13_name = private unnamed_addr constant [36 x i8] c"libaot-Microsoft.VisualBasic.dll.so\00", align 1
@.DSOCacheEntry.14_name = private unnamed_addr constant [41 x i8] c"libaot-Microsoft.Win32.Primitives.dll.so\00", align 1
@.DSOCacheEntry.15_name = private unnamed_addr constant [39 x i8] c"libaot-Microsoft.Win32.Registry.dll.so\00", align 1
@.DSOCacheEntry.16_name = private unnamed_addr constant [32 x i8] c"libaot-System.AppContext.dll.so\00", align 1
@.DSOCacheEntry.17_name = private unnamed_addr constant [29 x i8] c"libaot-System.Buffers.dll.so\00", align 1
@.DSOCacheEntry.18_name = private unnamed_addr constant [44 x i8] c"libaot-System.Collections.Concurrent.dll.so\00", align 1
@.DSOCacheEntry.19_name = private unnamed_addr constant [43 x i8] c"libaot-System.Collections.Immutable.dll.so\00", align 1
@.DSOCacheEntry.20_name = private unnamed_addr constant [44 x i8] c"libaot-System.Collections.NonGeneric.dll.so\00", align 1
@.DSOCacheEntry.21_name = private unnamed_addr constant [45 x i8] c"libaot-System.Collections.Specialized.dll.so\00", align 1
@.DSOCacheEntry.22_name = private unnamed_addr constant [33 x i8] c"libaot-System.Collections.dll.so\00", align 1
@.DSOCacheEntry.23_name = private unnamed_addr constant [48 x i8] c"libaot-System.ComponentModel.Annotations.dll.so\00", align 1
@.DSOCacheEntry.24_name = private unnamed_addr constant [52 x i8] c"libaot-System.ComponentModel.DataAnnotations.dll.so\00", align 1
@.DSOCacheEntry.25_name = private unnamed_addr constant [52 x i8] c"libaot-System.ComponentModel.EventBasedAsync.dll.so\00", align 1
@.DSOCacheEntry.26_name = private unnamed_addr constant [47 x i8] c"libaot-System.ComponentModel.Primitives.dll.so\00", align 1
@.DSOCacheEntry.27_name = private unnamed_addr constant [50 x i8] c"libaot-System.ComponentModel.TypeConverter.dll.so\00", align 1
@.DSOCacheEntry.28_name = private unnamed_addr constant [36 x i8] c"libaot-System.ComponentModel.dll.so\00", align 1
@.DSOCacheEntry.29_name = private unnamed_addr constant [35 x i8] c"libaot-System.Configuration.dll.so\00", align 1
@.DSOCacheEntry.30_name = private unnamed_addr constant [29 x i8] c"libaot-System.Console.dll.so\00", align 1
@.DSOCacheEntry.31_name = private unnamed_addr constant [26 x i8] c"libaot-System.Core.dll.so\00", align 1
@.DSOCacheEntry.32_name = private unnamed_addr constant [33 x i8] c"libaot-System.Data.Common.dll.so\00", align 1
@.DSOCacheEntry.33_name = private unnamed_addr constant [44 x i8] c"libaot-System.Data.DataSetExtensions.dll.so\00", align 1
@.DSOCacheEntry.34_name = private unnamed_addr constant [26 x i8] c"libaot-System.Data.dll.so\00", align 1
@.DSOCacheEntry.35_name = private unnamed_addr constant [43 x i8] c"libaot-System.Diagnostics.Contracts.dll.so\00", align 1
@.DSOCacheEntry.36_name = private unnamed_addr constant [39 x i8] c"libaot-System.Diagnostics.Debug.dll.so\00", align 1
@.DSOCacheEntry.37_name = private unnamed_addr constant [50 x i8] c"libaot-System.Diagnostics.DiagnosticSource.dll.so\00", align 1
@.DSOCacheEntry.38_name = private unnamed_addr constant [49 x i8] c"libaot-System.Diagnostics.FileVersionInfo.dll.so\00", align 1
@.DSOCacheEntry.39_name = private unnamed_addr constant [41 x i8] c"libaot-System.Diagnostics.Process.dll.so\00", align 1
@.DSOCacheEntry.40_name = private unnamed_addr constant [44 x i8] c"libaot-System.Diagnostics.StackTrace.dll.so\00", align 1
@.DSOCacheEntry.41_name = private unnamed_addr constant [57 x i8] c"libaot-System.Diagnostics.TextWriterTraceListener.dll.so\00", align 1
@.DSOCacheEntry.42_name = private unnamed_addr constant [39 x i8] c"libaot-System.Diagnostics.Tools.dll.so\00", align 1
@.DSOCacheEntry.43_name = private unnamed_addr constant [45 x i8] c"libaot-System.Diagnostics.TraceSource.dll.so\00", align 1
@.DSOCacheEntry.44_name = private unnamed_addr constant [41 x i8] c"libaot-System.Diagnostics.Tracing.dll.so\00", align 1
@.DSOCacheEntry.45_name = private unnamed_addr constant [40 x i8] c"libaot-System.Drawing.Primitives.dll.so\00", align 1
@.DSOCacheEntry.46_name = private unnamed_addr constant [29 x i8] c"libaot-System.Drawing.dll.so\00", align 1
@.DSOCacheEntry.47_name = private unnamed_addr constant [37 x i8] c"libaot-System.Dynamic.Runtime.dll.so\00", align 1
@.DSOCacheEntry.48_name = private unnamed_addr constant [34 x i8] c"libaot-System.Formats.Asn1.dll.so\00", align 1
@.DSOCacheEntry.49_name = private unnamed_addr constant [33 x i8] c"libaot-System.Formats.Tar.dll.so\00", align 1
@.DSOCacheEntry.50_name = private unnamed_addr constant [45 x i8] c"libaot-System.Globalization.Calendars.dll.so\00", align 1
@.DSOCacheEntry.51_name = private unnamed_addr constant [46 x i8] c"libaot-System.Globalization.Extensions.dll.so\00", align 1
@.DSOCacheEntry.52_name = private unnamed_addr constant [35 x i8] c"libaot-System.Globalization.dll.so\00", align 1
@.DSOCacheEntry.53_name = private unnamed_addr constant [43 x i8] c"libaot-System.IO.Compression.Brotli.dll.so\00", align 1
@.DSOCacheEntry.54_name = private unnamed_addr constant [47 x i8] c"libaot-System.IO.Compression.FileSystem.dll.so\00", align 1
@.DSOCacheEntry.55_name = private unnamed_addr constant [44 x i8] c"libaot-System.IO.Compression.ZipFile.dll.so\00", align 1
@.DSOCacheEntry.56_name = private unnamed_addr constant [36 x i8] c"libaot-System.IO.Compression.dll.so\00", align 1
@.DSOCacheEntry.57_name = private unnamed_addr constant [49 x i8] c"libaot-System.IO.FileSystem.AccessControl.dll.so\00", align 1
@.DSOCacheEntry.58_name = private unnamed_addr constant [45 x i8] c"libaot-System.IO.FileSystem.DriveInfo.dll.so\00", align 1
@.DSOCacheEntry.59_name = private unnamed_addr constant [46 x i8] c"libaot-System.IO.FileSystem.Primitives.dll.so\00", align 1
@.DSOCacheEntry.60_name = private unnamed_addr constant [43 x i8] c"libaot-System.IO.FileSystem.Watcher.dll.so\00", align 1
@.DSOCacheEntry.61_name = private unnamed_addr constant [35 x i8] c"libaot-System.IO.FileSystem.dll.so\00", align 1
@.DSOCacheEntry.62_name = private unnamed_addr constant [40 x i8] c"libaot-System.IO.IsolatedStorage.dll.so\00", align 1
@.DSOCacheEntry.63_name = private unnamed_addr constant [42 x i8] c"libaot-System.IO.MemoryMappedFiles.dll.so\00", align 1
@.DSOCacheEntry.64_name = private unnamed_addr constant [44 x i8] c"libaot-System.IO.Pipes.AccessControl.dll.so\00", align 1
@.DSOCacheEntry.65_name = private unnamed_addr constant [30 x i8] c"libaot-System.IO.Pipes.dll.so\00", align 1
@.DSOCacheEntry.66_name = private unnamed_addr constant [46 x i8] c"libaot-System.IO.UnmanagedMemoryStream.dll.so\00", align 1
@.DSOCacheEntry.67_name = private unnamed_addr constant [24 x i8] c"libaot-System.IO.dll.so\00", align 1
@.DSOCacheEntry.68_name = private unnamed_addr constant [38 x i8] c"libaot-System.Linq.Expressions.dll.so\00", align 1
@.DSOCacheEntry.69_name = private unnamed_addr constant [35 x i8] c"libaot-System.Linq.Parallel.dll.so\00", align 1
@.DSOCacheEntry.70_name = private unnamed_addr constant [36 x i8] c"libaot-System.Linq.Queryable.dll.so\00", align 1
@.DSOCacheEntry.71_name = private unnamed_addr constant [26 x i8] c"libaot-System.Linq.dll.so\00", align 1
@.DSOCacheEntry.72_name = private unnamed_addr constant [28 x i8] c"libaot-System.Memory.dll.so\00", align 1
@.DSOCacheEntry.73_name = private unnamed_addr constant [35 x i8] c"libaot-System.Net.Http.Json.dll.so\00", align 1
@.DSOCacheEntry.74_name = private unnamed_addr constant [30 x i8] c"libaot-System.Net.Http.dll.so\00", align 1
@.DSOCacheEntry.75_name = private unnamed_addr constant [38 x i8] c"libaot-System.Net.HttpListener.dll.so\00", align 1
@.DSOCacheEntry.76_name = private unnamed_addr constant [30 x i8] c"libaot-System.Net.Mail.dll.so\00", align 1
@.DSOCacheEntry.77_name = private unnamed_addr constant [40 x i8] c"libaot-System.Net.NameResolution.dll.so\00", align 1
@.DSOCacheEntry.78_name = private unnamed_addr constant [44 x i8] c"libaot-System.Net.NetworkInformation.dll.so\00", align 1
@.DSOCacheEntry.79_name = private unnamed_addr constant [30 x i8] c"libaot-System.Net.Ping.dll.so\00", align 1
@.DSOCacheEntry.80_name = private unnamed_addr constant [36 x i8] c"libaot-System.Net.Primitives.dll.so\00", align 1
@.DSOCacheEntry.81_name = private unnamed_addr constant [30 x i8] c"libaot-System.Net.Quic.dll.so\00", align 1
@.DSOCacheEntry.82_name = private unnamed_addr constant [34 x i8] c"libaot-System.Net.Requests.dll.so\00", align 1
@.DSOCacheEntry.83_name = private unnamed_addr constant [34 x i8] c"libaot-System.Net.Security.dll.so\00", align 1
@.DSOCacheEntry.84_name = private unnamed_addr constant [38 x i8] c"libaot-System.Net.ServicePoint.dll.so\00", align 1
@.DSOCacheEntry.85_name = private unnamed_addr constant [33 x i8] c"libaot-System.Net.Sockets.dll.so\00", align 1
@.DSOCacheEntry.86_name = private unnamed_addr constant [35 x i8] c"libaot-System.Net.WebClient.dll.so\00", align 1
@.DSOCacheEntry.87_name = private unnamed_addr constant [45 x i8] c"libaot-System.Net.WebHeaderCollection.dll.so\00", align 1
@.DSOCacheEntry.88_name = private unnamed_addr constant [34 x i8] c"libaot-System.Net.WebProxy.dll.so\00", align 1
@.DSOCacheEntry.89_name = private unnamed_addr constant [43 x i8] c"libaot-System.Net.WebSockets.Client.dll.so\00", align 1
@.DSOCacheEntry.90_name = private unnamed_addr constant [36 x i8] c"libaot-System.Net.WebSockets.dll.so\00", align 1
@.DSOCacheEntry.91_name = private unnamed_addr constant [25 x i8] c"libaot-System.Net.dll.so\00", align 1
@.DSOCacheEntry.92_name = private unnamed_addr constant [38 x i8] c"libaot-System.Numerics.Vectors.dll.so\00", align 1
@.DSOCacheEntry.93_name = private unnamed_addr constant [30 x i8] c"libaot-System.Numerics.dll.so\00", align 1
@.DSOCacheEntry.94_name = private unnamed_addr constant [33 x i8] c"libaot-System.ObjectModel.dll.so\00", align 1
@.DSOCacheEntry.95_name = private unnamed_addr constant [55 x i8] c"libaot-System.Private.DataContractSerialization.dll.so\00", align 1
@.DSOCacheEntry.96_name = private unnamed_addr constant [33 x i8] c"libaot-System.Private.Uri.dll.so\00", align 1
@.DSOCacheEntry.97_name = private unnamed_addr constant [38 x i8] c"libaot-System.Private.Xml.Linq.dll.so\00", align 1
@.DSOCacheEntry.98_name = private unnamed_addr constant [33 x i8] c"libaot-System.Private.Xml.dll.so\00", align 1
@.DSOCacheEntry.99_name = private unnamed_addr constant [46 x i8] c"libaot-System.Reflection.DispatchProxy.dll.so\00", align 1
@.DSOCacheEntry.100_name = private unnamed_addr constant [50 x i8] c"libaot-System.Reflection.Emit.ILGeneration.dll.so\00", align 1
@.DSOCacheEntry.101_name = private unnamed_addr constant [49 x i8] c"libaot-System.Reflection.Emit.Lightweight.dll.so\00", align 1
@.DSOCacheEntry.102_name = private unnamed_addr constant [37 x i8] c"libaot-System.Reflection.Emit.dll.so\00", align 1
@.DSOCacheEntry.103_name = private unnamed_addr constant [43 x i8] c"libaot-System.Reflection.Extensions.dll.so\00", align 1
@.DSOCacheEntry.104_name = private unnamed_addr constant [41 x i8] c"libaot-System.Reflection.Metadata.dll.so\00", align 1
@.DSOCacheEntry.105_name = private unnamed_addr constant [43 x i8] c"libaot-System.Reflection.Primitives.dll.so\00", align 1
@.DSOCacheEntry.106_name = private unnamed_addr constant [47 x i8] c"libaot-System.Reflection.TypeExtensions.dll.so\00", align 1
@.DSOCacheEntry.107_name = private unnamed_addr constant [32 x i8] c"libaot-System.Reflection.dll.so\00", align 1
@.DSOCacheEntry.108_name = private unnamed_addr constant [38 x i8] c"libaot-System.Resources.Reader.dll.so\00", align 1
@.DSOCacheEntry.109_name = private unnamed_addr constant [47 x i8] c"libaot-System.Resources.ResourceManager.dll.so\00", align 1
@.DSOCacheEntry.110_name = private unnamed_addr constant [38 x i8] c"libaot-System.Resources.Writer.dll.so\00", align 1
@.DSOCacheEntry.111_name = private unnamed_addr constant [53 x i8] c"libaot-System.Runtime.CompilerServices.Unsafe.dll.so\00", align 1
@.DSOCacheEntry.112_name = private unnamed_addr constant [54 x i8] c"libaot-System.Runtime.CompilerServices.VisualC.dll.so\00", align 1
@.DSOCacheEntry.113_name = private unnamed_addr constant [40 x i8] c"libaot-System.Runtime.Extensions.dll.so\00", align 1
@.DSOCacheEntry.114_name = private unnamed_addr constant [37 x i8] c"libaot-System.Runtime.Handles.dll.so\00", align 1
@.DSOCacheEntry.115_name = private unnamed_addr constant [56 x i8] c"libaot-System.Runtime.InteropServices.JavaScript.dll.so\00", align 1
@.DSOCacheEntry.116_name = private unnamed_addr constant [64 x i8] c"libaot-System.Runtime.InteropServices.RuntimeInformation.dll.so\00", align 1
@.DSOCacheEntry.117_name = private unnamed_addr constant [45 x i8] c"libaot-System.Runtime.InteropServices.dll.so\00", align 1
@.DSOCacheEntry.118_name = private unnamed_addr constant [40 x i8] c"libaot-System.Runtime.Intrinsics.dll.so\00", align 1
@.DSOCacheEntry.119_name = private unnamed_addr constant [36 x i8] c"libaot-System.Runtime.Loader.dll.so\00", align 1
@.DSOCacheEntry.120_name = private unnamed_addr constant [38 x i8] c"libaot-System.Runtime.Numerics.dll.so\00", align 1
@.DSOCacheEntry.121_name = private unnamed_addr constant [54 x i8] c"libaot-System.Runtime.Serialization.Formatters.dll.so\00", align 1
@.DSOCacheEntry.122_name = private unnamed_addr constant [48 x i8] c"libaot-System.Runtime.Serialization.Json.dll.so\00", align 1
@.DSOCacheEntry.123_name = private unnamed_addr constant [54 x i8] c"libaot-System.Runtime.Serialization.Primitives.dll.so\00", align 1
@.DSOCacheEntry.124_name = private unnamed_addr constant [47 x i8] c"libaot-System.Runtime.Serialization.Xml.dll.so\00", align 1
@.DSOCacheEntry.125_name = private unnamed_addr constant [43 x i8] c"libaot-System.Runtime.Serialization.dll.so\00", align 1
@.DSOCacheEntry.126_name = private unnamed_addr constant [29 x i8] c"libaot-System.Runtime.dll.so\00", align 1
@.DSOCacheEntry.127_name = private unnamed_addr constant [44 x i8] c"libaot-System.Security.AccessControl.dll.so\00", align 1
@.DSOCacheEntry.128_name = private unnamed_addr constant [37 x i8] c"libaot-System.Security.Claims.dll.so\00", align 1
@.DSOCacheEntry.129_name = private unnamed_addr constant [54 x i8] c"libaot-System.Security.Cryptography.Algorithms.dll.so\00", align 1
@.DSOCacheEntry.130_name = private unnamed_addr constant [47 x i8] c"libaot-System.Security.Cryptography.Cng.dll.so\00", align 1
@.DSOCacheEntry.131_name = private unnamed_addr constant [47 x i8] c"libaot-System.Security.Cryptography.Csp.dll.so\00", align 1
@.DSOCacheEntry.132_name = private unnamed_addr constant [52 x i8] c"libaot-System.Security.Cryptography.Encoding.dll.so\00", align 1
@.DSOCacheEntry.133_name = private unnamed_addr constant [51 x i8] c"libaot-System.Security.Cryptography.OpenSsl.dll.so\00", align 1
@.DSOCacheEntry.134_name = private unnamed_addr constant [54 x i8] c"libaot-System.Security.Cryptography.Primitives.dll.so\00", align 1
@.DSOCacheEntry.135_name = private unnamed_addr constant [60 x i8] c"libaot-System.Security.Cryptography.X509Certificates.dll.so\00", align 1
@.DSOCacheEntry.136_name = private unnamed_addr constant [43 x i8] c"libaot-System.Security.Cryptography.dll.so\00", align 1
@.DSOCacheEntry.137_name = private unnamed_addr constant [48 x i8] c"libaot-System.Security.Principal.Windows.dll.so\00", align 1
@.DSOCacheEntry.138_name = private unnamed_addr constant [40 x i8] c"libaot-System.Security.Principal.dll.so\00", align 1
@.DSOCacheEntry.139_name = private unnamed_addr constant [43 x i8] c"libaot-System.Security.SecureString.dll.so\00", align 1
@.DSOCacheEntry.140_name = private unnamed_addr constant [30 x i8] c"libaot-System.Security.dll.so\00", align 1
@.DSOCacheEntry.141_name = private unnamed_addr constant [38 x i8] c"libaot-System.ServiceModel.Web.dll.so\00", align 1
@.DSOCacheEntry.142_name = private unnamed_addr constant [36 x i8] c"libaot-System.ServiceProcess.dll.so\00", align 1
@.DSOCacheEntry.143_name = private unnamed_addr constant [45 x i8] c"libaot-System.Text.Encoding.CodePages.dll.so\00", align 1
@.DSOCacheEntry.144_name = private unnamed_addr constant [46 x i8] c"libaot-System.Text.Encoding.Extensions.dll.so\00", align 1
@.DSOCacheEntry.145_name = private unnamed_addr constant [35 x i8] c"libaot-System.Text.Encoding.dll.so\00", align 1
@.DSOCacheEntry.146_name = private unnamed_addr constant [40 x i8] c"libaot-System.Text.Encodings.Web.dll.so\00", align 1
@.DSOCacheEntry.147_name = private unnamed_addr constant [31 x i8] c"libaot-System.Text.Json.dll.so\00", align 1
@.DSOCacheEntry.148_name = private unnamed_addr constant [45 x i8] c"libaot-System.Text.RegularExpressions.dll.so\00", align 1
@.DSOCacheEntry.149_name = private unnamed_addr constant [40 x i8] c"libaot-System.Threading.Channels.dll.so\00", align 1
@.DSOCacheEntry.150_name = private unnamed_addr constant [42 x i8] c"libaot-System.Threading.Overlapped.dll.so\00", align 1
@.DSOCacheEntry.151_name = private unnamed_addr constant [46 x i8] c"libaot-System.Threading.Tasks.Dataflow.dll.so\00", align 1
@.DSOCacheEntry.152_name = private unnamed_addr constant [48 x i8] c"libaot-System.Threading.Tasks.Extensions.dll.so\00", align 1
@.DSOCacheEntry.153_name = private unnamed_addr constant [46 x i8] c"libaot-System.Threading.Tasks.Parallel.dll.so\00", align 1
@.DSOCacheEntry.154_name = private unnamed_addr constant [37 x i8] c"libaot-System.Threading.Tasks.dll.so\00", align 1
@.DSOCacheEntry.155_name = private unnamed_addr constant [38 x i8] c"libaot-System.Threading.Thread.dll.so\00", align 1
@.DSOCacheEntry.156_name = private unnamed_addr constant [42 x i8] c"libaot-System.Threading.ThreadPool.dll.so\00", align 1
@.DSOCacheEntry.157_name = private unnamed_addr constant [37 x i8] c"libaot-System.Threading.Timer.dll.so\00", align 1
@.DSOCacheEntry.158_name = private unnamed_addr constant [31 x i8] c"libaot-System.Threading.dll.so\00", align 1
@.DSOCacheEntry.159_name = private unnamed_addr constant [40 x i8] c"libaot-System.Transactions.Local.dll.so\00", align 1
@.DSOCacheEntry.160_name = private unnamed_addr constant [34 x i8] c"libaot-System.Transactions.dll.so\00", align 1
@.DSOCacheEntry.161_name = private unnamed_addr constant [32 x i8] c"libaot-System.ValueTuple.dll.so\00", align 1
@.DSOCacheEntry.162_name = private unnamed_addr constant [37 x i8] c"libaot-System.Web.HttpUtility.dll.so\00", align 1
@.DSOCacheEntry.163_name = private unnamed_addr constant [25 x i8] c"libaot-System.Web.dll.so\00", align 1
@.DSOCacheEntry.164_name = private unnamed_addr constant [29 x i8] c"libaot-System.Windows.dll.so\00", align 1
@.DSOCacheEntry.165_name = private unnamed_addr constant [30 x i8] c"libaot-System.Xml.Linq.dll.so\00", align 1
@.DSOCacheEntry.166_name = private unnamed_addr constant [38 x i8] c"libaot-System.Xml.ReaderWriter.dll.so\00", align 1
@.DSOCacheEntry.167_name = private unnamed_addr constant [39 x i8] c"libaot-System.Xml.Serialization.dll.so\00", align 1
@.DSOCacheEntry.168_name = private unnamed_addr constant [35 x i8] c"libaot-System.Xml.XDocument.dll.so\00", align 1
@.DSOCacheEntry.169_name = private unnamed_addr constant [41 x i8] c"libaot-System.Xml.XPath.XDocument.dll.so\00", align 1
@.DSOCacheEntry.170_name = private unnamed_addr constant [31 x i8] c"libaot-System.Xml.XPath.dll.so\00", align 1
@.DSOCacheEntry.171_name = private unnamed_addr constant [37 x i8] c"libaot-System.Xml.XmlDocument.dll.so\00", align 1
@.DSOCacheEntry.172_name = private unnamed_addr constant [39 x i8] c"libaot-System.Xml.XmlSerializer.dll.so\00", align 1
@.DSOCacheEntry.173_name = private unnamed_addr constant [25 x i8] c"libaot-System.Xml.dll.so\00", align 1
@.DSOCacheEntry.174_name = private unnamed_addr constant [21 x i8] c"libaot-System.dll.so\00", align 1
@.DSOCacheEntry.175_name = private unnamed_addr constant [26 x i8] c"libaot-WindowsBase.dll.so\00", align 1
@.DSOCacheEntry.176_name = private unnamed_addr constant [23 x i8] c"libaot-mscorlib.dll.so\00", align 1
@.DSOCacheEntry.177_name = private unnamed_addr constant [26 x i8] c"libaot-netstandard.dll.so\00", align 1
@.DSOCacheEntry.178_name = private unnamed_addr constant [27 x i8] c"libaot-Java.Interop.dll.so\00", align 1
@.DSOCacheEntry.179_name = private unnamed_addr constant [34 x i8] c"libaot-Mono.Android.Export.dll.so\00", align 1
@.DSOCacheEntry.180_name = private unnamed_addr constant [35 x i8] c"libaot-Mono.Android.Runtime.dll.so\00", align 1
@.DSOCacheEntry.181_name = private unnamed_addr constant [27 x i8] c"libaot-Mono.Android.dll.so\00", align 1
@.DSOCacheEntry.182_name = private unnamed_addr constant [36 x i8] c"libaot-CommunityToolkit.Mvvm.dll.so\00", align 1
@.DSOCacheEntry.183_name = private unnamed_addr constant [25 x i8] c"libaot-GoogleGson.dll.so\00", align 1
@.DSOCacheEntry.184_name = private unnamed_addr constant [49 x i8] c"libaot-Microsoft.Extensions.Configuration.dll.so\00", align 1
@.DSOCacheEntry.185_name = private unnamed_addr constant [62 x i8] c"libaot-Microsoft.Extensions.Configuration.Abstractions.dll.so\00", align 1
@.DSOCacheEntry.186_name = private unnamed_addr constant [55 x i8] c"libaot-Microsoft.Extensions.DependencyInjection.dll.so\00", align 1
@.DSOCacheEntry.187_name = private unnamed_addr constant [68 x i8] c"libaot-Microsoft.Extensions.DependencyInjection.Abstractions.dll.so\00", align 1
@.DSOCacheEntry.188_name = private unnamed_addr constant [43 x i8] c"libaot-Microsoft.Extensions.Logging.dll.so\00", align 1
@.DSOCacheEntry.189_name = private unnamed_addr constant [56 x i8] c"libaot-Microsoft.Extensions.Logging.Abstractions.dll.so\00", align 1
@.DSOCacheEntry.190_name = private unnamed_addr constant [49 x i8] c"libaot-Microsoft.Extensions.Logging.Debug.dll.so\00", align 1
@.DSOCacheEntry.191_name = private unnamed_addr constant [43 x i8] c"libaot-Microsoft.Extensions.Options.dll.so\00", align 1
@.DSOCacheEntry.192_name = private unnamed_addr constant [46 x i8] c"libaot-Microsoft.Extensions.Primitives.dll.so\00", align 1
@.DSOCacheEntry.193_name = private unnamed_addr constant [52 x i8] c"libaot-Microsoft.Maui.Controls.Compatibility.dll.so\00", align 1
@.DSOCacheEntry.194_name = private unnamed_addr constant [38 x i8] c"libaot-Microsoft.Maui.Controls.dll.so\00", align 1
@.DSOCacheEntry.195_name = private unnamed_addr constant [43 x i8] c"libaot-Microsoft.Maui.Controls.Xaml.dll.so\00", align 1
@.DSOCacheEntry.196_name = private unnamed_addr constant [29 x i8] c"libaot-Microsoft.Maui.dll.so\00", align 1
@.DSOCacheEntry.197_name = private unnamed_addr constant [40 x i8] c"libaot-Microsoft.Maui.Essentials.dll.so\00", align 1
@.DSOCacheEntry.198_name = private unnamed_addr constant [38 x i8] c"libaot-Microsoft.Maui.Graphics.dll.so\00", align 1
@.DSOCacheEntry.199_name = private unnamed_addr constant [30 x i8] c"libaot-Newtonsoft.Json.dll.so\00", align 1
@.DSOCacheEntry.200_name = private unnamed_addr constant [36 x i8] c"libaot-Xamarin.Android.Glide.dll.so\00", align 1
@.DSOCacheEntry.201_name = private unnamed_addr constant [48 x i8] c"libaot-Xamarin.Android.Glide.Annotations.dll.so\00", align 1
@.DSOCacheEntry.202_name = private unnamed_addr constant [49 x i8] c"libaot-Xamarin.Android.Glide.DiskLruCache.dll.so\00", align 1
@.DSOCacheEntry.203_name = private unnamed_addr constant [47 x i8] c"libaot-Xamarin.Android.Glide.GifDecoder.dll.so\00", align 1
@.DSOCacheEntry.204_name = private unnamed_addr constant [40 x i8] c"libaot-Xamarin.AndroidX.Activity.dll.so\00", align 1
@.DSOCacheEntry.205_name = private unnamed_addr constant [44 x i8] c"libaot-Xamarin.AndroidX.Activity.Ktx.dll.so\00", align 1
@.DSOCacheEntry.206_name = private unnamed_addr constant [42 x i8] c"libaot-Xamarin.AndroidX.Annotation.dll.so\00", align 1
@.DSOCacheEntry.207_name = private unnamed_addr constant [55 x i8] c"libaot-Xamarin.AndroidX.Annotation.Experimental.dll.so\00", align 1
@.DSOCacheEntry.208_name = private unnamed_addr constant [46 x i8] c"libaot-Xamarin.AndroidX.Annotation.Jvm.dll.so\00", align 1
@.DSOCacheEntry.209_name = private unnamed_addr constant [41 x i8] c"libaot-Xamarin.AndroidX.AppCompat.dll.so\00", align 1
@.DSOCacheEntry.210_name = private unnamed_addr constant [60 x i8] c"libaot-Xamarin.AndroidX.AppCompat.AppCompatResources.dll.so\00", align 1
@.DSOCacheEntry.211_name = private unnamed_addr constant [48 x i8] c"libaot-Xamarin.AndroidX.Arch.Core.Common.dll.so\00", align 1
@.DSOCacheEntry.212_name = private unnamed_addr constant [49 x i8] c"libaot-Xamarin.AndroidX.Arch.Core.Runtime.dll.so\00", align 1
@.DSOCacheEntry.213_name = private unnamed_addr constant [39 x i8] c"libaot-Xamarin.AndroidX.Browser.dll.so\00", align 1
@.DSOCacheEntry.214_name = private unnamed_addr constant [40 x i8] c"libaot-Xamarin.AndroidX.CardView.dll.so\00", align 1
@.DSOCacheEntry.215_name = private unnamed_addr constant [42 x i8] c"libaot-Xamarin.AndroidX.Collection.dll.so\00", align 1
@.DSOCacheEntry.216_name = private unnamed_addr constant [46 x i8] c"libaot-Xamarin.AndroidX.Collection.Ktx.dll.so\00", align 1
@.DSOCacheEntry.217_name = private unnamed_addr constant [50 x i8] c"libaot-Xamarin.AndroidX.Concurrent.Futures.dll.so\00", align 1
@.DSOCacheEntry.218_name = private unnamed_addr constant [48 x i8] c"libaot-Xamarin.AndroidX.ConstraintLayout.dll.so\00", align 1
@.DSOCacheEntry.219_name = private unnamed_addr constant [53 x i8] c"libaot-Xamarin.AndroidX.ConstraintLayout.Core.dll.so\00", align 1
@.DSOCacheEntry.220_name = private unnamed_addr constant [49 x i8] c"libaot-Xamarin.AndroidX.CoordinatorLayout.dll.so\00", align 1
@.DSOCacheEntry.221_name = private unnamed_addr constant [36 x i8] c"libaot-Xamarin.AndroidX.Core.dll.so\00", align 1
@.DSOCacheEntry.222_name = private unnamed_addr constant [45 x i8] c"libaot-Xamarin.AndroidX.Core.Core.Ktx.dll.so\00", align 1
@.DSOCacheEntry.223_name = private unnamed_addr constant [45 x i8] c"libaot-Xamarin.AndroidX.CursorAdapter.dll.so\00", align 1
@.DSOCacheEntry.224_name = private unnamed_addr constant [42 x i8] c"libaot-Xamarin.AndroidX.CustomView.dll.so\00", align 1
@.DSOCacheEntry.225_name = private unnamed_addr constant [59 x i8] c"libaot-Xamarin.AndroidX.CustomView.PoolingContainer.dll.so\00", align 1
@.DSOCacheEntry.226_name = private unnamed_addr constant [44 x i8] c"libaot-Xamarin.AndroidX.DocumentFile.dll.so\00", align 1
@.DSOCacheEntry.227_name = private unnamed_addr constant [44 x i8] c"libaot-Xamarin.AndroidX.DrawerLayout.dll.so\00", align 1
@.DSOCacheEntry.228_name = private unnamed_addr constant [48 x i8] c"libaot-Xamarin.AndroidX.DynamicAnimation.dll.so\00", align 1
@.DSOCacheEntry.229_name = private unnamed_addr constant [38 x i8] c"libaot-Xamarin.AndroidX.Emoji2.dll.so\00", align 1
@.DSOCacheEntry.230_name = private unnamed_addr constant [50 x i8] c"libaot-Xamarin.AndroidX.Emoji2.ViewsHelper.dll.so\00", align 1
@.DSOCacheEntry.231_name = private unnamed_addr constant [45 x i8] c"libaot-Xamarin.AndroidX.ExifInterface.dll.so\00", align 1
@.DSOCacheEntry.232_name = private unnamed_addr constant [40 x i8] c"libaot-Xamarin.AndroidX.Fragment.dll.so\00", align 1
@.DSOCacheEntry.233_name = private unnamed_addr constant [44 x i8] c"libaot-Xamarin.AndroidX.Fragment.Ktx.dll.so\00", align 1
@.DSOCacheEntry.234_name = private unnamed_addr constant [44 x i8] c"libaot-Xamarin.AndroidX.Interpolator.dll.so\00", align 1
@.DSOCacheEntry.235_name = private unnamed_addr constant [57 x i8] c"libaot-Xamarin.AndroidX.Legacy.Support.Core.Utils.dll.so\00", align 1
@.DSOCacheEntry.236_name = private unnamed_addr constant [48 x i8] c"libaot-Xamarin.AndroidX.Lifecycle.Common.dll.so\00", align 1
@.DSOCacheEntry.237_name = private unnamed_addr constant [50 x i8] c"libaot-Xamarin.AndroidX.Lifecycle.LiveData.dll.so\00", align 1
@.DSOCacheEntry.238_name = private unnamed_addr constant [55 x i8] c"libaot-Xamarin.AndroidX.Lifecycle.LiveData.Core.dll.so\00", align 1
@.DSOCacheEntry.239_name = private unnamed_addr constant [59 x i8] c"libaot-Xamarin.AndroidX.Lifecycle.LiveData.Core.Ktx.dll.so\00", align 1
@.DSOCacheEntry.240_name = private unnamed_addr constant [49 x i8] c"libaot-Xamarin.AndroidX.Lifecycle.Process.dll.so\00", align 1
@.DSOCacheEntry.241_name = private unnamed_addr constant [49 x i8] c"libaot-Xamarin.AndroidX.Lifecycle.Runtime.dll.so\00", align 1
@.DSOCacheEntry.242_name = private unnamed_addr constant [53 x i8] c"libaot-Xamarin.AndroidX.Lifecycle.Runtime.Ktx.dll.so\00", align 1
@.DSOCacheEntry.243_name = private unnamed_addr constant [51 x i8] c"libaot-Xamarin.AndroidX.Lifecycle.ViewModel.dll.so\00", align 1
@.DSOCacheEntry.244_name = private unnamed_addr constant [55 x i8] c"libaot-Xamarin.AndroidX.Lifecycle.ViewModel.Ktx.dll.so\00", align 1
@.DSOCacheEntry.245_name = private unnamed_addr constant [61 x i8] c"libaot-Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll.so\00", align 1
@.DSOCacheEntry.246_name = private unnamed_addr constant [38 x i8] c"libaot-Xamarin.AndroidX.Loader.dll.so\00", align 1
@.DSOCacheEntry.247_name = private unnamed_addr constant [53 x i8] c"libaot-Xamarin.AndroidX.LocalBroadcastManager.dll.so\00", align 1
@.DSOCacheEntry.248_name = private unnamed_addr constant [49 x i8] c"libaot-Xamarin.AndroidX.Navigation.Common.dll.so\00", align 1
@.DSOCacheEntry.249_name = private unnamed_addr constant [51 x i8] c"libaot-Xamarin.AndroidX.Navigation.Fragment.dll.so\00", align 1
@.DSOCacheEntry.250_name = private unnamed_addr constant [50 x i8] c"libaot-Xamarin.AndroidX.Navigation.Runtime.dll.so\00", align 1
@.DSOCacheEntry.251_name = private unnamed_addr constant [45 x i8] c"libaot-Xamarin.AndroidX.Navigation.UI.dll.so\00", align 1
@.DSOCacheEntry.252_name = private unnamed_addr constant [37 x i8] c"libaot-Xamarin.AndroidX.Print.dll.so\00", align 1
@.DSOCacheEntry.253_name = private unnamed_addr constant [65 x i8] c"libaot-Xamarin.AndroidX.ProfileInstaller.ProfileInstaller.dll.so\00", align 1
@.DSOCacheEntry.254_name = private unnamed_addr constant [44 x i8] c"libaot-Xamarin.AndroidX.RecyclerView.dll.so\00", align 1
@.DSOCacheEntry.255_name = private unnamed_addr constant [61 x i8] c"libaot-Xamarin.AndroidX.ResourceInspection.Annotation.dll.so\00", align 1
@.DSOCacheEntry.256_name = private unnamed_addr constant [42 x i8] c"libaot-Xamarin.AndroidX.SavedState.dll.so\00", align 1
@.DSOCacheEntry.257_name = private unnamed_addr constant [57 x i8] c"libaot-Xamarin.AndroidX.SavedState.SavedState.Ktx.dll.so\00", align 1
@.DSOCacheEntry.258_name = private unnamed_addr constant [55 x i8] c"libaot-Xamarin.AndroidX.Security.SecurityCrypto.dll.so\00", align 1
@.DSOCacheEntry.259_name = private unnamed_addr constant [49 x i8] c"libaot-Xamarin.AndroidX.SlidingPaneLayout.dll.so\00", align 1
@.DSOCacheEntry.260_name = private unnamed_addr constant [54 x i8] c"libaot-Xamarin.AndroidX.Startup.StartupRuntime.dll.so\00", align 1
@.DSOCacheEntry.261_name = private unnamed_addr constant [50 x i8] c"libaot-Xamarin.AndroidX.SwipeRefreshLayout.dll.so\00", align 1
@.DSOCacheEntry.262_name = private unnamed_addr constant [47 x i8] c"libaot-Xamarin.AndroidX.Tracing.Tracing.dll.so\00", align 1
@.DSOCacheEntry.263_name = private unnamed_addr constant [42 x i8] c"libaot-Xamarin.AndroidX.Transition.dll.so\00", align 1
@.DSOCacheEntry.264_name = private unnamed_addr constant [46 x i8] c"libaot-Xamarin.AndroidX.VectorDrawable.dll.so\00", align 1
@.DSOCacheEntry.265_name = private unnamed_addr constant [55 x i8] c"libaot-Xamarin.AndroidX.VectorDrawable.Animated.dll.so\00", align 1
@.DSOCacheEntry.266_name = private unnamed_addr constant [51 x i8] c"libaot-Xamarin.AndroidX.VersionedParcelable.dll.so\00", align 1
@.DSOCacheEntry.267_name = private unnamed_addr constant [41 x i8] c"libaot-Xamarin.AndroidX.ViewPager.dll.so\00", align 1
@.DSOCacheEntry.268_name = private unnamed_addr constant [42 x i8] c"libaot-Xamarin.AndroidX.ViewPager2.dll.so\00", align 1
@.DSOCacheEntry.269_name = private unnamed_addr constant [38 x i8] c"libaot-Xamarin.AndroidX.Window.dll.so\00", align 1
@.DSOCacheEntry.270_name = private unnamed_addr constant [59 x i8] c"libaot-Xamarin.AndroidX.Window.Extensions.Core.Core.dll.so\00", align 1
@.DSOCacheEntry.271_name = private unnamed_addr constant [46 x i8] c"libaot-Xamarin.Google.Android.Material.dll.so\00", align 1
@.DSOCacheEntry.272_name = private unnamed_addr constant [28 x i8] c"libaot-Jsr305Binding.dll.so\00", align 1
@.DSOCacheEntry.273_name = private unnamed_addr constant [49 x i8] c"libaot-Xamarin.Google.Crypto.Tink.Android.dll.so\00", align 1
@.DSOCacheEntry.274_name = private unnamed_addr constant [52 x i8] c"libaot-Xamarin.Google.ErrorProne.Annotations.dll.so\00", align 1
@.DSOCacheEntry.275_name = private unnamed_addr constant [52 x i8] c"libaot-Xamarin.Google.Guava.ListenableFuture.dll.so\00", align 1
@.DSOCacheEntry.276_name = private unnamed_addr constant [44 x i8] c"libaot-Xamarin.Jetbrains.Annotations.dll.so\00", align 1
@.DSOCacheEntry.277_name = private unnamed_addr constant [36 x i8] c"libaot-Xamarin.Kotlin.StdLib.dll.so\00", align 1
@.DSOCacheEntry.278_name = private unnamed_addr constant [43 x i8] c"libaot-Xamarin.Kotlin.StdLib.Common.dll.so\00", align 1
@.DSOCacheEntry.279_name = private unnamed_addr constant [41 x i8] c"libaot-Xamarin.Kotlin.StdLib.Jdk7.dll.so\00", align 1
@.DSOCacheEntry.280_name = private unnamed_addr constant [41 x i8] c"libaot-Xamarin.Kotlin.StdLib.Jdk8.dll.so\00", align 1
@.DSOCacheEntry.281_name = private unnamed_addr constant [49 x i8] c"libaot-Xamarin.KotlinX.Coroutines.Android.dll.so\00", align 1
@.DSOCacheEntry.282_name = private unnamed_addr constant [50 x i8] c"libaot-Xamarin.KotlinX.Coroutines.Core.Jvm.dll.so\00", align 1
@.DSOCacheEntry.283_name = private unnamed_addr constant [37 x i8] c"libaot-System.Private.CoreLib.dll.so\00", align 1

; Metadata
!llvm.module.flags = !{!0, !1, !7}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!llvm.ident = !{!2}
!2 = !{!"Xamarin.Android remotes/origin/release/8.0.1xx @ af27162bee43b7fecdca59b4f67aa8c175cbc875"}
!3 = !{!4, !4, i64 0}
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{i32 1, !"NumRegisterParameters", i32 0}
