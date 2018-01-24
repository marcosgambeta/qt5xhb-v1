%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

$beginSlotsClass
  void error ( QImageReader::ImageReaderError error );
  void finished ();
  void frameChanged ( int frameNumber );
  void resized ( const QSize & size );
  void started ();
  void stateChanged ( QMovie::MovieState state );
  void updated ( const QRect & rect );
};
