﻿#pragma checksum "..\..\..\Service\ExecuteProcessWindow.xaml" "{406ea660-64cf-4c82-b6f0-42d48172a799}" "CB62117D5E775F313825CB0D2E38C45A"
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


namespace ICSharpCode.SharpDevelop.Services {
    
    
    /// <summary>
    /// ExecuteProcessWindow
    /// </summary>
    public partial class ExecuteProcessWindow : System.Windows.Window, System.Windows.Markup.IComponentConnector {
        
        
        #line 39 "..\..\..\Service\ExecuteProcessWindow.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.TextBox pathTextBox;
        
        #line default
        #line hidden
        
        
        #line 49 "..\..\..\Service\ExecuteProcessWindow.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Button pathButton;
        
        #line default
        #line hidden
        
        
        #line 59 "..\..\..\Service\ExecuteProcessWindow.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.TextBox argumentsTextBox;
        
        #line default
        #line hidden
        
        
        #line 79 "..\..\..\Service\ExecuteProcessWindow.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Button workingDirectoryButton;
        
        #line default
        #line hidden
        
        
        #line 88 "..\..\..\Service\ExecuteProcessWindow.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.TextBox workingDirectoryTextBox;
        
        #line default
        #line hidden
        
        
        #line 104 "..\..\..\Service\ExecuteProcessWindow.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Button ExecuteButton;
        
        #line default
        #line hidden
        
        
        #line 110 "..\..\..\Service\ExecuteProcessWindow.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Button CancelButton;
        
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
            System.Uri resourceLocater = new System.Uri("/Debugger.AddIn;component/service/executeprocesswindow.xaml", System.UriKind.Relative);
            
            #line 1 "..\..\..\Service\ExecuteProcessWindow.xaml"
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
            this.pathTextBox = ((System.Windows.Controls.TextBox)(target));
            return;
            case 2:
            this.pathButton = ((System.Windows.Controls.Button)(target));
            
            #line 50 "..\..\..\Service\ExecuteProcessWindow.xaml"
            this.pathButton.Click += new System.Windows.RoutedEventHandler(this.pathButton_Click);
            
            #line default
            #line hidden
            return;
            case 3:
            this.argumentsTextBox = ((System.Windows.Controls.TextBox)(target));
            return;
            case 4:
            this.workingDirectoryButton = ((System.Windows.Controls.Button)(target));
            
            #line 75 "..\..\..\Service\ExecuteProcessWindow.xaml"
            this.workingDirectoryButton.Click += new System.Windows.RoutedEventHandler(this.workingDirectoryButton_Click);
            
            #line default
            #line hidden
            return;
            case 5:
            this.workingDirectoryTextBox = ((System.Windows.Controls.TextBox)(target));
            return;
            case 6:
            this.ExecuteButton = ((System.Windows.Controls.Button)(target));
            
            #line 105 "..\..\..\Service\ExecuteProcessWindow.xaml"
            this.ExecuteButton.Click += new System.Windows.RoutedEventHandler(this.ExecuteButton_Click);
            
            #line default
            #line hidden
            return;
            case 7:
            this.CancelButton = ((System.Windows.Controls.Button)(target));
            
            #line 112 "..\..\..\Service\ExecuteProcessWindow.xaml"
            this.CancelButton.Click += new System.Windows.RoutedEventHandler(this.CancelButton_Click);
            
            #line default
            #line hidden
            return;
            }
            this._contentLoaded = true;
        }
    }
}

