﻿#pragma checksum "..\..\..\..\..\src\ReportWizard\Dialog\ReportWizard.xaml" "{406ea660-64cf-4c82-b6f0-42d48172a799}" "089C9F2672C2B09324D068A58E1464A7"
//------------------------------------------------------------------------------
// <auto-generated>
//     此代码由工具生成。
//     运行时版本:4.0.30319.42000
//
//     对此文件的更改可能会导致不正确的行为，并且如果
//     重新生成代码，这些更改将会丢失。
// </auto-generated>
//------------------------------------------------------------------------------

using ICSharpCode.Reporting.Addin.ReportWizard.Dialog;
using System;
using System.Diagnostics;
using System.Windows;
using System.Windows.Automation;
using System.Windows.Controls;
using System.Windows.Controls.Primitives;
using System.Windows.Data;
using System.Windows.Documents;
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
using Xceed.Wpf.Toolkit;
using Xceed.Wpf.Toolkit.Chromes;
using Xceed.Wpf.Toolkit.Core.Converters;
using Xceed.Wpf.Toolkit.Core.Input;
using Xceed.Wpf.Toolkit.Core.Media;
using Xceed.Wpf.Toolkit.Core.Utilities;
using Xceed.Wpf.Toolkit.Panels;
using Xceed.Wpf.Toolkit.Primitives;
using Xceed.Wpf.Toolkit.PropertyGrid;
using Xceed.Wpf.Toolkit.PropertyGrid.Attributes;
using Xceed.Wpf.Toolkit.PropertyGrid.Commands;
using Xceed.Wpf.Toolkit.PropertyGrid.Converters;
using Xceed.Wpf.Toolkit.PropertyGrid.Editors;
using Xceed.Wpf.Toolkit.Zoombox;


namespace ICSharpCode.Reporting.Addin.ReportWizard.Dialog {
    
    
    /// <summary>
    /// ReportWizard
    /// </summary>
    public partial class ReportWizard : System.Windows.Window, System.Windows.Markup.IComponentConnector {
        
        
        #line 8 "..\..\..\..\..\src\ReportWizard\Dialog\ReportWizard.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal Xceed.Wpf.Toolkit.Wizard _wizard;
        
        #line default
        #line hidden
        
        
        #line 18 "..\..\..\..\..\src\ReportWizard\Dialog\ReportWizard.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal ICSharpCode.Reporting.Addin.ReportWizard.Dialog.WelcomePage WelcomePage;
        
        #line default
        #line hidden
        
        
        #line 20 "..\..\..\..\..\src\ReportWizard\Dialog\ReportWizard.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal ICSharpCode.Reporting.Addin.ReportWizard.Dialog.BaseSettingsPage BaseSettingsPage;
        
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
            System.Uri resourceLocater = new System.Uri("/ICSharpCode.Reporting.Addin;component/src/reportwizard/dialog/reportwizard.xaml", System.UriKind.Relative);
            
            #line 1 "..\..\..\..\..\src\ReportWizard\Dialog\ReportWizard.xaml"
            System.Windows.Application.LoadComponent(this, resourceLocater);
            
            #line default
            #line hidden
        }
        
        [System.Diagnostics.DebuggerNonUserCodeAttribute()]
        [System.CodeDom.Compiler.GeneratedCodeAttribute("PresentationBuildTasks", "4.0.0.0")]
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1811:AvoidUncalledPrivateCode")]
        internal System.Delegate _CreateDelegate(System.Type delegateType, string handler) {
            return System.Delegate.CreateDelegate(delegateType, this, handler);
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
            this._wizard = ((Xceed.Wpf.Toolkit.Wizard)(target));
            
            #line 11 "..\..\..\..\..\src\ReportWizard\Dialog\ReportWizard.xaml"
            this._wizard.Finish += new System.Windows.RoutedEventHandler(this._wizard_Finish);
            
            #line default
            #line hidden
            
            #line 13 "..\..\..\..\..\src\ReportWizard\Dialog\ReportWizard.xaml"
            this._wizard.Next += new Xceed.Wpf.Toolkit.Wizard.NextRoutedEventHandler(this._wizard_Next);
            
            #line default
            #line hidden
            return;
            case 2:
            this.WelcomePage = ((ICSharpCode.Reporting.Addin.ReportWizard.Dialog.WelcomePage)(target));
            return;
            case 3:
            this.BaseSettingsPage = ((ICSharpCode.Reporting.Addin.ReportWizard.Dialog.BaseSettingsPage)(target));
            return;
            }
            this._contentLoaded = true;
        }
    }
}

