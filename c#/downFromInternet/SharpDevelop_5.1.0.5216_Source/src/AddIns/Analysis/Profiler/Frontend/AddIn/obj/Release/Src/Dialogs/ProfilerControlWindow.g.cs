﻿#pragma checksum "..\..\..\..\Src\Dialogs\ProfilerControlWindow.xaml" "{406ea660-64cf-4c82-b6f0-42d48172a799}" "F899488B2FA3884DBABE784541CD0B3F"
//------------------------------------------------------------------------------
// <auto-generated>
//     此代码由工具生成。
//     运行时版本:4.0.30319.42000
//
//     对此文件的更改可能会导致不正确的行为，并且如果
//     重新生成代码，这些更改将会丢失。
// </auto-generated>
//------------------------------------------------------------------------------

using ICSharpCode.Core.Presentation;
using ICSharpCode.SharpDevelop;
using System;
using System.Diagnostics;
using System.Windows;
using System.Windows.Automation;
using System.Windows.Controls;
using System.Windows.Controls.Primitives;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Forms.Integration;
using System.Windows.Ink;
using System.Windows.Input;
using System.Windows.Markup;
using System.Windows.Media;
using System.Windows.Media.Animation;
using System.Windows.Media.Effects;
using System.Windows.Media.Imaging;
using System.Windows.Media.Media3D;
using System.Windows.Media.TextFormatting;
using System.Windows.Navigation;
using System.Windows.Shapes;
using System.Windows.Shell;


namespace ICSharpCode.Profiler.AddIn.Dialogs {
    
    
    /// <summary>
    /// ProfilerControlWindow
    /// </summary>
    public partial class ProfilerControlWindow : System.Windows.Window, System.Windows.Markup.IComponentConnector {
        
        
        #line 18 "..\..\..\..\Src\Dialogs\ProfilerControlWindow.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Primitives.ToggleButton collectData;
        
        #line default
        #line hidden
        
        
        #line 23 "..\..\..\..\Src\Dialogs\ProfilerControlWindow.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Button shutdown;
        
        #line default
        #line hidden
        
        private bool _contentLoaded;
        
        /// <summary>
        /// InitializeComponent
        /// </summary>
        [System.Diagnostics.DebuggerNonUserCodeAttribute()]
        [System.CodeDom.Compiler.GeneratedCodeAttribute("PresentationBuildTasks", "4.0.0.0")]
        public void InitializeComponent() {
            if (_contentLoaded) {
                return;
            }
            _contentLoaded = true;
            System.Uri resourceLocater = new System.Uri("/ICSharpCode.Profiler.AddIn;component/src/dialogs/profilercontrolwindow.xaml", System.UriKind.Relative);
            
            #line 1 "..\..\..\..\Src\Dialogs\ProfilerControlWindow.xaml"
            System.Windows.Application.LoadComponent(this, resourceLocater);
            
            #line default
            #line hidden
        }
        
        [System.Diagnostics.DebuggerNonUserCodeAttribute()]
        [System.CodeDom.Compiler.GeneratedCodeAttribute("PresentationBuildTasks", "4.0.0.0")]
        [System.ComponentModel.EditorBrowsableAttribute(System.ComponentModel.EditorBrowsableState.Never)]
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Design", "CA1033:InterfaceMethodsShouldBeCallableByChildTypes")]
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Maintainability", "CA1502:AvoidExcessiveComplexity")]
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1800:DoNotCastUnnecessarily")]
        void System.Windows.Markup.IComponentConnector.Connect(int connectionId, object target) {
            switch (connectionId)
            {
            case 1:
            
            #line 5 "..\..\..\..\Src\Dialogs\ProfilerControlWindow.xaml"
            ((ICSharpCode.Profiler.AddIn.Dialogs.ProfilerControlWindow)(target)).Closing += new System.ComponentModel.CancelEventHandler(this.WindowClosing);
            
            #line default
            #line hidden
            return;
            case 2:
            this.collectData = ((System.Windows.Controls.Primitives.ToggleButton)(target));
            
            #line 19 "..\..\..\..\Src\Dialogs\ProfilerControlWindow.xaml"
            this.collectData.Checked += new System.Windows.RoutedEventHandler(this.CollectDataChecked);
            
            #line default
            #line hidden
            
            #line 20 "..\..\..\..\Src\Dialogs\ProfilerControlWindow.xaml"
            this.collectData.Unchecked += new System.Windows.RoutedEventHandler(this.CollectDataUnchecked);
            
            #line default
            #line hidden
            return;
            case 3:
            this.shutdown = ((System.Windows.Controls.Button)(target));
            
            #line 24 "..\..\..\..\Src\Dialogs\ProfilerControlWindow.xaml"
            this.shutdown.Click += new System.Windows.RoutedEventHandler(this.ShutdownClick);
            
            #line default
            #line hidden
            return;
            }
            this._contentLoaded = true;
        }
    }
}

