import React, { useEffect } from "react";
import { useDispatch, useSelector } from "react-redux";
import { fetchAllVtubers } from "../../store/vtuber";

// Import Swiper React components
import { Swiper, SwiperSlide } from "swiper/react";

// Import Swiper styles
import "swiper/css";
import "swiper/css/navigation";

import "./TalentCarousel.css";

// import required modules
import { Navigation } from "swiper";

const TalentCarousel = () => {
  const dispatch = useDispatch();
  const rawVtubers = useSelector((state) => state.vtuber.vtubers) || {};

  // Transform the raw vtubers into an array, only keeping the fields we want.
  const vtubers = Object.values(rawVtubers).map((vtuber) => ({
    id: vtuber.id,
    name: vtuber.name,
    jpname: vtuber.jpname,
    main_image_url: vtuber.main_image_url,
  }));

  const chunk = (arr, size) =>
    Array.from({ length: Math.ceil(arr.length / size) }, (v, i) =>
      arr.slice(i * size, i * size + size)
    );

  const vtuberChunks = chunk(vtubers, 6);

  useEffect(() => {
    dispatch(fetchAllVtubers());
  }, [dispatch]);

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
          <Swiper
            navigation={true}
            modules={[Navigation]}
            className="vtuberSwiper"
          >
            {vtuberChunks.map((vtuberChunk, index) => (
              <SwiperSlide className="vtuberSlide" key={index}>
                {vtuberChunk.map((vtuber) => (
                  <div key={vtuber.id}>
                    <div id={`vtuberbg-${vtuber.id}`}>
                      <img
                        id={`vtuber-${vtuber.id}`}
                        src={vtuber.main_image_url}
                        alt={vtuber.name}
                      />
                      <div id="vtuberNameDivider">
                        <h2 id={`vtubername-${vtuber.id}`}>{vtuber.name}</h2>
                        <h3 id={`vtubername2-${vtuber.id}`}>{vtuber.jpname}</h3>
                      </div>
                    </div>
                  </div>
                ))}
              </SwiperSlide>
            ))}
          </Swiper>
        </div>
      </div>
    </div>
  );
};

export default TalentCarousel;
