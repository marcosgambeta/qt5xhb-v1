$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QTEXTOPTION
REQUEST QSIZEF
#endif

CLASS QStaticText

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
   METHOD new3
   METHOD new
   METHOD delete
   METHOD swap
   METHOD setText
   METHOD text
   METHOD setTextFormat
   METHOD textFormat
   METHOD setTextWidth
   METHOD textWidth
   METHOD setTextOption
   METHOD textOption
   METHOD size
   METHOD prepare
   METHOD setPerformanceHint
   METHOD performanceHint

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

/*
QStaticText()
*/
HB_FUNC_STATIC( QSTATICTEXT_NEW1 )
{
  QStaticText * o = new QStaticText ();
  _qt5xhb_storePointerAndFlag( o, true );
}

/*
QStaticText(const QString &text)
*/
HB_FUNC_STATIC( QSTATICTEXT_NEW2 )
{
  QStaticText * o = new QStaticText ( PQSTRING(1) );
  _qt5xhb_storePointerAndFlag( o, true );
}

/*
QStaticText(const QStaticText &other)
*/
HB_FUNC_STATIC( QSTATICTEXT_NEW3 )
{
  QStaticText * o = new QStaticText ( *PQSTATICTEXT(1) );
  _qt5xhb_storePointerAndFlag( o, true );
}


//[1]QStaticText()
//[2]QStaticText(const QString &text)
//[3]QStaticText(const QStaticText &other)

HB_FUNC_STATIC( QSTATICTEXT_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QSTATICTEXT_NEW1 );
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    HB_FUNC_EXEC( QSTATICTEXT_NEW2 );
  }
  else if( ISNUMPAR(1) && ISQSTATICTEXT(1) )
  {
    HB_FUNC_EXEC( QSTATICTEXT_NEW3 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

/*
void swap(QStaticText &other)
*/
HB_FUNC_STATIC( QSTATICTEXT_SWAP )
{
  QStaticText * obj = (QStaticText *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QStaticText * par1 = (QStaticText *) _qt5xhb_itemGetPtr(1);
    obj->swap ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setText(const QString &text)
*/
HB_FUNC_STATIC( QSTATICTEXT_SETTEXT )
{
  QStaticText * obj = (QStaticText *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setText ( PQSTRING(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QString text() const
*/
HB_FUNC_STATIC( QSTATICTEXT_TEXT )
{
  QStaticText * obj = (QStaticText *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQSTRING( obj->text () );
  }
}


/*
void setTextFormat(Qt::TextFormat textFormat)
*/
HB_FUNC_STATIC( QSTATICTEXT_SETTEXTFORMAT )
{
  QStaticText * obj = (QStaticText *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setTextFormat ( (Qt::TextFormat) hb_parni(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
Qt::TextFormat textFormat() const
*/
HB_FUNC_STATIC( QSTATICTEXT_TEXTFORMAT )
{
  QStaticText * obj = (QStaticText *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->textFormat () );
  }
}


/*
void setTextWidth(qreal textWidth)
*/
HB_FUNC_STATIC( QSTATICTEXT_SETTEXTWIDTH )
{
  QStaticText * obj = (QStaticText *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setTextWidth ( PQREAL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
qreal textWidth() const
*/
HB_FUNC_STATIC( QSTATICTEXT_TEXTWIDTH )
{
  QStaticText * obj = (QStaticText *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQREAL( obj->textWidth () );
  }
}


/*
void setTextOption(const QTextOption &textOption)
*/
HB_FUNC_STATIC( QSTATICTEXT_SETTEXTOPTION )
{
  QStaticText * obj = (QStaticText *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setTextOption ( *PQTEXTOPTION(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QTextOption textOption() const
*/
HB_FUNC_STATIC( QSTATICTEXT_TEXTOPTION )
{
  QStaticText * obj = (QStaticText *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QTextOption * ptr = new QTextOption( obj->textOption () );
    _qt5xhb_createReturnClass ( ptr, "QTEXTOPTION" );
  }
}


/*
QSizeF size() const
*/
HB_FUNC_STATIC( QSTATICTEXT_SIZE )
{
  QStaticText * obj = (QStaticText *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QSizeF * ptr = new QSizeF( obj->size () );
    _qt5xhb_createReturnClass ( ptr, "QSIZEF", true );
  }
}


/*
void prepare(const QTransform &matrix = QTransform(), const QFont &font = QFont())
*/
HB_FUNC_STATIC( QSTATICTEXT_PREPARE )
{
  QStaticText * obj = (QStaticText *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QTransform par1 = ISNIL(1)? QTransform() : *(QTransform *) _qt5xhb_itemGetPtr(1);
    QFont par2 = ISNIL(2)? QFont() : *(QFont *) _qt5xhb_itemGetPtr(2);
    obj->prepare ( par1, par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setPerformanceHint(PerformanceHint performanceHint)
*/
HB_FUNC_STATIC( QSTATICTEXT_SETPERFORMANCEHINT )
{
  QStaticText * obj = (QStaticText *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setPerformanceHint ( (QStaticText::PerformanceHint) hb_parni(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
PerformanceHint performanceHint() const
*/
HB_FUNC_STATIC( QSTATICTEXT_PERFORMANCEHINT )
{
  QStaticText * obj = (QStaticText *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->performanceHint () );
  }
}

$extraMethods

#pragma ENDDUMP
