/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt5xhb_clsid.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QURL
REQUEST QVARIANT
#endif

CLASS QTextBrowser INHERIT QTextEdit

   DATA class_id INIT Class_Id_QTextBrowser
   DATA class_flags INIT 1
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD backwardHistoryCount
   METHOD clearHistory
   METHOD forwardHistoryCount
   METHOD historyTitle
   METHOD historyUrl
   METHOD isBackwardAvailable
   METHOD isForwardAvailable
   METHOD openExternalLinks
   METHOD openLinks
   METHOD searchPaths
   METHOD setOpenExternalLinks
   METHOD setOpenLinks
   METHOD setSearchPaths
   METHOD source
   METHOD loadResource
   METHOD backward
   METHOD forward
   METHOD home
   METHOD reload
   METHOD setSource
   METHOD onAnchorClicked
   METHOD onBackwardAvailable
   METHOD onForwardAvailable
   METHOD onHighlighted1
   METHOD onHighlighted2
   METHOD onHistoryChanged
   METHOD onSourceChanged
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QTextBrowser
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QTextBrowser>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_clsid.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QTextBrowser>
#endif

/*
QTextBrowser ( QWidget * parent = 0 )
*/
HB_FUNC_STATIC( QTEXTBROWSER_NEW )
{
  QWidget * par1 = ISNIL(1)? 0 : (QWidget *) _qt5xhb_itemGetPtr(1);
  QTextBrowser * o = new QTextBrowser ( par1 );
  _qt5xhb_storePointerAndFlag( o, false );
}


HB_FUNC_STATIC( QTEXTBROWSER_DELETE )
{
  QTextBrowser * obj = (QTextBrowser *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    delete obj;
    obj = NULL;
    PHB_ITEM self = hb_stackSelfItem();
    PHB_ITEM ptr = hb_itemPutPtr( NULL, NULL );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
int backwardHistoryCount () const
*/
HB_FUNC_STATIC( QTEXTBROWSER_BACKWARDHISTORYCOUNT )
{
  QTextBrowser * obj = (QTextBrowser *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->backwardHistoryCount (  ) );
  }
}


/*
void clearHistory ()
*/
HB_FUNC_STATIC( QTEXTBROWSER_CLEARHISTORY )
{
  QTextBrowser * obj = (QTextBrowser *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->clearHistory (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
int forwardHistoryCount () const
*/
HB_FUNC_STATIC( QTEXTBROWSER_FORWARDHISTORYCOUNT )
{
  QTextBrowser * obj = (QTextBrowser *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->forwardHistoryCount (  ) );
  }
}


/*
QString historyTitle ( int i ) const
*/
HB_FUNC_STATIC( QTEXTBROWSER_HISTORYTITLE )
{
  QTextBrowser * obj = (QTextBrowser *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    if( ISNUM(1) )
    {
      hb_retc( (const char *) obj->historyTitle ( (int) hb_parni(1) ).toLatin1().data() );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}


/*
QUrl historyUrl ( int i ) const
*/
HB_FUNC_STATIC( QTEXTBROWSER_HISTORYURL )
{
  QTextBrowser * obj = (QTextBrowser *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    if( ISNUM(1) )
    {
      QUrl * ptr = new QUrl( obj->historyUrl ( (int) hb_parni(1) ) );
      _qt5xhb_createReturnClass ( ptr, "QURL", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}


/*
bool isBackwardAvailable () const
*/
HB_FUNC_STATIC( QTEXTBROWSER_ISBACKWARDAVAILABLE )
{
  QTextBrowser * obj = (QTextBrowser *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isBackwardAvailable (  ) );
  }
}


/*
bool isForwardAvailable () const
*/
HB_FUNC_STATIC( QTEXTBROWSER_ISFORWARDAVAILABLE )
{
  QTextBrowser * obj = (QTextBrowser *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isForwardAvailable (  ) );
  }
}


/*
bool openExternalLinks () const
*/
HB_FUNC_STATIC( QTEXTBROWSER_OPENEXTERNALLINKS )
{
  QTextBrowser * obj = (QTextBrowser *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->openExternalLinks (  ) );
  }
}


/*
bool openLinks () const
*/
HB_FUNC_STATIC( QTEXTBROWSER_OPENLINKS )
{
  QTextBrowser * obj = (QTextBrowser *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->openLinks (  ) );
  }
}


/*
QStringList searchPaths () const
*/
HB_FUNC_STATIC( QTEXTBROWSER_SEARCHPATHS )
{
  QTextBrowser * obj = (QTextBrowser *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QStringList strl = obj->searchPaths (  );
    _qt5xhb_convert_qstringlist_to_array ( strl );
  }
}


/*
void setOpenExternalLinks ( bool open )
*/
HB_FUNC_STATIC( QTEXTBROWSER_SETOPENEXTERNALLINKS )
{
  QTextBrowser * obj = (QTextBrowser *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISLOG(1) )
    {
      obj->setOpenExternalLinks ( (bool) hb_parl(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setOpenLinks ( bool open )
*/
HB_FUNC_STATIC( QTEXTBROWSER_SETOPENLINKS )
{
  QTextBrowser * obj = (QTextBrowser *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISLOG(1) )
    {
      obj->setOpenLinks ( (bool) hb_parl(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setSearchPaths ( const QStringList & paths )
*/
HB_FUNC_STATIC( QTEXTBROWSER_SETSEARCHPATHS )
{
  QTextBrowser * obj = (QTextBrowser *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
QStringList par1;
PHB_ITEM aStrings1 = hb_param(1, HB_IT_ARRAY);
int i1;
int nLen1 = hb_arrayLen(aStrings1);
for (i1=0;i1<nLen1;i1++)
{
QString temp = QLatin1String( hb_arrayGetCPtr(aStrings1, i1+1) );
par1 << temp;
}
    obj->setSearchPaths ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QUrl source () const
*/
HB_FUNC_STATIC( QTEXTBROWSER_SOURCE )
{
  QTextBrowser * obj = (QTextBrowser *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QUrl * ptr = new QUrl( obj->source (  ) );
    _qt5xhb_createReturnClass ( ptr, "QURL", true );
  }
}


/*
virtual QVariant loadResource ( int type, const QUrl & name )
*/
HB_FUNC_STATIC( QTEXTBROWSER_LOADRESOURCE )
{
  QTextBrowser * obj = (QTextBrowser *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QUrl * par2 = (QUrl *) _qt5xhb_itemGetPtr(2);
    QVariant * ptr = new QVariant( obj->loadResource ( (int) hb_parni(1), *par2 ) );
    _qt5xhb_createReturnClass ( ptr, "QVARIANT", true );
  }
}


/*
virtual void backward ()
*/
HB_FUNC_STATIC( QTEXTBROWSER_BACKWARD )
{
  QTextBrowser * obj = (QTextBrowser *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->backward (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual void forward ()
*/
HB_FUNC_STATIC( QTEXTBROWSER_FORWARD )
{
  QTextBrowser * obj = (QTextBrowser *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->forward (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual void home ()
*/
HB_FUNC_STATIC( QTEXTBROWSER_HOME )
{
  QTextBrowser * obj = (QTextBrowser *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->home (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual void reload ()
*/
HB_FUNC_STATIC( QTEXTBROWSER_RELOAD )
{
  QTextBrowser * obj = (QTextBrowser *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->reload (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual void setSource ( const QUrl & name )
*/
HB_FUNC_STATIC( QTEXTBROWSER_SETSOURCE )
{
  QTextBrowser * obj = (QTextBrowser *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QUrl * par1 = (QUrl *) _qt5xhb_itemGetPtr(1);
    obj->setSource ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}




#pragma ENDDUMP
