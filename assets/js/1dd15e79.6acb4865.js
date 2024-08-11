"use strict";(self.webpackChunkdocs=self.webpackChunkdocs||[]).push([[311],{3905:(e,t,n)=>{n.d(t,{Zo:()=>c,kt:()=>m});var r=n(67294);function o(e,t,n){return t in e?Object.defineProperty(e,t,{value:n,enumerable:!0,configurable:!0,writable:!0}):e[t]=n,e}function i(e,t){var n=Object.keys(e);if(Object.getOwnPropertySymbols){var r=Object.getOwnPropertySymbols(e);t&&(r=r.filter((function(t){return Object.getOwnPropertyDescriptor(e,t).enumerable}))),n.push.apply(n,r)}return n}function a(e){for(var t=1;t<arguments.length;t++){var n=null!=arguments[t]?arguments[t]:{};t%2?i(Object(n),!0).forEach((function(t){o(e,t,n[t])})):Object.getOwnPropertyDescriptors?Object.defineProperties(e,Object.getOwnPropertyDescriptors(n)):i(Object(n)).forEach((function(t){Object.defineProperty(e,t,Object.getOwnPropertyDescriptor(n,t))}))}return e}function l(e,t){if(null==e)return{};var n,r,o=function(e,t){if(null==e)return{};var n,r,o={},i=Object.keys(e);for(r=0;r<i.length;r++)n=i[r],t.indexOf(n)>=0||(o[n]=e[n]);return o}(e,t);if(Object.getOwnPropertySymbols){var i=Object.getOwnPropertySymbols(e);for(r=0;r<i.length;r++)n=i[r],t.indexOf(n)>=0||Object.prototype.propertyIsEnumerable.call(e,n)&&(o[n]=e[n])}return o}var s=r.createContext({}),u=function(e){var t=r.useContext(s),n=t;return e&&(n="function"==typeof e?e(t):a(a({},t),e)),n},c=function(e){var t=u(e.components);return r.createElement(s.Provider,{value:t},e.children)},p="mdxType",d={inlineCode:"code",wrapper:function(e){var t=e.children;return r.createElement(r.Fragment,{},t)}},f=r.forwardRef((function(e,t){var n=e.components,o=e.mdxType,i=e.originalType,s=e.parentName,c=l(e,["components","mdxType","originalType","parentName"]),p=u(n),f=o,m=p["".concat(s,".").concat(f)]||p[f]||d[f]||i;return n?r.createElement(m,a(a({ref:t},c),{},{components:n})):r.createElement(m,a({ref:t},c))}));function m(e,t){var n=arguments,o=t&&t.mdxType;if("string"==typeof e||o){var i=n.length,a=new Array(i);a[0]=f;var l={};for(var s in t)hasOwnProperty.call(t,s)&&(l[s]=t[s]);l.originalType=e,l[p]="string"==typeof e?e:o,a[1]=l;for(var u=2;u<i;u++)a[u]=n[u];return r.createElement.apply(null,a)}return r.createElement.apply(null,n)}f.displayName="MDXCreateElement"},96522:(e,t,n)=>{n.r(t),n.d(t,{assets:()=>s,contentTitle:()=>a,default:()=>d,frontMatter:()=>i,metadata:()=>l,toc:()=>u});var r=n(87462),o=(n(67294),n(3905));const i={sidebar_position:2},a="How to Contribute",l={unversionedId:"How-to-Contribute",id:"How-to-Contribute",title:"How to Contribute",description:"This file contains all relevant information regarding contributing to this project. Info regarding issues and how to post them is located inside of `ISSUES.md`",source:"@site/docs/How-to-Contribute.md",sourceDirName:".",slug:"/How-to-Contribute",permalink:"/vetersutil/docs/How-to-Contribute",draft:!1,editUrl:"https://github.com/veternitzz/vetersutil/edit/master/docs/How-to-Contribute.md",tags:[],version:"current",sidebarPosition:2,frontMatter:{sidebar_position:2},sidebar:"defaultSidebar",previous:{title:"Intro",permalink:"/vetersutil/docs/intro"},next:{title:"How to Issues",permalink:"/vetersutil/docs/How-to-Issues"}},s={},u=[{value:"Contributing - The tools we use",id:"contributing---the-tools-we-use",level:2},{value:"Contributing - Filesystem",id:"contributing---filesystem",level:2}],c={toc:u},p="wrapper";function d(e){let{components:t,...n}=e;return(0,o.kt)(p,(0,r.Z)({},c,n,{components:t,mdxType:"MDXLayout"}),(0,o.kt)("h1",{id:"how-to-contribute"},"How to Contribute"),(0,o.kt)("p",null,"This file contains all relevant information regarding contributing to this project. Info regarding issues and how to post them is located inside of ",(0,o.kt)("inlineCode",{parentName:"p"},"ISSUES.md")),(0,o.kt)("h2",{id:"contributing---the-tools-we-use"},"Contributing - The tools we use"),(0,o.kt)("p",null,"Before contributing to vetersutil, consider famaliarizing yourself with these tools:"),(0,o.kt)("ul",null,(0,o.kt)("li",{parentName:"ul"},"moonwave"),(0,o.kt)("li",{parentName:"ul"},"rojo"),(0,o.kt)("li",{parentName:"ul"},"aftman"),(0,o.kt)("li",{parentName:"ul"},"wally")),(0,o.kt)("h2",{id:"contributing---filesystem"},"Contributing - Filesystem"),(0,o.kt)("p",null,"The filesystem is relatively simple to follow. All utilities are located in ",(0,o.kt)("inlineCode",{parentName:"p"},"/root/packages/")," and in their own designated folder. Inside of those folders will be an ",(0,o.kt)("inlineCode",{parentName:"p"},"init.luau")," file and a wally.toml file. It may include a ",(0,o.kt)("inlineCode",{parentName:"p"},"INFO.md")," file which might explain package-specific things."))}d.isMDXComponent=!0}}]);