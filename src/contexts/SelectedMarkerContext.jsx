import React, { createContext, useState } from 'react';

const SelectedMarkerContext = createContext();

export const SelectedMarkerProvider = ({ children }) => {
  const [selectedMarker, setSelectedMarker] = useState(null);

  return (
    <SelectedMarkerContext.Provider value={{ selectedMarker, setSelectedMarker }}>
      {children}
    </SelectedMarkerContext.Provider>
  );
};

export default SelectedMarkerContext;