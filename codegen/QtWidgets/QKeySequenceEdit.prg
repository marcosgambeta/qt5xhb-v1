%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QKEYSEQUENCE
#endif

CLASS QKeySequenceEdit INHERIT QWidget

   METHOD new
   METHOD delete
   METHOD keySequence
   METHOD setKeySequence
   METHOD clear

   METHOD onEditingFinished
   METHOD onKeySequenceChanged

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes=5,2,0

$prototype=QKeySequenceEdit(QWidget *parent = 0)
$internalConstructor=5,2,0|new1|QWidget *=0

$prototype=QKeySequenceEdit(const QKeySequence &keySequence, QWidget *parent = 0)
$internalConstructor=5,2,0|new2|const QKeySequence &,QWidget *=0

//[1]QKeySequenceEdit(QWidget *parent = 0)
//[2]QKeySequenceEdit(const QKeySequence &keySequence, QWidget *parent = 0)

HB_FUNC_STATIC( QKEYSEQUENCEEDIT_NEW )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  if( ISBETWEEN(0,1) && ISOPTQWIDGET(1) )
  {
    QKeySequenceEdit_new1();
  }
  else if( ISBETWEEN(1,2) && ISQKEYSEQUENCE(1) && ISOPTQWIDGET(2) )
  {
    QKeySequenceEdit_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
#endif
}

$deleteMethod=5,2,0

$prototype=QKeySequence keySequence() const
$method=5,2,0|QKeySequence|keySequence|

$prototype=void setKeySequence(const QKeySequence &keySequence)
$method=5,2,0|void|setKeySequence|const QKeySequence &

$prototype=void clear()
$method=5,2,0|void|clear|

#pragma ENDDUMP
