/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"



CLASS QFont

   DATA pointer
   DATA class_id INIT Class_Id_QFont
   DATA class_flags INIT 0
   DATA self_destruction INIT .f.

   METHOD new1
   METHOD new2
   METHOD new3
   METHOD new4
   METHOD new
   METHOD delete
   METHOD bold
   METHOD capitalization
   METHOD defaultFamily
   METHOD exactMatch
   METHOD family
   METHOD fixedPitch
   METHOD fromString
   METHOD isCopyOf
   METHOD italic
   METHOD kerning
   METHOD key
   METHOD lastResortFamily
   METHOD lastResortFont
   METHOD letterSpacing
   METHOD letterSpacingType
   METHOD overline
   METHOD pixelSize
   METHOD pointSize
   METHOD pointSizeF
   METHOD rawMode
   METHOD rawName
   METHOD resolve
   METHOD setBold
   METHOD setCapitalization
   METHOD setFamily
   METHOD setFixedPitch
   METHOD setItalic
   METHOD setKerning
   METHOD setLetterSpacing
   METHOD setOverline
   METHOD setPixelSize
   METHOD setPointSize
   METHOD setPointSizeF
   METHOD setRawMode
   METHOD setRawName
   METHOD setStretch
   METHOD setStrikeOut
   METHOD setStyle
   METHOD setStyleHint
   METHOD setStyleStrategy
   METHOD setUnderline
   METHOD setWeight
   METHOD setWordSpacing
   METHOD stretch
   METHOD strikeOut
   METHOD style
   METHOD styleHint
   METHOD styleStrategy
   METHOD toString
   METHOD underline
   METHOD weight
   METHOD wordSpacing
   METHOD insertSubstitution
   METHOD insertSubstitutions
   METHOD substitute
   METHOD substitutes
   METHOD substitutions
   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QFont
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
#include <QFont>
#endif
#endif

#include "hbapi.h"
#include "hbapiitm.h"
#include "hbapierr.h"
#include "hbvm.h"
#include "hbstack.h"

#ifndef __XHARBOUR__
#include "hbapicls.h"
#define ISNIL HB_ISNIL
#define ISLOG HB_ISLOG
#define ISNUM HB_ISNUM
#define ISCHAR HB_ISCHAR
#define ISPOINTER HB_ISPOINTER
#define ISOBJECT HB_ISOBJECT
#define ISARRAY HB_ISARRAY
#endif

#include "qt4xhb_clsid.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
#include <QFont>
#endif
#endif

#include <QStringList>

/*
QFont ()
*/
HB_FUNC_STATIC( QFONT_NEW1 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QFont * o = new QFont (  );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QFont *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
#endif
}

/*
QFont ( const QString & family, int pointSize = -1, int weight = -1, bool italic = false )
*/
HB_FUNC_STATIC( QFONT_NEW2 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QString par1 = QLatin1String( hb_parc(1) );
  int par2 = ISNIL(2)? -1 : hb_parni(2);
  int par3 = ISNIL(3)? -1 : hb_parni(3);
  bool par4 = ISNIL(4)? false : hb_parl(4);
  QFont * o = new QFont ( par1, par2, par3, par4 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QFont *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
#endif
}

/*
QFont ( const QFont & font, QPaintDevice * pd )
*/
HB_FUNC_STATIC( QFONT_NEW3 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QFont * par1 = (QFont *) _qtxhb_itemGetPtr(1);
  QPaintDevice * par2 = (QPaintDevice *) _qtxhb_itemGetPtr(2);
  QFont * o = new QFont ( *par1, par2 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QFont *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
#endif
}

/*
QFont ( const QFont & font )
*/
HB_FUNC_STATIC( QFONT_NEW4 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QFont * par1 = (QFont *) _qtxhb_itemGetPtr(1);
  QFont * o = new QFont ( *par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QFont *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
#endif
}


//[1]QFont ()
//[2]QFont ( const QString & family, int pointSize = -1, int weight = -1, bool italic = false )
//[3]QFont ( const QFont & font, QPaintDevice * pd )
//[4]QFont ( const QFont & font )

HB_FUNC_STATIC( QFONT_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QFONT_NEW1 );
  }
  else if( ISBETWEEN(1,4) && ISCHAR(1) && (ISNUM(2)||ISNIL(2)) && (ISNUM(3)||ISNIL(3)) && (ISLOG(4)||ISNIL(4)) )
  {
    HB_FUNC_EXEC( QFONT_NEW2 );
  }
  else if( ISNUMPAR(2) && ISQFONT(1) && ISOBJECT(2) )
  {
    HB_FUNC_EXEC( QFONT_NEW3 );
  }
  else if( ISNUMPAR(1) && ISQFONT(1) )
  {
    HB_FUNC_EXEC( QFONT_NEW4 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QFONT_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QFont * obj = (QFont *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
#endif
}

/*
bool bold () const
*/
HB_FUNC_STATIC( QFONT_BOLD )
{
  QFont * obj = (QFont *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->bold (  ) );
  }
}


/*
Capitalization capitalization () const
*/
HB_FUNC_STATIC( QFONT_CAPITALIZATION )
{
  QFont * obj = (QFont *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->capitalization (  ) );
  }
}


/*
QString defaultFamily () const
*/
HB_FUNC_STATIC( QFONT_DEFAULTFAMILY )
{
  QFont * obj = (QFont *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( (const char *) obj->defaultFamily (  ).toLatin1().data() );
  }
}


/*
bool exactMatch () const
*/
HB_FUNC_STATIC( QFONT_EXACTMATCH )
{
  QFont * obj = (QFont *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->exactMatch (  ) );
  }
}


/*
QString family () const
*/
HB_FUNC_STATIC( QFONT_FAMILY )
{
  QFont * obj = (QFont *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( (const char *) obj->family (  ).toLatin1().data() );
  }
}


/*
bool fixedPitch () const
*/
HB_FUNC_STATIC( QFONT_FIXEDPITCH )
{
  QFont * obj = (QFont *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->fixedPitch (  ) );
  }
}



/*
bool fromString ( const QString & descrip )
*/
HB_FUNC_STATIC( QFONT_FROMSTRING )
{
  QFont * obj = (QFont *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    hb_retl( obj->fromString ( par1 ) );
  }
}



/*
bool isCopyOf ( const QFont & f ) const
*/
HB_FUNC_STATIC( QFONT_ISCOPYOF )
{
  QFont * obj = (QFont *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QFont * par1 = (QFont *) _qtxhb_itemGetPtr(1);
    hb_retl( obj->isCopyOf ( *par1 ) );
  }
}


/*
bool italic () const
*/
HB_FUNC_STATIC( QFONT_ITALIC )
{
  QFont * obj = (QFont *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->italic (  ) );
  }
}


/*
bool kerning () const
*/
HB_FUNC_STATIC( QFONT_KERNING )
{
  QFont * obj = (QFont *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->kerning (  ) );
  }
}


/*
QString key () const
*/
HB_FUNC_STATIC( QFONT_KEY )
{
  QFont * obj = (QFont *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( (const char *) obj->key (  ).toLatin1().data() );
  }
}


/*
QString lastResortFamily () const
*/
HB_FUNC_STATIC( QFONT_LASTRESORTFAMILY )
{
  QFont * obj = (QFont *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( (const char *) obj->lastResortFamily (  ).toLatin1().data() );
  }
}


/*
QString lastResortFont () const
*/
HB_FUNC_STATIC( QFONT_LASTRESORTFONT )
{
  QFont * obj = (QFont *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( (const char *) obj->lastResortFont (  ).toLatin1().data() );
  }
}


/*
qreal letterSpacing () const
*/
HB_FUNC_STATIC( QFONT_LETTERSPACING )
{
  QFont * obj = (QFont *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retnd( obj->letterSpacing (  ) );
  }
}


/*
SpacingType letterSpacingType () const
*/
HB_FUNC_STATIC( QFONT_LETTERSPACINGTYPE )
{
  QFont * obj = (QFont *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->letterSpacingType (  ) );
  }
}



/*
bool overline () const
*/
HB_FUNC_STATIC( QFONT_OVERLINE )
{
  QFont * obj = (QFont *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->overline (  ) );
  }
}


/*
int pixelSize () const
*/
HB_FUNC_STATIC( QFONT_PIXELSIZE )
{
  QFont * obj = (QFont *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->pixelSize (  ) );
  }
}


/*
int pointSize () const
*/
HB_FUNC_STATIC( QFONT_POINTSIZE )
{
  QFont * obj = (QFont *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->pointSize (  ) );
  }
}


/*
qreal pointSizeF () const
*/
HB_FUNC_STATIC( QFONT_POINTSIZEF )
{
  QFont * obj = (QFont *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retnd( obj->pointSizeF (  ) );
  }
}


/*
bool rawMode () const
*/
HB_FUNC_STATIC( QFONT_RAWMODE )
{
  QFont * obj = (QFont *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->rawMode (  ) );
  }
}


/*
QString rawName () const
*/
HB_FUNC_STATIC( QFONT_RAWNAME )
{
  QFont * obj = (QFont *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( (const char *) obj->rawName (  ).toLatin1().data() );
  }
}


/*
QFont resolve ( const QFont & other ) const
*/
HB_FUNC_STATIC( QFONT_RESOLVE )
{
  QFont * obj = (QFont *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QFont * par1 = (QFont *) _qtxhb_itemGetPtr(1);
    QFont * ptr = new QFont( obj->resolve ( *par1 ) );
    _qt4xhb_createReturnClass ( ptr, "QFONT", true );
  }
}


/*
void setBold ( bool enable )
*/
HB_FUNC_STATIC( QFONT_SETBOLD )
{
  QFont * obj = (QFont *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setBold ( (bool) hb_parl(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setCapitalization ( Capitalization caps )
*/
HB_FUNC_STATIC( QFONT_SETCAPITALIZATION )
{
  QFont * obj = (QFont *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setCapitalization (  (QFont::Capitalization) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setFamily ( const QString & family )
*/
HB_FUNC_STATIC( QFONT_SETFAMILY )
{
  QFont * obj = (QFont *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    obj->setFamily ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setFixedPitch ( bool enable )
*/
HB_FUNC_STATIC( QFONT_SETFIXEDPITCH )
{
  QFont * obj = (QFont *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setFixedPitch ( (bool) hb_parl(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setItalic ( bool enable )
*/
HB_FUNC_STATIC( QFONT_SETITALIC )
{
  QFont * obj = (QFont *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setItalic ( (bool) hb_parl(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setKerning ( bool enable )
*/
HB_FUNC_STATIC( QFONT_SETKERNING )
{
  QFont * obj = (QFont *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setKerning ( (bool) hb_parl(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setLetterSpacing ( SpacingType type, qreal spacing )
*/
HB_FUNC_STATIC( QFONT_SETLETTERSPACING )
{
  QFont * obj = (QFont *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    qreal par2 = hb_parnd(2);
    obj->setLetterSpacing (  (QFont::SpacingType) par1, par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setOverline ( bool enable )
*/
HB_FUNC_STATIC( QFONT_SETOVERLINE )
{
  QFont * obj = (QFont *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setOverline ( (bool) hb_parl(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setPixelSize ( int pixelSize )
*/
HB_FUNC_STATIC( QFONT_SETPIXELSIZE )
{
  QFont * obj = (QFont *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setPixelSize ( (int) hb_parni(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setPointSize ( int pointSize )
*/
HB_FUNC_STATIC( QFONT_SETPOINTSIZE )
{
  QFont * obj = (QFont *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setPointSize ( (int) hb_parni(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setPointSizeF ( qreal pointSize )
*/
HB_FUNC_STATIC( QFONT_SETPOINTSIZEF )
{
  QFont * obj = (QFont *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    qreal par1 = hb_parnd(1);
    obj->setPointSizeF ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setRawMode ( bool enable )
*/
HB_FUNC_STATIC( QFONT_SETRAWMODE )
{
  QFont * obj = (QFont *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setRawMode ( (bool) hb_parl(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setRawName ( const QString & name )
*/
HB_FUNC_STATIC( QFONT_SETRAWNAME )
{
  QFont * obj = (QFont *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    obj->setRawName ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setStretch ( int factor )
*/
HB_FUNC_STATIC( QFONT_SETSTRETCH )
{
  QFont * obj = (QFont *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setStretch ( (int) hb_parni(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setStrikeOut ( bool enable )
*/
HB_FUNC_STATIC( QFONT_SETSTRIKEOUT )
{
  QFont * obj = (QFont *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setStrikeOut ( (bool) hb_parl(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setStyle ( Style style )
*/
HB_FUNC_STATIC( QFONT_SETSTYLE )
{
  QFont * obj = (QFont *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setStyle (  (QFont::Style) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setStyleHint ( StyleHint hint, StyleStrategy strategy = PreferDefault )
*/
HB_FUNC_STATIC( QFONT_SETSTYLEHINT )
{
  QFont * obj = (QFont *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    int par2 = ISNIL(2)? (int) QFont::PreferDefault : hb_parni(2);
    obj->setStyleHint (  (QFont::StyleHint) par1,  (QFont::StyleStrategy) par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setStyleStrategy ( StyleStrategy s )
*/
HB_FUNC_STATIC( QFONT_SETSTYLESTRATEGY )
{
  QFont * obj = (QFont *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setStyleStrategy (  (QFont::StyleStrategy) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setUnderline ( bool enable )
*/
HB_FUNC_STATIC( QFONT_SETUNDERLINE )
{
  QFont * obj = (QFont *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setUnderline ( (bool) hb_parl(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setWeight ( int weight )
*/
HB_FUNC_STATIC( QFONT_SETWEIGHT )
{
  QFont * obj = (QFont *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setWeight ( (int) hb_parni(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setWordSpacing ( qreal spacing )
*/
HB_FUNC_STATIC( QFONT_SETWORDSPACING )
{
  QFont * obj = (QFont *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    qreal par1 = hb_parnd(1);
    obj->setWordSpacing ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
int stretch () const
*/
HB_FUNC_STATIC( QFONT_STRETCH )
{
  QFont * obj = (QFont *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->stretch (  ) );
  }
}


/*
bool strikeOut () const
*/
HB_FUNC_STATIC( QFONT_STRIKEOUT )
{
  QFont * obj = (QFont *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->strikeOut (  ) );
  }
}


/*
Style style () const
*/
HB_FUNC_STATIC( QFONT_STYLE )
{
  QFont * obj = (QFont *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->style (  ) );
  }
}


/*
StyleHint styleHint () const
*/
HB_FUNC_STATIC( QFONT_STYLEHINT )
{
  QFont * obj = (QFont *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->styleHint (  ) );
  }
}


/*
StyleStrategy styleStrategy () const
*/
HB_FUNC_STATIC( QFONT_STYLESTRATEGY )
{
  QFont * obj = (QFont *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->styleStrategy (  ) );
  }
}


/*
QString toString () const
*/
HB_FUNC_STATIC( QFONT_TOSTRING )
{
  QFont * obj = (QFont *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( (const char *) obj->toString (  ).toLatin1().data() );
  }
}


/*
bool underline () const
*/
HB_FUNC_STATIC( QFONT_UNDERLINE )
{
  QFont * obj = (QFont *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->underline (  ) );
  }
}


/*
int weight () const
*/
HB_FUNC_STATIC( QFONT_WEIGHT )
{
  QFont * obj = (QFont *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->weight (  ) );
  }
}


/*
qreal wordSpacing () const
*/
HB_FUNC_STATIC( QFONT_WORDSPACING )
{
  QFont * obj = (QFont *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retnd( obj->wordSpacing (  ) );
  }
}


/*
static void insertSubstitution ( const QString & familyName, const QString & substituteName )
*/
HB_FUNC_STATIC( QFONT_INSERTSUBSTITUTION )
{
  QString par1 = QLatin1String( hb_parc(1) );
  QString par2 = QLatin1String( hb_parc(2) );
  QFont::insertSubstitution ( par1, par2 );
  hb_itemReturn( hb_stackSelfItem() );
}


/*
static void insertSubstitutions ( const QString & familyName, const QStringList & substituteNames )
*/
HB_FUNC_STATIC( QFONT_INSERTSUBSTITUTIONS )
{
  QString par1 = QLatin1String( hb_parc(1) );
QStringList par2;
PHB_ITEM aStrings2 = hb_param(2, HB_IT_ARRAY);
int i2;
int nLen2 = hb_arrayLen(aStrings2);
for (i2=0;i2<nLen2;i2++)
{
QString temp = QLatin1String( hb_arrayGetCPtr(aStrings2, i2+1) );
par2 << temp;
}
  QFont::insertSubstitutions ( par1, par2 );
  hb_itemReturn( hb_stackSelfItem() );
}



/*
static QString substitute ( const QString & familyName )
*/
HB_FUNC_STATIC( QFONT_SUBSTITUTE )
{
  QString par1 = QLatin1String( hb_parc(1) );
  hb_retc( (const char *) QFont::substitute ( par1 ).toLatin1().data() );
}


/*
static QStringList substitutes ( const QString & familyName )
*/
HB_FUNC_STATIC( QFONT_SUBSTITUTES )
{
  QString par1 = QLatin1String( hb_parc(1) );
  QStringList strl = QFont::substitutes ( par1 );
  _qtxhb_convert_qstringlist_to_array ( strl );
}


/*
static QStringList substitutions ()
*/
HB_FUNC_STATIC( QFONT_SUBSTITUTIONS )
{
  QStringList strl = QFont::substitutions (  );
  _qtxhb_convert_qstringlist_to_array ( strl );
}



HB_FUNC_STATIC( QFONT_NEWFROM )
{
  PHB_ITEM self = hb_stackSelfItem();
  if( hb_pcount() == 1 && ISOBJECT(1) )
  {
    PHB_ITEM ptr = hb_itemPutPtr( NULL, (void *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) ) );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
    PHB_ITEM des = hb_itemPutL( NULL, false );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }
  else if( hb_pcount() == 1 && ISPOINTER(1) )
  {
    PHB_ITEM ptr = hb_itemPutPtr( NULL, (void *) hb_itemGetPtr( hb_param(1, HB_IT_POINTER ) ) );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
    PHB_ITEM des = hb_itemPutL( NULL, false );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }
  hb_itemReturn( self );
}

HB_FUNC_STATIC( QFONT_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QFONT_NEWFROM );
}

HB_FUNC_STATIC( QFONT_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QFONT_NEWFROM );
}

HB_FUNC_STATIC( QFONT_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QFONT_SETSELFDESTRUCTION )
{
  PHB_ITEM self = hb_stackSelfItem();
  if( hb_pcount() == 1 && ISLOG(1) )
  {
    PHB_ITEM des = hb_itemPutL( NULL, hb_parl(1) );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }
  hb_itemReturn( self );
}

#pragma ENDDUMP
