﻿#pragma checksum "..\..\..\Pages\Weeds.xaml" "{8829d00f-11b8-4213-878b-770e8597ac16}" "957ABFF98A0C49C4DC46B191FE97DBBA6644F3F14FECE30F048FC469A65E8E7E"
//------------------------------------------------------------------------------
// <auto-generated>
//     Этот код создан программой.
//     Исполняемая версия:4.0.30319.42000
//
//     Изменения в этом файле могут привести к неправильной работе и будут потеряны в случае
//     повторной генерации кода.
// </auto-generated>
//------------------------------------------------------------------------------

using Kursach.Pages;
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


namespace Kursach.Pages {
    
    
    /// <summary>
    /// Weeds
    /// </summary>
    public partial class Weeds : System.Windows.Controls.Page, System.Windows.Markup.IComponentConnector {
        
        
        #line 13 "..\..\..\Pages\Weeds.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.ColumnDefinition Col1;
        
        #line default
        #line hidden
        
        
        #line 20 "..\..\..\Pages\Weeds.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.StackPanel StPanel;
        
        #line default
        #line hidden
        
        
        #line 22 "..\..\..\Pages\Weeds.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.TextBox TxtSearch;
        
        #line default
        #line hidden
        
        
        #line 43 "..\..\..\Pages\Weeds.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.ListView lvHead;
        
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
            System.Uri resourceLocater = new System.Uri("/Kursach;component/pages/weeds.xaml", System.UriKind.Relative);
            
            #line 1 "..\..\..\Pages\Weeds.xaml"
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
            this.Col1 = ((System.Windows.Controls.ColumnDefinition)(target));
            return;
            case 2:
            this.StPanel = ((System.Windows.Controls.StackPanel)(target));
            return;
            case 3:
            this.TxtSearch = ((System.Windows.Controls.TextBox)(target));
            
            #line 22 "..\..\..\Pages\Weeds.xaml"
            this.TxtSearch.TextChanged += new System.Windows.Controls.TextChangedEventHandler(this.TxtSearch_TextChanged);
            
            #line default
            #line hidden
            return;
            case 4:
            
            #line 23 "..\..\..\Pages\Weeds.xaml"
            ((System.Windows.Controls.Button)(target)).Click += new System.Windows.RoutedEventHandler(this.AddExercise_Click);
            
            #line default
            #line hidden
            return;
            case 5:
            
            #line 25 "..\..\..\Pages\Weeds.xaml"
            ((System.Windows.Controls.Button)(target)).Click += new System.Windows.RoutedEventHandler(this.DeleteExercise_Click);
            
            #line default
            #line hidden
            return;
            case 6:
            
            #line 30 "..\..\..\Pages\Weeds.xaml"
            ((System.Windows.Controls.Button)(target)).Click += new System.Windows.RoutedEventHandler(this.Home_Click);
            
            #line default
            #line hidden
            return;
            case 7:
            
            #line 32 "..\..\..\Pages\Weeds.xaml"
            ((System.Windows.Controls.Button)(target)).Click += new System.Windows.RoutedEventHandler(this.OneYear_Click);
            
            #line default
            #line hidden
            return;
            case 8:
            
            #line 34 "..\..\..\Pages\Weeds.xaml"
            ((System.Windows.Controls.Button)(target)).Click += new System.Windows.RoutedEventHandler(this.TwoYear_Click);
            
            #line default
            #line hidden
            return;
            case 9:
            
            #line 36 "..\..\..\Pages\Weeds.xaml"
            ((System.Windows.Controls.Button)(target)).Click += new System.Windows.RoutedEventHandler(this.LongTern_Click);
            
            #line default
            #line hidden
            return;
            case 10:
            
            #line 38 "..\..\..\Pages\Weeds.xaml"
            ((System.Windows.Controls.Button)(target)).Click += new System.Windows.RoutedEventHandler(this.Weeds_Click);
            
            #line default
            #line hidden
            return;
            case 11:
            
            #line 40 "..\..\..\Pages\Weeds.xaml"
            ((System.Windows.Controls.Button)(target)).Click += new System.Windows.RoutedEventHandler(this.Logout_Click);
            
            #line default
            #line hidden
            return;
            case 12:
            this.lvHead = ((System.Windows.Controls.ListView)(target));
            return;
            }
            this._contentLoaded = true;
        }
    }
}

