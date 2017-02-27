/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt5xhb_clsid.ch"

#ifndef QTXHB_NO_REQUESTS
REQUEST QVARIANT
REQUEST QBYTEARRAY
REQUEST QURL
#endif

CLASS QHelpEngineCore INHERIT QObject

   DATA class_id INIT Class_Id_QHelpEngineCore
   DATA class_flags INIT 1
   DATA self_destruction INIT .f.

   METHOD new
   METHOD delete
   METHOD addCustomFilter
   METHOD autoSaveFilter
   METHOD collectionFile
   METHOD copyCollectionFile
   METHOD currentFilter
   METHOD customFilters
   METHOD customValue
   METHOD documentationFileName
   METHOD error
   METHOD fileData
   METHOD filterAttributes1
   METHOD filterAttributes2
   METHOD filterAttributes
   METHOD findFile
   METHOD registerDocumentation
   METHOD registeredDocumentations
   METHOD removeCustomFilter
   METHOD removeCustomValue
   METHOD setAutoSaveFilter
   METHOD setCollectionFile
   METHOD setCurrentFilter
   METHOD setCustomValue
   METHOD setupData
   METHOD unregisterDocumentation
   METHOD metaData
   METHOD namespaceName
   METHOD onCurrentFilterChanged
   METHOD onSetupFinished
   METHOD onSetupStarted
   METHOD onWarning
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QHelpEngineCore
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
#include <QHelpEngineCore>
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

#include "qt5xhb_clsid.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
#include <QHelpEngineCore>
#endif
#endif

#include <QStringList>

/*
QHelpEngineCore ( const QString & collectionFile, QObject * parent = 0 )
*/
HB_FUNC_STATIC( QHELPENGINECORE_NEW )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QString par1 = QLatin1String( hb_parc(1) );
  QObject * par2 = ISNIL(2)? 0 : (QObject *) _qtxhb_itemGetPtr(2);
  QHelpEngineCore * o = new QHelpEngineCore ( par1, par2 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QHelpEngineCore *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
#endif
}


HB_FUNC_STATIC( QHELPENGINECORE_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QHelpEngineCore * obj = (QHelpEngineCore *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
bool addCustomFilter ( const QString & filterName, const QStringList & attributes )
*/
HB_FUNC_STATIC( QHELPENGINECORE_ADDCUSTOMFILTER )
{
  QHelpEngineCore * obj = (QHelpEngineCore *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
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
    hb_retl( obj->addCustomFilter ( par1, par2 ) );
  }
}


/*
bool autoSaveFilter () const
*/
HB_FUNC_STATIC( QHELPENGINECORE_AUTOSAVEFILTER )
{
  QHelpEngineCore * obj = (QHelpEngineCore *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->autoSaveFilter (  ) );
  }
}


/*
QString collectionFile () const
*/
HB_FUNC_STATIC( QHELPENGINECORE_COLLECTIONFILE )
{
  QHelpEngineCore * obj = (QHelpEngineCore *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( (const char *) obj->collectionFile (  ).toLatin1().data() );
  }
}


/*
bool copyCollectionFile ( const QString & fileName )
*/
HB_FUNC_STATIC( QHELPENGINECORE_COPYCOLLECTIONFILE )
{
  QHelpEngineCore * obj = (QHelpEngineCore *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    hb_retl( obj->copyCollectionFile ( par1 ) );
  }
}


/*
QString currentFilter () const
*/
HB_FUNC_STATIC( QHELPENGINECORE_CURRENTFILTER )
{
  QHelpEngineCore * obj = (QHelpEngineCore *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( (const char *) obj->currentFilter (  ).toLatin1().data() );
  }
}


/*
QStringList customFilters () const
*/
HB_FUNC_STATIC( QHELPENGINECORE_CUSTOMFILTERS )
{
  QHelpEngineCore * obj = (QHelpEngineCore *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QStringList strl = obj->customFilters (  );
    _qtxhb_convert_qstringlist_to_array ( strl );
  }
}


/*
QVariant customValue ( const QString & key, const QVariant & defaultValue = QVariant() ) const
*/
HB_FUNC_STATIC( QHELPENGINECORE_CUSTOMVALUE )
{
  QHelpEngineCore * obj = (QHelpEngineCore *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    QVariant par2 = ISNIL(2)? QVariant() : *(QVariant *) _qtxhb_itemGetPtr(2);
    QVariant * ptr = new QVariant( obj->customValue ( par1, par2 ) );
    _qt5xhb_createReturnClass ( ptr, "QVARIANT", true );
  }
}


/*
QString documentationFileName ( const QString & namespaceName )
*/
HB_FUNC_STATIC( QHELPENGINECORE_DOCUMENTATIONFILENAME )
{
  QHelpEngineCore * obj = (QHelpEngineCore *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    hb_retc( (const char *) obj->documentationFileName ( par1 ).toLatin1().data() );
  }
}


/*
QString error () const
*/
HB_FUNC_STATIC( QHELPENGINECORE_ERROR )
{
  QHelpEngineCore * obj = (QHelpEngineCore *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( (const char *) obj->error (  ).toLatin1().data() );
  }
}


/*
QByteArray fileData ( const QUrl & url ) const
*/
HB_FUNC_STATIC( QHELPENGINECORE_FILEDATA )
{
  QHelpEngineCore * obj = (QHelpEngineCore *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QUrl * par1 = (QUrl *) _qtxhb_itemGetPtr(1);
    QByteArray * ptr = new QByteArray( obj->fileData ( *par1 ) );
    _qt5xhb_createReturnClass ( ptr, "QBYTEARRAY" );
  }
}




/*
QStringList filterAttributes () const
*/
HB_FUNC_STATIC( QHELPENGINECORE_FILTERATTRIBUTES1 )
{
  QHelpEngineCore * obj = (QHelpEngineCore *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QStringList strl = obj->filterAttributes (  );
    _qtxhb_convert_qstringlist_to_array ( strl );
  }
}


/*
QStringList filterAttributes ( const QString & filterName ) const
*/
HB_FUNC_STATIC( QHELPENGINECORE_FILTERATTRIBUTES2 )
{
  QHelpEngineCore * obj = (QHelpEngineCore *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    QStringList strl = obj->filterAttributes ( par1 );
    _qtxhb_convert_qstringlist_to_array ( strl );
  }
}


//[1]QStringList filterAttributes () const
//[2]QStringList filterAttributes ( const QString & filterName ) const

HB_FUNC_STATIC( QHELPENGINECORE_FILTERATTRIBUTES )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QHELPENGINECORE_FILTERATTRIBUTES1 );
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    HB_FUNC_EXEC( QHELPENGINECORE_FILTERATTRIBUTES2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QUrl findFile ( const QUrl & url ) const
*/
HB_FUNC_STATIC( QHELPENGINECORE_FINDFILE )
{
  QHelpEngineCore * obj = (QHelpEngineCore *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QUrl * par1 = (QUrl *) _qtxhb_itemGetPtr(1);
    QUrl * ptr = new QUrl( obj->findFile ( *par1 ) );
    _qt5xhb_createReturnClass ( ptr, "QURL", true );
  }
}



/*
bool registerDocumentation ( const QString & documentationFileName )
*/
HB_FUNC_STATIC( QHELPENGINECORE_REGISTERDOCUMENTATION )
{
  QHelpEngineCore * obj = (QHelpEngineCore *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    hb_retl( obj->registerDocumentation ( par1 ) );
  }
}


/*
QStringList registeredDocumentations () const
*/
HB_FUNC_STATIC( QHELPENGINECORE_REGISTEREDDOCUMENTATIONS )
{
  QHelpEngineCore * obj = (QHelpEngineCore *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QStringList strl = obj->registeredDocumentations (  );
    _qtxhb_convert_qstringlist_to_array ( strl );
  }
}


/*
bool removeCustomFilter ( const QString & filterName )
*/
HB_FUNC_STATIC( QHELPENGINECORE_REMOVECUSTOMFILTER )
{
  QHelpEngineCore * obj = (QHelpEngineCore *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    hb_retl( obj->removeCustomFilter ( par1 ) );
  }
}


/*
bool removeCustomValue ( const QString & key )
*/
HB_FUNC_STATIC( QHELPENGINECORE_REMOVECUSTOMVALUE )
{
  QHelpEngineCore * obj = (QHelpEngineCore *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    hb_retl( obj->removeCustomValue ( par1 ) );
  }
}


/*
void setAutoSaveFilter ( bool save )
*/
HB_FUNC_STATIC( QHELPENGINECORE_SETAUTOSAVEFILTER )
{
  QHelpEngineCore * obj = (QHelpEngineCore *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setAutoSaveFilter ( (bool) hb_parl(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setCollectionFile ( const QString & fileName )
*/
HB_FUNC_STATIC( QHELPENGINECORE_SETCOLLECTIONFILE )
{
  QHelpEngineCore * obj = (QHelpEngineCore *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    obj->setCollectionFile ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setCurrentFilter ( const QString & filterName )
*/
HB_FUNC_STATIC( QHELPENGINECORE_SETCURRENTFILTER )
{
  QHelpEngineCore * obj = (QHelpEngineCore *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    obj->setCurrentFilter ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
bool setCustomValue ( const QString & key, const QVariant & value )
*/
HB_FUNC_STATIC( QHELPENGINECORE_SETCUSTOMVALUE )
{
  QHelpEngineCore * obj = (QHelpEngineCore *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    QVariant * par2 = (QVariant *) _qtxhb_itemGetPtr(2);
    hb_retl( obj->setCustomValue ( par1, *par2 ) );
  }
}


/*
bool setupData ()
*/
HB_FUNC_STATIC( QHELPENGINECORE_SETUPDATA )
{
  QHelpEngineCore * obj = (QHelpEngineCore *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->setupData (  ) );
  }
}


/*
bool unregisterDocumentation ( const QString & namespaceName )
*/
HB_FUNC_STATIC( QHELPENGINECORE_UNREGISTERDOCUMENTATION )
{
  QHelpEngineCore * obj = (QHelpEngineCore *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    hb_retl( obj->unregisterDocumentation ( par1 ) );
  }
}


/*
static QVariant metaData ( const QString & documentationFileName, const QString & name )
*/
HB_FUNC_STATIC( QHELPENGINECORE_METADATA )
{
  QString par1 = QLatin1String( hb_parc(1) );
  QString par2 = QLatin1String( hb_parc(2) );
  QVariant * ptr = new QVariant( QHelpEngineCore::metaData ( par1, par2 ) );
  _qt5xhb_createReturnClass ( ptr, "QVARIANT", true );
}


/*
static QString namespaceName ( const QString & documentationFileName )
*/
HB_FUNC_STATIC( QHELPENGINECORE_NAMESPACENAME )
{
  QString par1 = QLatin1String( hb_parc(1) );
  hb_retc( (const char *) QHelpEngineCore::namespaceName ( par1 ).toLatin1().data() );
}




#pragma ENDDUMP
