import React, { useRef, useState } from "react";

// Import Swiper React components
import { Swiper, SwiperSlide } from "swiper/react";

// Import Swiper styles
import "swiper/css";
import "swiper/css/navigation";

import "./TalentCarousel.css";

// import required modules
import { Navigation } from "swiper";

const TalentCarousel = () => {
  return (
    <div>
      <div id="TalentImgBg">
        <img
          id="TalentImgBg2"
          src="https://hololive.hololivepro.com/wp-content/themes/hololive/images/bg_pink.jpg"
        />

        <div id="TalentSplitterTitle">
          <div id="TalentTitleImg">
            <img src="https://hololive.hololivepro.com/wp-content/themes/hololive/images/tit_bg_pink.png" />
          </div>
          <div id="TalentTitleBg">
            <h1>TALENT</h1>
          </div>
        </div>

        <div>
          <Swiper navigation={true} modules={[Navigation]} className="mySwiper">
            <SwiperSlide>Slide 1</SwiperSlide>
            <SwiperSlide>Slide 2</SwiperSlide>
            <SwiperSlide>Slide 3</SwiperSlide>
          </Swiper>
        </div>
      </div>
    </div>
  );
};

export default TalentCarousel;
