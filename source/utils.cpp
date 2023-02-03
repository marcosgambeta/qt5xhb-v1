/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2023 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "qt5xhb_common.hpp"
#include "qt5xhb_macros.hpp"

#include <QtCore/QObject>
#include <QtCore/QStringList>
#include <QtCore/QVariant>
#include <QtWidgets/QWidget>

namespace Qt5xHb
{

/*
  cria um objeto da classe 'classname', com o ponteiro 'ptr'
*/
void createReturnClass(void * ptr, const char * classname)
{
  PHB_DYNS pDynSym = hb_dynsymFindName(classname);

  if( pDynSym != NULL )
  {
    hb_vmPushDynSym(pDynSym);
    hb_vmPushNil();
    hb_vmDo(0);
    PHB_ITEM pObject = hb_itemNew(NULL);
    hb_itemCopy(pObject, hb_stackReturnItem());
    PHB_ITEM pItem = hb_itemPutPtr(NULL, ptr);
    hb_objSendMsg(pObject, "_POINTER", 1, pItem);
    hb_itemReturn(pObject);
    hb_itemRelease(pObject);
    hb_itemRelease(pItem);
  }
  else
  {
    hb_errRT_BASE(EG_NOFUNC, 1001, NULL, classname, HB_ERR_ARGS_BASEPARAMS);
  }
}

/*
  cria um objeto da classe 'classname', com o ponteiro 'ptr'
*/
void createReturnClass(const void * ptr, const char * classname)
{
  PHB_DYNS pDynSym = hb_dynsymFindName(classname);

  if( pDynSym != NULL )
  {
    hb_vmPushDynSym(pDynSym);
    hb_vmPushNil();
    hb_vmDo(0);
    PHB_ITEM pObject = hb_itemNew(NULL);
    hb_itemCopy(pObject, hb_stackReturnItem());
    PHB_ITEM pItem = hb_itemPutPtr(NULL, const_cast<void*>(ptr));
    hb_objSendMsg(pObject, "_POINTER", 1, pItem);
    hb_itemReturn(pObject);
    hb_itemRelease(pObject);
    hb_itemRelease(pItem);
  }
  else
  {
    hb_errRT_BASE(EG_NOFUNC, 1001, NULL, classname, HB_ERR_ARGS_BASEPARAMS);
  }
}

/*
  cria um objeto da classe 'classname', com o ponteiro 'ptr'
*/
void createReturnClass(void * ptr, const char * classname, bool destroy)
{
  PHB_DYNS pDynSym = hb_dynsymFindName(classname);

  if( pDynSym != NULL )
  {
    hb_vmPushDynSym(pDynSym);
    hb_vmPushNil();
    hb_vmDo(0);
    PHB_ITEM pObject = hb_itemNew(NULL);
    hb_itemCopy(pObject, hb_stackReturnItem());
    PHB_ITEM pItem = hb_itemPutPtr(NULL, ptr);
    hb_objSendMsg(pObject, "_POINTER", 1, pItem);
    hb_itemRelease(pItem);
    PHB_ITEM pDestroy = hb_itemPutL(NULL, destroy);
    hb_objSendMsg(pObject, "_SELF_DESTRUCTION", 1, pDestroy);
    hb_itemRelease(pDestroy);
    hb_itemReturn(pObject);
    hb_itemRelease(pObject);
  }
  else
  {
    hb_errRT_BASE(EG_NOFUNC, 1001, NULL, classname, HB_ERR_ARGS_BASEPARAMS);
  }
}

/*
  cria um objeto da classe 'classname', com o ponteiro 'ptr'
*/
void createReturnClass(const void * ptr, const char * classname, bool destroy)
{
  PHB_DYNS pDynSym = hb_dynsymFindName(classname);

  if( pDynSym != NULL )
  {
    hb_vmPushDynSym(pDynSym);
    hb_vmPushNil();
    hb_vmDo(0);
    PHB_ITEM pObject = hb_itemNew(NULL);
    hb_itemCopy(pObject, hb_stackReturnItem());
    PHB_ITEM pItem = hb_itemPutPtr(NULL, const_cast<void*>(ptr));
    hb_objSendMsg(pObject, "_POINTER", 1, pItem);
    hb_itemRelease(pItem);
    PHB_ITEM pDestroy = hb_itemPutL(NULL, destroy);
    hb_objSendMsg(pObject, "_SELF_DESTRUCTION", 1, pDestroy);
    hb_itemRelease(pDestroy);
    hb_itemReturn(pObject);
    hb_itemRelease(pObject);
  }
  else
  {
    hb_errRT_BASE(EG_NOFUNC, 1001, NULL, classname, HB_ERR_ARGS_BASEPARAMS);
  }
}

/*
  converte um objeto QList<int> em uma array do [x]Harbour
*/
void convert_qlist_int_to_array(const QList<int> & list)
{
  PHB_ITEM pArray = hb_itemArrayNew(0);
  for( int i = 0; i < list.count(); i++ )
  {
    PHB_ITEM pItem = hb_itemPutNI(NULL, list[i]);
    hb_arrayAddForward(pArray, pItem);
    hb_itemRelease(pItem);
  }
  hb_itemReturnRelease(pArray);
}

/*
  converte um objeto QList<qint8> em uma array do [x]Harbour
*/
void convert_qlist_qint8_to_array(const QList<qint8> & list)
{
  PHB_ITEM pArray = hb_itemArrayNew(0);
  for(int i = 0; i < list.count(); i++ )
  {
    PHB_ITEM pItem = hb_itemPutNI(NULL, list[i]);
    hb_arrayAddForward(pArray, pItem);
    hb_itemRelease(pItem);
  }
  hb_itemReturnRelease(pArray);
}

/*
  converte um objeto QList<qint16> em uma array do [x]Harbour
*/
void convert_qlist_qint16_to_array(const QList<qint16> & list)
{
  PHB_ITEM pArray = hb_itemArrayNew(0);
  for( int i = 0; i < list.count(); i++ )
  {
    PHB_ITEM pItem = hb_itemPutNI(NULL, list[i]);
    hb_arrayAddForward(pArray, pItem);
    hb_itemRelease(pItem);
  }
  hb_itemReturnRelease(pArray);
}

/*
  converte um objeto QList<qint32> em uma array do [x]Harbour
*/
void convert_qlist_qint32_to_array(const QList<qint32> & list)
{
  PHB_ITEM pArray = hb_itemArrayNew(0);
  for( int i = 0; i < list.count(); i++ )
  {
    PHB_ITEM pItem = hb_itemPutNI(NULL, list[i]);
    hb_arrayAddForward(pArray, pItem);
    hb_itemRelease(pItem);
  }
  hb_itemReturnRelease(pArray);
}

/*
  converte um objeto QList<qint64> em uma array do [x]Harbour
*/
void convert_qlist_qint64_to_array(const QList<qint64> & list)
{
  PHB_ITEM pArray = hb_itemArrayNew(0);
  for( int i = 0; i < list.count(); i++ )
  {
    PHB_ITEM pItem = hb_itemPutNI(NULL, list[i]);
    hb_arrayAddForward(pArray, pItem);
    hb_itemRelease(pItem);
  }
  hb_itemReturnRelease(pArray);
}

/*
  converte um objeto QList<quint8> em uma array do [x]Harbour
*/
void convert_qlist_quint8_to_array(const QList<quint8> & list)
{
  PHB_ITEM pArray = hb_itemArrayNew(0);
  for( int i = 0; i < list.count(); i++ )
  {
    PHB_ITEM pItem = hb_itemPutNI(NULL, list[i]);
    hb_arrayAddForward(pArray, pItem);
    hb_itemRelease(pItem);
  }
  hb_itemReturnRelease(pArray);
}

/*
  converte um objeto QList<quint16> em uma array do [x]Harbour
*/
void convert_qlist_quint16_to_array(const QList<quint16> & list)
{
  PHB_ITEM pArray = hb_itemArrayNew(0);
  for( int i = 0; i < list.count(); i++ )
  {
    PHB_ITEM pItem = hb_itemPutNI(NULL, list[i]);
    hb_arrayAddForward(pArray, pItem);
    hb_itemRelease(pItem);
  }
  hb_itemReturnRelease(pArray);
}

/*
  converte um objeto QList<quint32> em uma array do [x]Harbour
*/
void convert_qlist_quint32_to_array(const QList<quint32> & list)
{
  PHB_ITEM pArray = hb_itemArrayNew(0);
  for( int i = 0; i < list.count(); i++ )
  {
    PHB_ITEM pItem = hb_itemPutNI(NULL, list[i]);
    hb_arrayAddForward(pArray, pItem);
    hb_itemRelease(pItem);
  }
  hb_itemReturnRelease(pArray);
}

/*
  converte um objeto QList<quint64> em uma array do [x]Harbour
*/
void convert_qlist_quint64_to_array(const QList<quint64> & list)
{
  PHB_ITEM pArray = hb_itemArrayNew(0);
  for( int i = 0; i < list.count(); i++ )
  {
    PHB_ITEM pItem = hb_itemPutNI(NULL, list[i]);
    hb_arrayAddForward(pArray, pItem);
    hb_itemRelease(pItem);
  }
  hb_itemReturnRelease(pArray);
}

/*
  converte um objeto QList<qreal> em uma array do [x]Harbour
*/
void convert_qlist_qreal_to_array(const QList<qreal> & list)
{
  PHB_ITEM pArray = hb_itemArrayNew(0);
  for( int i = 0; i < list.count(); i++ )
  {
    PHB_ITEM pItem = hb_itemPutND(NULL, list[i]);
    hb_arrayAddForward(pArray, pItem);
    hb_itemRelease(pItem);
  }
  hb_itemReturnRelease(pArray);
}

/*
  converte um objeto QList<double> em uma array do [x]Harbour
*/
void convert_qlist_double_to_array(const QList<double> & list)
{
  PHB_ITEM pArray = hb_itemArrayNew(0);
  for( int i = 0; i < list.count(); i++ )
  {
    PHB_ITEM pItem = hb_itemPutND(NULL, list[i]);
    hb_arrayAddForward(pArray, pItem);
    hb_itemRelease(pItem);
  }
  hb_itemReturnRelease(pArray);
}

/*
  converte um objeto QStringList (QList<QString>) em uma array do [x]Harbour
*/
void convert_qstringlist_to_array(const QStringList & list)
{
  PHB_ITEM pArray = hb_itemArrayNew(0);
  for( int i = 0; i < list.count(); i++ )
  {
    PHB_ITEM pItem = hb_itemPutC(NULL, list[i].toLatin1().data());
    hb_arrayAddForward(pArray, pItem);
    hb_itemRelease(pItem);
  }
  hb_itemReturnRelease(pArray);
}

/*
  obtém e retorna o valor da propriedade POINTER de um objeto [x]Harbour (tipo O)
*/
void * itemGetPtr(int numpar)
{
  return hb_itemGetPtr(hb_objSendMsg(hb_param(numpar, HB_IT_OBJECT), "POINTER", 0));
}

/*
  obtém e retorna o valor da propriedade POINTER do objeto hb_stackSelfItem()
*/
void * itemGetPtrStackSelfItem()
{
  return hb_itemGetPtr(hb_objSendMsg(hb_stackSelfItem(), "POINTER", 0));
}

/*
  obtém e retorna o valor da propriedade POINTER do objeto hb_stackSelfItem() como QObject
*/
QObject * getQObjectPointerFromSelfItem()
{
  return static_cast<QObject*>(hb_itemGetPtr(hb_objSendMsg(hb_stackSelfItem(), "POINTER", 0)));
}

/*
  armazena o ponteiro e a flag de destruição no objeto (função
  utilizada nos métodos construtores new)
*/
void storePointerAndFlag(void * pointer, bool flag)
{
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr(NULL, pointer);
  hb_objSendMsg(self, "_pointer", 1, ptr);
  hb_itemRelease(ptr);
  PHB_ITEM des = hb_itemPutL(NULL, flag);
  hb_objSendMsg(self, "_self_destruction", 1, des);
  hb_itemRelease(des);
  hb_itemReturn(self);
}

/*
  used in constructors
  store pointer and flag of the object
  return self object
*/
void returnNewObject(void * pointer, bool flag)
{
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr(NULL, pointer);
  hb_objSendMsg(self, "_pointer", 1, ptr);
  hb_itemRelease(ptr);
  PHB_ITEM des = hb_itemPutL(NULL, flag);
  hb_objSendMsg(self, "_self_destruction", 1, des);
  hb_itemRelease(des);
  hb_itemReturn(self);
}

/*
  cria um objeto (QObject) da classe correspondente ou 'classname' para objetos nulos, com o ponteiro 'ptr'
*/
void createReturnQObjectClass(QObject * ptr, const char * classname)
{
  PHB_DYNS pDynSym = NULL;

  if( ptr != NULL )
  {
    pDynSym = hb_dynsymFindName(ptr->metaObject()->className());
  }

  if( pDynSym == NULL )
  {
    pDynSym = hb_dynsymFindName(classname);
  }

  if( pDynSym != NULL )
  {
    hb_vmPushDynSym(pDynSym);
    hb_vmPushNil();
    hb_vmDo(0);
    PHB_ITEM pObject = hb_itemNew(NULL);
    hb_itemCopy(pObject, hb_stackReturnItem());
    PHB_ITEM pItem = hb_itemPutPtr(NULL, ptr);
    hb_objSendMsg(pObject, "_POINTER", 1, pItem);
    hb_itemReturn(pObject);
    hb_itemRelease(pObject);
    hb_itemRelease(pItem);
  }
  else
  {
    hb_errRT_BASE(EG_NOFUNC, 1001, NULL, classname, HB_ERR_ARGS_BASEPARAMS);
  }
}

/*
  cria um objeto (QObject) da classe correspondente ou 'classname' para objetos nulos, com o ponteiro 'ptr'
*/
void createReturnQObjectClass(const QObject * ptr, const char * classname)
{
  PHB_DYNS pDynSym = NULL;

  if( ptr != NULL )
  {
    pDynSym = hb_dynsymFindName(ptr->metaObject()->className());
  }

  if( pDynSym == NULL )
  {
    pDynSym = hb_dynsymFindName(classname);
  }

  if( pDynSym != NULL )
  {
    hb_vmPushDynSym(pDynSym);
    hb_vmPushNil();
    hb_vmDo(0);
    PHB_ITEM pObject = hb_itemNew(NULL);
    hb_itemCopy(pObject, hb_stackReturnItem());
    PHB_ITEM pItem = hb_itemPutPtr(NULL, const_cast<QObject*>(ptr));
    hb_objSendMsg(pObject, "_POINTER", 1, pItem);
    hb_itemReturn(pObject);
    hb_itemRelease(pObject);
    hb_itemRelease(pItem);
  }
  else
  {
    hb_errRT_BASE(EG_NOFUNC, 1001, NULL, classname, HB_ERR_ARGS_BASEPARAMS);
  }
}

/*
  cria um objeto (QWidget) da classe correspondente ou 'classname' para objetos nulos, com o ponteiro 'ptr'
*/
void createReturnQWidgetClass(QWidget * ptr, const char * classname)
{
  PHB_DYNS pDynSym = NULL;

  if( ptr != NULL )
  {
    pDynSym = hb_dynsymFindName(ptr->metaObject()->className());
  }

  if( pDynSym == NULL )
  {
    pDynSym = hb_dynsymFindName(classname);
  }

  if( pDynSym != NULL )
  {
    hb_vmPushDynSym(pDynSym);
    hb_vmPushNil();
    hb_vmDo(0);
    PHB_ITEM pObject = hb_itemNew(NULL);
    hb_itemCopy(pObject, hb_stackReturnItem());
    PHB_ITEM pItem = hb_itemPutPtr(NULL, ptr);
    hb_objSendMsg(pObject, "_POINTER", 1, pItem);
    hb_itemReturn(pObject);
    hb_itemRelease(pObject);
    hb_itemRelease(pItem);
  }
  else
  {
    hb_errRT_BASE(EG_NOFUNC, 1001, NULL, classname, HB_ERR_ARGS_BASEPARAMS);
  }
}

/*
  cria um objeto (QWidget) da classe correspondente ou 'classname' para objetos nulos, com o ponteiro 'ptr'
*/
void createReturnQWidgetClass(const QWidget * ptr, const char * classname)
{
  PHB_DYNS pDynSym = NULL;

  if( ptr != NULL )
  {
    pDynSym = hb_dynsymFindName(ptr->metaObject()->className());
  }

  if( pDynSym == NULL )
  {
    pDynSym = hb_dynsymFindName(classname);
  }

  if( pDynSym != NULL )
  {
    hb_vmPushDynSym(pDynSym);
    hb_vmPushNil();
    hb_vmDo(0);
    PHB_ITEM pObject = hb_itemNew(NULL);
    hb_itemCopy(pObject, hb_stackReturnItem());
    PHB_ITEM pItem = hb_itemPutPtr(NULL, const_cast<QWidget*>(ptr));
    hb_objSendMsg(pObject, "_POINTER", 1, pItem);
    hb_itemReturn(pObject);
    hb_itemRelease(pObject);
    hb_itemRelease(pItem);
  }
  else
  {
    hb_errRT_BASE(EG_NOFUNC, 1001, NULL, classname, HB_ERR_ARGS_BASEPARAMS);
  }
}

/*
*/
bool isClassDerivedFrom(const char * className1, const char * className2)
{
// TOFIX: code for xHarbour
#ifdef __XHARBOUR__
   return false;
#else
  HB_USHORT uiClass = hb_clsFindClass(className1, NULL);
  return hb_clsIsParent(uiClass, className2);
#endif
}

/*
*/
bool isObjectDerivedFrom(int numpar, const QString & className)
{
  PHB_ITEM pItem = hb_param(numpar, HB_IT_OBJECT);

  if( pItem != NULL )
  {
    return hb_clsIsParent(hb_objGetClass(pItem), className.toUpper().toLatin1().data());
  }
  else
  {
    return false;
  }
}

/*
  converte parametro 'n' de array (Harbour) para QStrinList (Qt)
*/
QStringList convert_array_parameter_to_qstringlist(int numpar)
{
  QStringList list;

  PHB_ITEM pArray = hb_param(numpar, HB_IT_ARRAY);

  if( pArray )
  {
    const int nLen = hb_arrayLen(pArray);
    for( int i = 0; i < nLen; i++ )
    {
      QString temp = QLatin1String(hb_arrayGetCPtr(pArray, i + 1));
      list << temp;
    }
  }

  return list;
}

/*
*/
// QString _qt5xhb_convert_string_parameter_to_qstring(int numpar)
// {
//   #ifdef QT5XHB_USE_LATIN1STRING
//   return QLatin1String(hb_parc(numpar));
//   #else
//   return QString(hb_parc(numpar));
//   #endif
// }

/*
  converte parametro 'n' de array (Harbour) para QVariantList/QList<QVariant> (Qt)
*/
QVariantList convert_array_parameter_to_qvariantlist(int numpar)
{
  QVariantList list;

  PHB_ITEM pArray = hb_param(numpar, HB_IT_ARRAY);

  if( pArray != NULL )
  {
    const int nLen = hb_arrayLen(pArray);
    for( int i = 0; i < nLen; i++ )
    {
      list << *static_cast<QVariant*>(hb_itemGetPtr(hb_objSendMsg(hb_arrayGetItemPtr( pArray, i + 1), "POINTER", 0)));
    }
  }

  return list;
}

/*
  converte um objeto QVariantList/QList<QVariant> em uma array do [x]Harbour
*/
void convert_qvariantlist_to_array(const QVariantList & list)
{
  PHB_DYNS pDynSym = hb_dynsymFindName("QVARIANT");

  PHB_ITEM pArray = hb_itemArrayNew(0);

  for( int i = 0; i < list.count(); i++ )
  {
    if( pDynSym != NULL )
    {
      hb_vmPushDynSym(pDynSym);
      hb_vmPushNil();
      hb_vmDo(0);
      PHB_ITEM pObject = hb_itemNew(NULL);
      hb_itemCopy(pObject, hb_stackReturnItem());
      PHB_ITEM pItem = hb_itemPutPtr(NULL, new QVariant(list[i]));
      hb_objSendMsg(pObject, "_POINTER", 1, pItem);
      hb_itemRelease(pItem);
      PHB_ITEM pDestroy = hb_itemPutL(NULL, true);
      hb_objSendMsg(pObject, "_SELF_DESTRUCTION", 1, pDestroy);
      hb_itemRelease(pDestroy);
      hb_arrayAddForward(pArray, pObject);
      hb_itemRelease(pObject);
    }
    else
    {
      hb_errRT_BASE(EG_NOFUNC, 1001, NULL, "QVARIANT", HB_ERR_ARGS_BASEPARAMS);
    }
  }

  hb_itemReturnRelease(pArray);
}

/*
  cria um objeto da classe QModelIndex, com o ponteiro 'ptr'
*/

PHB_ITEM returnQModelIndexObject(void * ptr)
{
  static PHB_DYNS pDynSym = NULL;

  if( pDynSym == NULL )
  {
    pDynSym = hb_dynsymFindName("QMODELINDEX");
  }

  PHB_ITEM pObject = hb_itemNew(NULL);

  if( pDynSym != NULL )
  {
    hb_vmPushDynSym(pDynSym);
    hb_vmPushNil();
    hb_vmDo(0);
    hb_itemCopy(pObject, hb_stackReturnItem());
    PHB_ITEM pItem = hb_itemPutPtr(NULL, ptr);
    hb_objSendMsg(pObject, "_POINTER", 1, pItem);
    hb_itemRelease(pItem);
  }
  else
  {
    hb_errRT_BASE(EG_NOFUNC, 1001, NULL, "QMODELINDEX", HB_ERR_ARGS_BASEPARAMS);
  }

  return pObject;
}

/*
  cria um objeto da classe QVariant, com o ponteiro 'ptr'
*/

PHB_ITEM returnQVariantObject(void * ptr)
{
  static PHB_DYNS pDynSym = NULL;

  if( pDynSym == NULL )
  {
    pDynSym = hb_dynsymFindName("QVARIANT");
  }

  PHB_ITEM pObject = hb_itemNew(NULL);

  if( pDynSym != NULL )
  {
    hb_vmPushDynSym(pDynSym);
    hb_vmPushNil();
    hb_vmDo(0);
    hb_itemCopy(pObject, hb_stackReturnItem());
    PHB_ITEM pItem = hb_itemPutPtr(NULL, ptr);
    hb_objSendMsg(pObject, "_POINTER", 1, pItem);
    hb_itemRelease(pItem);
  }
  else
  {
    hb_errRT_BASE(EG_NOFUNC, 1001, NULL, "QVARIANT", HB_ERR_ARGS_BASEPARAMS);
  }

  return pObject;
}

/*
  cria um objeto da classe QPainter, com o ponteiro 'ptr'
*/

PHB_ITEM returnQPainterObject(void * ptr)
{
  static PHB_DYNS pDynSym = NULL;

  if( pDynSym == NULL )
  {
    pDynSym = hb_dynsymFindName("QPAINTER");
  }

  PHB_ITEM pObject = hb_itemNew(NULL);

  if( pDynSym != NULL )
  {
    hb_vmPushDynSym(pDynSym);
    hb_vmPushNil();
    hb_vmDo(0);
    hb_itemCopy(pObject, hb_stackReturnItem());
    PHB_ITEM pItem = hb_itemPutPtr(NULL, ptr);
    hb_objSendMsg(pObject, "_POINTER", 1, pItem);
    hb_itemRelease(pItem);
  }
  else
  {
    hb_errRT_BASE(EG_NOFUNC, 1001, NULL, "QPAINTER", HB_ERR_ARGS_BASEPARAMS);
  }

  return pObject;
}

/*
  cria um objeto da classe QStyleOptionViewItem, com o ponteiro 'ptr'
*/

PHB_ITEM returnQStyleOptionViewItemObject(void * ptr)
{
  static PHB_DYNS pDynSym = NULL;

  if( pDynSym == NULL )
  {
    pDynSym = hb_dynsymFindName("QSTYLEOPTIONVIEWITEM");
  }

  PHB_ITEM pObject = hb_itemNew(NULL);

  if( pDynSym != NULL )
  {
    hb_vmPushDynSym(pDynSym);
    hb_vmPushNil();
    hb_vmDo(0);
    hb_itemCopy(pObject, hb_stackReturnItem());
    PHB_ITEM pItem = hb_itemPutPtr(NULL, ptr);
    hb_objSendMsg(pObject, "_POINTER", 1, pItem);
    hb_itemRelease(pItem);
  }
  else
  {
    hb_errRT_BASE(EG_NOFUNC, 1001, NULL, "QSTYLEOPTIONVIEWITEM", HB_ERR_ARGS_BASEPARAMS);
  }

  return pObject;
}

/*
  cria um objeto da classe QLocale, com o ponteiro 'ptr'
*/

PHB_ITEM returnQLocaleObject(void * ptr)
{
  static PHB_DYNS pDynSym = NULL;

  if( pDynSym == NULL )
  {
    pDynSym = hb_dynsymFindName("QLOCALE");
  }

  PHB_ITEM pObject = hb_itemNew(NULL);

  if( pDynSym != NULL )
  {
    hb_vmPushDynSym(pDynSym);
    hb_vmPushNil();
    hb_vmDo(0);
    hb_itemCopy(pObject, hb_stackReturnItem());
    PHB_ITEM pItem = hb_itemPutPtr(NULL, ptr);
    hb_objSendMsg(pObject, "_POINTER", 1, pItem);
    hb_itemRelease(pItem);
  }
  else
  {
    hb_errRT_BASE(EG_NOFUNC, 1001, NULL, "QLOCALE", HB_ERR_ARGS_BASEPARAMS);
  }

  return pObject;
}

/*
  cria um objeto da classe QWidget ou derivada, com o ponteiro 'ptr'
*/

PHB_ITEM returnQWidgetObject(QWidget * ptr)
{
  PHB_DYNS pDynSym = NULL;

  if( ptr != NULL )
  {
    pDynSym = hb_dynsymFindName(ptr->metaObject()->className());
  }

  if( pDynSym == NULL )
  {
    pDynSym = hb_dynsymFindName("QWIDGET");
  }

  PHB_ITEM pObject = hb_itemNew(NULL);

  if( pDynSym != NULL )
  {
    hb_vmPushDynSym(pDynSym);
    hb_vmPushNil();
    hb_vmDo(0);
    hb_itemCopy(pObject, hb_stackReturnItem());
    PHB_ITEM pItem = hb_itemPutPtr(NULL, ptr);
    hb_objSendMsg(pObject, "_POINTER", 1, pItem);
    hb_itemRelease(pItem);
  }
  else
  {
    hb_errRT_BASE(EG_NOFUNC, 1001, NULL, "QWIDGET", HB_ERR_ARGS_BASEPARAMS);
  }

  return pObject;
}

/*
  cria um objeto da classe QObject ou derivada, com o ponteiro 'ptr'
*/

PHB_ITEM returnQObjectObject(QObject * ptr)
{
  PHB_DYNS pDynSym = NULL;

  if( ptr != NULL )
  {
    pDynSym = hb_dynsymFindName(ptr->metaObject()->className());
  }

  if( pDynSym == NULL )
  {
    pDynSym = hb_dynsymFindName("QOBJECT");
  }

  PHB_ITEM pObject = hb_itemNew(NULL);

  if( pDynSym != NULL )
  {
    hb_vmPushDynSym(pDynSym);
    hb_vmPushNil();
    hb_vmDo(0);
    hb_itemCopy(pObject, hb_stackReturnItem());
    PHB_ITEM pItem = hb_itemPutPtr(NULL, ptr);
    hb_objSendMsg(pObject, "_POINTER", 1, pItem);
    hb_itemRelease(pItem);
  }
  else
  {
    hb_errRT_BASE(EG_NOFUNC, 1001, NULL, "QOBJECT", HB_ERR_ARGS_BASEPARAMS);
  }

  return pObject;
}

}
