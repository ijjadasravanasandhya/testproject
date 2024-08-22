import React from "react";
import ReactDOM from "react-dom"

var rose = React.createElement("h1",{},"i love roses");
var htmlroot = document.getElementById("root");
var root = ReactDOM.createRoot(htmlroot);

root.render(rose);
const Sai= () => {
    return (<h1>hlo</h1>);
};
root.render(<Sai />
)

const Header =() =>{
    return(<h2> this is Header</h2>);
};
const Body =() =>{
    return(<h2> this is body</h2>);
};
const Footer=() =>{
    return(<h2> this is footer</h2>);
};
//root.render(<Header></Header><Body></Body><Footer></Footer>)

const Sailu=()=>{
    return(
        <>
        <Header />
        <Body />
        <Footer />
        </>
    );
};
root.render(<Sailu></Sailu>);

