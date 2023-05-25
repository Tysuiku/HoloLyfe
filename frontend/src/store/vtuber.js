import axios from "axios";

// Action Types
export const FETCH_ALL_VTUBERS = "FETCH_ALL_VTUBERS";
export const FETCH_SINGLE_VTUBER = "FETCH_SINGLE_VTUBER";

// Thunk Action Creators
export const fetchAllVtubers = () => async (dispatch) => {
  const response = await axios.get("/api/vtubers");
  dispatch({ type: FETCH_ALL_VTUBERS, payload: response.data });
};

export const fetchSingleVtuber = (id) => async (dispatch) => {
  const response = await axios.get(`/api/vtubers/${id}`);
  dispatch({ type: FETCH_SINGLE_VTUBER, payload: response.data });
};

// Initial State
const initialState = {
  vtubers: [],
  vtuber: {},
};

// Reducer
const vtuberReducer = (state = initialState, action) => {
  switch (action.type) {
    case FETCH_ALL_VTUBERS:
      return {
        ...state,
        vtubers: action.payload,
      };
    case FETCH_SINGLE_VTUBER:
      return {
        ...state,
        vtuber: action.payload,
      };
    default:
      return state;
  }
};

export default vtuberReducer;
