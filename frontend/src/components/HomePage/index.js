import React, { useState, useEffect } from "react";
import Introbox from "./IntroBox";
import TalentCarousel from "./TalentCarousel";
import LoadImage from "./hololiveLoad.png";
import "./HomePage.css";

const HomePage = () => {
  const [isLoading, setIsLoading] = useState(true);

  useEffect(() => {
    const loadAllComponents = async () => {
      setTimeout(() => {
        setIsLoading(false);
      }, 1250);
    };

    loadAllComponents();
  }, []);

  if (isLoading) {
    return (
      <div id="LoadScreenWrapper">
      <img id="LoadScreen" src={LoadImage} alt="Loading..." />
      {/* <p id="LoadScreenText">Please Excuse Render Free Tier!!! </p> */}
    </div>
    );
  }

  return (
    <div className="HomePageBox">
      <Introbox />
      <TalentCarousel />
    </div>
  );
};

export default HomePage;
