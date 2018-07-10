%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QXmlInputSource ()
$internalConstructor=|new1|

$prototype=QXmlInputSource ( QIODevice * dev )
$internalConstructor=|new2|QIODevice *

//[1]QXmlInputSource ()
//[2]QXmlInputSource ( QIODevice * dev )

HB_FUNC_STATIC( QXMLINPUTSOURCE_NEW )
{
  if( ISNUMPAR(0) )
  {
    QXmlInputSource_new1();
  }
  else if( ISNUMPAR(1) && ISQIODEVICE(1) )
  {
    QXmlInputSource_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototype=virtual QString data () const
$virtualMethod=|QString|data|

$prototype=virtual void fetchData ()
$virtualMethod=|void|fetchData|

$prototype=virtual QChar next ()
$virtualMethod=|QChar|next|

$prototype=virtual void reset ()
$virtualMethod=|void|reset|

$prototype=virtual void setData ( const QString & dat )
$internalVirtualMethod=|void|setData,setData1|const QString &

$prototype=virtual void setData ( const QByteArray & dat )
$internalVirtualMethod=|void|setData,setData2|const QByteArray &

//[1]virtual void setData ( const QString & dat )
//[2]virtual void setData ( const QByteArray & dat )

HB_FUNC_STATIC( QXMLINPUTSOURCE_SETDATA )
{
  if( ISNUMPAR(1) && ISCHAR(1) )
  {
    QXmlInputSource_setData1();
  }
  else if( ISNUMPAR(1) && ISQBYTEARRAY(1) )
  {
    QXmlInputSource_setData2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$extraMethods

#pragma ENDDUMP
