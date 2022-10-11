"use strict";(self.webpackChunk_N_E=self.webpackChunk_N_E||[]).push([[4525],{55472:function(e,t,n){n.d(t,{l:function(){return T}});var i=n(10253),l=n(85893),r=n(60357),s=n.n(r),a=n(67294),o=n(45697),c=n.n(o),d=n(23279),m=n.n(d),u=n(94184),h=n.n(u),x=n(53416),f=n(85273),p=n(82064),b=n(5733),g=n(61425),N=n(54014),w=function(e){var t=e.onPrev,n=e.onNext,i=e.scrollPosition,r=i.head,s=i.tail;return(0,l.jsx)("div",{className:"hidden md:flex items-center justify-end mt-4",children:(0,l.jsxs)("div",{className:"flex text-black-300",children:[(0,l.jsx)("button",{className:h()({"cursor-default opacity-50":0===r},"mr-2"),onClick:t,disabled:0===r,"aria-label":"previous slide",type:"button",children:(0,l.jsx)(g.W,{className:"text-3xl"})}),(0,l.jsx)("button",{className:h()({"cursor-default opacity-50":0===s}),onClick:n,disabled:0===s,"aria-label":"next slide",type:"button",children:(0,l.jsx)(N.T,{className:"text-3xl"})})]})})};w.propTypes={onPrev:c().func.isRequired,onNext:c().func.isRequired,scrollPosition:c().shape({head:c().number,tail:c().number})},w.defaultProps={scrollPosition:{head:0,tail:null}};var y={1:"md:w-full",2:"md:w-1/2",3:"md:w-1/3",4:"md:w-1/4"},v={sm:"w-2/3",lg:"w-90"},T=function(e){var t=e.activeItem,n=e.children,r=e.className,o=e.cardClassNames,c=e.mobileItemSize,d=e.contained,u=e.pageSize,g=e.scrollPadding,N=e.tagularPosition,T=(0,i.Z)((0,p.x)((function(e){return e})),2),k=T[0],L=T[1],j=(0,b.X)(),E=k||{},S=E.offsetWidth,I=E.scrollLeft,O=E.scrollWidth,R=(0,a.useRef)((0,x.x0)()).current,C=(0,a.useState)({pageWidth:0,head:0,tail:null}),P=C[0],A=C[1],W=n.length>parseInt(u,10),z=function(e){var t=e||{},n=t.offsetWidth,i=t.scrollLeft;return{pageWidth:n,head:i,tail:t.scrollWidth-n-i}},U=function(e){k.scroll({top:0,left:e,behavior:"smooth"})},K=(0,a.useCallback)((function(){var e=z(k),t=e.head,n=e.tail,i=e.pageWidth;U(n>=i?t+i:t+n),(0,f.yv)("click",{actionOutcome:"SLIDE",outboundUrl:"NULL",webElement:{location:"SECTION",elementType:"BUTTON",position:N,text:"NEXT ARROW"}})}),[k,N]),_=(0,a.useCallback)((function(){var e=z(k),t=e.head,n=e.pageWidth;U(t>=n?t-n:0)}),[k]),q=m()((function(){var e=P.head,t=z(k),n=t.head>e;A(t),n&&j&&(0,f.yv)("swipe",{actionOutcome:"SLIDE",outboundUrl:"NULL",webElement:{location:"CARDS",elementType:"ARROW",position:N,text:""}})}),20,{leading:!0,trailing:!0});return(0,a.useEffect)((function(){A(z(k||{}))}),[S,I,O,k]),(0,a.useEffect)((function(){if(t){var e=k.children[t].offsetLeft;U(e)}}),[t]),(0,l.jsxs)("div",{className:s().dynamic([["e30bd67c09354077",[g?"32px":0]]])+" "+(h()({"max-w-full overflow-x-hidden px-4 md:container lg:mr-0 lg:pr-0":!d},{container:d},r)||""),children:[(0,l.jsx)("ul",{id:"carousel-".concat(R),ref:L,onScroll:q,className:s().dynamic([["e30bd67c09354077",[g?"32px":0]]])+" carousel flex overflow-x-scroll md:overflow-x-auto overflow-y-hidden -mx-4",children:n.map((function(e){var t=e.key;return(0,l.jsx)("li",{className:s().dynamic([["e30bd67c09354077",[g?"32px":0]]])+" "+(h()("carousel-item flex-shrink-0 px-4 pb-2",v[c],y[u],o)||""),children:e},t)}))}),W&&(0,l.jsx)(w,{onPrev:_,onNext:K,scrollPosition:P}),(0,l.jsx)(s(),{id:"e30bd67c09354077",dynamic:[g?"32px":0],children:".carousel.__jsx-style-dynamic-selector{-webkit-scroll-snap-type:x mandatory;-ms-scroll-snap-type:x mandatory;scroll-snap-type:x mandatory;scroll-behavior:smooth;-webkit-overflow-scrolling:touch;-ms-overflow-style:none;scrollbar-width:none;scroll-padding-right:".concat(g?"32px":0,"}.carousel.__jsx-style-dynamic-selector::-webkit-scrollbar{display:none}.carousel-item.__jsx-style-dynamic-selector{scroll-snap-align:start}")})]})},k={activeItem:c().number,children:c().oneOfType([c().arrayOf(c().node),c().node]).isRequired,className:c().string,contained:c().bool,mobileItemSize:c().oneOf(["sm","lg"]),pageSize:c().number,cardClassNames:c().string,scrollPadding:c().bool,tagularPosition:c().string};T.propTypes=k,T.defaultProps={activeItem:0,className:"",contained:!0,mobileItemSize:"lg",pageSize:3,scrollPadding:!0,cardClassNames:"",tagularPosition:"CAROUSEL"}},45674:function(e,t,n){n.d(t,{j:function(){return o}});var i=n(85893),l=n(45697),r=n.n(l),s=n(94184),a=n.n(s),o=function(e){var t=e.children,n=e.light,l=e.className;return(0,i.jsx)("p",{className:a()("text-sm uppercase font-semibold tracking-wide",l,{"text-black-200":n,"text-black-400":!n}),children:t})};o.propTypes={children:r().node.isRequired,className:r().string,light:r().bool},o.defaultProps={className:"",light:!1}},6450:function(e,t,n){n.d(t,{O:function(){return o}});var i=n(85893),l=n(45697),r=n.n(l),s=n(94184),a=n.n(s),o=function(e){var t=e.children,n=e.className,l=e.elem,r=e.minor,s=e.fontNormal;return(0,i.jsx)(l,{className:a()(r?"text-lg md:text-2xl":"text-2xl md:text-4xl","font-display leading-tight",{"font-semibold":!s},{"font-normal":s},n),"data-testid":"page-heading",children:t})};o.propTypes={children:r().oneOfType([r().string,r().arrayOf(r().string),r().element,r().arrayOf(r().element)]).isRequired,className:r().string,elem:r().oneOf(["h1","h2","h3"]),minor:r().bool,fontNormal:r().bool},o.defaultProps={className:"",elem:"h2",minor:!1,fontNormal:!1}},77142:function(e,t,n){n.d(t,{b:function(){return m}});var i=n(26042),l=n(69396),r=n(99534),s=n(85893),a=n(45697),o=n.n(a),c=n(94184),d=n.n(c),m=function(e){var t=e.children,n=e.className,a=e.flush,o=e.inset,c=(0,r.Z)(e,["children","className","flush","inset"]);return t?(0,s.jsx)("section",(0,l.Z)((0,i.Z)({className:d()("relative",{"my-12 md:my-20":!a&&!o},{"py-12 md:py-20":o},n)},c),{children:t})):null};m.propTypes={children:o().oneOfType([o().node,o().arrayOf(o().node)]).isRequired,className:o().string,flush:o().bool,inset:o().bool},m.defaultProps={className:"",flush:!1,inset:!1}},72637:function(e,t,n){n.d(t,{f:function(){return N}});var i=n(59637),l=n(85893),r=n(67294),s=n(45697),a=n.n(s),o=n(94184),c=n.n(o),d=n(36711),m=n(3687),u=n(55472),h=n(11491),x=n(45674),f=n(6450),p=n(85273),b=n(94075),g=function(e){var t=e.eyebrowLink,n=e.eyebrowText,i=e.isLight;return t?(0,l.jsx)("a",{href:n?t:"https://www.lonelyplanet.com/articles/category/explore",className:c()("block mb-1 font-semibold text-sm hover:underline",i?"text-black-400":"text-white"),children:n||"Story"}):(0,l.jsx)("span",{className:c()("block mb-1 font-semibold text-sm",i?"text-black-400":"text-white"),children:n||"Story"})},N=function(e){var t,n=e.className,s=e.eyebrow,a=e.title,o=e.stories,N=e.theme,w=e.showNewsLink,y=(0,i.Z)(o),v=y[0],T=y.slice(1),k=(0,r.useContext)(b.q),L=k.slug,j=k.title,E=L?"/".concat(L,"/articles"):"/articles",S="/news",I="light"===N;return t=a||(!a&&j?(0,l.jsxs)(l.Fragment,{children:["Latest Stories ",(0,l.jsxs)("span",{className:"block",children:["from ",j]})]}):(0,l.jsxs)(l.Fragment,{children:["Latest updates ",(0,l.jsx)("span",{className:"block",children:"from around the world"})]})),(0,l.jsxs)("div",{className:n,children:[(0,l.jsx)("header",{className:"container",children:(0,l.jsxs)("div",{className:"flex justify-between items-end",children:[(0,l.jsxs)("div",{children:[s&&(0,l.jsx)(x.j,{className:c()({"text-black-300":I},"mb-4"),children:s}),(0,l.jsx)(f.O,{className:c()(I?"text-black":"text-white","md:max-w-lg"),children:t})]}),(0,l.jsxs)("div",{children:[w&&(0,l.jsx)(d.z,{href:S,className:"hidden lg:inline mb-4 mr-4",inverted:!I,onClick:function(){return(0,p.yv)("click",{actionOutcome:"INTERNALLINK",outboundUrl:S,webElement:{location:"SECTION",elementType:"LINK",position:"LATESTSTORIES",text:"VIEWALLNEWS"}})},children:"View all news"}),(0,l.jsx)(d.z,{href:E,className:"hidden lg:inline mb-4",inverted:!I,onClick:function(){return(0,p.yv)("click",{actionOutcome:"INTERNALLINK",outboundUrl:E,webElement:{location:"SECTION",elementType:"LINK",position:"LATESTSTORIES",text:"VIEWALLSTORIES"}})},children:"View all stories"})]})]})}),(0,l.jsxs)("div",{className:"mt-8 lg:mt-16 lg:flex lg:container",children:[(0,l.jsx)("article",{className:"md:container lg:w-7/12 lg:px-0",children:(0,l.jsx)(m.A,{src:v.image.url||"",imgixParams:{auto:"format",fit:"crop"},overlay:"gradient",width:900,className:"md:rounded overflow-hidden h-full max-h-144",children:(0,l.jsxs)("div",{className:c()("h-112 lg:h-full lg:w-4/5 flex flex-col justify-end pl-5 pr-5 pb-10 md:p-10",{"text-white":"dark"===N,"text-black":"light"===N}),children:[(0,l.jsx)(g,{eyebrowLink:v.category.url,eyebrowText:v.category.name}),(0,l.jsx)("a",{href:v.url,className:"mt-1 mb-2 text-white hover:underline leading-none",onClick:function(){return(0,p.yv)("click",{actionOutcome:"INTERNALLINK",outboundUrl:v.url,webElement:{location:"SECTION",elementType:"IMAGE",position:"LATESTSTORIES",text:v.title.toUpperCase()}})},children:(0,l.jsx)(f.O,{className:"line-clamp-3 leading-none mb-2",minor:!0,children:v.title})}),(0,l.jsx)(g,{eyebrowLink:v.eyebrowLink,eyebrowText:v.eyebrowText}),(0,l.jsx)("p",{className:"mt-8 lg:mt-10 text-black-100",children:v.excerpt})]})})}),(0,l.jsx)("aside",{className:"lg:w-5/12 lg:ml-0 mt-6 lg:mt-0 lg:pl-4",children:(0,l.jsx)(u.l,{contained:!1,pageSize:2,scrollPadding:!1,mobileItemSize:"sm",tagularPosition:"LATESTSTORIES",children:T.map((function(e){var t=e.eyebrowText,n=e.eyebrowLink,i=e.image,r=e.title,s=e.excerpt,a=e.url,o=e.category;return(0,l.jsxs)("article",{className:"lg:text-white",children:[(null===i||void 0===i?void 0:i.url)&&(0,l.jsx)(h.R,{src:i.url,alt:null===i||void 0===i?void 0:i.alt,className:"rounded-window w-full overflow-y-hidden",width:280,height:360,imgixParams:{auto:"format",fit:"crop",w:280}}),(0,l.jsxs)("div",{className:"grid gap-4 mt-4",children:[(0,l.jsxs)("header",{children:[(0,l.jsx)(g,{eyebrowLink:o.url,eyebrowText:o.name,isLight:I}),(0,l.jsx)("a",{href:a,className:I?"text-black":"text-white",onClick:function(){return(0,p.yv)("click",{actionOutcome:"INTERNALLINK",outboundUrl:a,webElement:{location:"SECTION",elementType:"IMAGE",position:"LATESTSTORIES",text:r.toUpperCase()}})},children:(0,l.jsx)("h3",{className:"text-lg lg:text-xl font-semibold line-clamp-3 leading-tight hover:underline mb-2",children:r})}),(0,l.jsx)(g,{eyebrowLink:n,eyebrowText:t,isLight:I})]}),(0,l.jsx)("p",{className:c()("text-sm",I?"text-black-400":"text-black-200"),children:s})]})]},r)}))})})]}),(0,l.jsxs)("div",{className:"lg:hidden text-center mt-4",children:[w&&(0,l.jsx)(d.z,{className:"inline-block bg-white text-black mr-4",href:S,onClick:function(){return(0,p.yv)("click",{actionOutcome:"INTERNALLINK",outboundUrl:S,webElement:{location:"SECTION",elementType:"LINK",position:"LATESTSTORIES",text:"VIEW ALL NEWS"}})},children:"View all news"}),(0,l.jsx)(d.z,{className:"inline-block bg-white text-black",href:E,onClick:function(){return(0,p.yv)("click",{actionOutcome:"INTERNALLINK",outboundUrl:E,webElement:{location:"SECTION",elementType:"LINK",position:"LATESTSTORIES",text:"VIEW ALL STORIES"}})},children:"View all stories"})]})]})};N.propTypes={className:a().string,eyebrow:a().string,title:a().string,showNewsLink:a().bool,stories:a().arrayOf(a().shape({image:a().shape({alt:a().string,src:a().string}),title:a().string,eyebrowText:a().string,eyebrowLink:a().string,url:a().string,excerpt:a().string})).isRequired,theme:a().oneOf(["dark","light"])},N.defaultProps={className:"",eyebrow:"",showNewsLink:!1,title:null,theme:"dark"},g.propTypes={eyebrowLink:a().string,eyebrowText:a().string,isLight:a().bool},g.defaultProps={eyebrowLink:"",eyebrowText:"",isLight:!1}},94075:function(e,t,n){n.d(t,{q:function(){return i}});var i=(0,n(67294).createContext)({})},5733:function(e,t,n){n.d(t,{X:function(){return l},O:function(){return r.O}});var i=n(67294),l=function(){var e=(0,i.useState)(),t=e[0],n=e[1];return(0,i.useEffect)((function(){var e="undefined"===typeof window.navigator?"":navigator.userAgent,t=Boolean(e.match(/Android|BlackBerry|iPhone|iPad|iPod|Opera Mini|IEMobile|WPDesktop/i));n(t)}),[]),t},r=n(24133)},24133:function(e,t,n){n.d(t,{O:function(){return s}});var i=n(10253),l=n(67294),r=n(75874),s=function(){var e=(0,l.useState)({width:void 0,screen:void 0}),t=e[0],n=e[1];return(0,l.useEffect)((function(){var e=function(){var e=window.innerWidth,t=Object.entries(r.screens).reduce((function(e,t){var n=(0,i.Z)(t,2),l=n[0],r=n[1],s="(min-width: ".concat(r,")");return window.matchMedia(s).matches?l:e}),"sm");n({width:e,screen:t})};return window.addEventListener("resize",e),e(),function(){return window.removeEventListener("resize",e)}}),[]),t}}}]);