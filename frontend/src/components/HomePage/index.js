import React, { useState, useEffect } from "react";
import Introbox from "./IntroBox";
import LoadImage from "./hololiveLoad.png";
import "./HomePage.css";

const HomePage = () => {
  const [isLoading, setIsLoading] = useState(true);

  useEffect(() => {
    const loadAllComponents = async () => {
      setTimeout(() => {
        setIsLoading(false);
      }, 2000);
    };

    loadAllComponents();
  }, []);

  if (isLoading) {
    return (
      <div>
        <img id="LoadScreen" src={LoadImage} />
      </div>
    );
  }

  return <Introbox />;
};

export default HomePage;
