var ps
I=_=>{
  var s=new URLSearchParams(location.search)
  b.className=0==s.get("w")?"w":0==s.get("b")?"b":""
  fetch("/table.tsv").then(d=>d.text()).then(d=>{
    ps=d.replace(/[<>&'"]/g,x=>({'<':'&lt;','>':'&gt;','&':'&amp;',"'":'&apos;','"':'&quot;'}[x])).split(/\r?\n/g).splice(1).map(r=>r.split("\t"))
    .filter(x=>["Tacit", "Dop"].includes(x[2]) && ["Monadic Function", "Dyadic Function"].includes(x[3]))
    Q()})}
Q=_=>{
  c=(x=>x[Math.floor(Math.random()*x.length)])(ps)
  a=c[0].match(/^[a-z]*/i)[0]
  w=c[0].match(/[a-z]*$/i)[0]
  E=x=>((x?"<code>"+x+"</code> is ":"")+["any","a numeric","an integer","a Boolean","a character"]["XMIACYNJBD".indexOf(x[0])%5]+(x[1]?[" scalar"," vector"," matrix"]["svm".indexOf(x[1])]:" array"))
  q.innerHTML=`Write a ${c[3].match(/\w+/)[0].toLowerCase()} ${c[5].toLowerCase()} function, <code>${a?a+" ":""}YourFunction ${w}</code>, that solves the following task:<p>${c[1]}, where ${a?E(a)+" and ":""}${E(w)}.`
}
W=x=>b.className=x?x:"wb"[1+"wb".indexOf(b.className[0])]