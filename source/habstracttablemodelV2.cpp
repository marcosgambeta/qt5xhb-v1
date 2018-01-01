/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "habstracttablemodelV2.h"

/*
  método construtor
*/
HAbstractTableModelV2::HAbstractTableModelV2 (QObject * parent) : QAbstractTableModel (parent)
{
  rowCountBlock = NULL;
  columnCountBlock = NULL;
  dataBlock = NULL;
  headerDataBlock = NULL;
  flagsBlock = NULL;
  setDataBlock = NULL;
}

HAbstractTableModelV2::~HAbstractTableModelV2 ()
{
  if( rowCountBlock )
  {
    hb_itemRelease( rowCountBlock );
    rowCountBlock = NULL;
  }

  if( columnCountBlock )
  {
    hb_itemRelease( columnCountBlock );
    columnCountBlock = NULL;
  }

  if( dataBlock )
  {
    hb_itemRelease( dataBlock );
    dataBlock = NULL;
  }

  if( headerDataBlock )
  {
    hb_itemRelease( headerDataBlock );
    headerDataBlock = NULL;
  }

  if( flagsBlock )
  {
    hb_itemRelease( flagsBlock );
    flagsBlock = NULL;
  }

  if( setDataBlock )
  {
    hb_itemRelease( setDataBlock );
    setDataBlock = NULL;
  }
}

void HAbstractTableModelV2::setRowCountCB ( PHB_ITEM block )
{
  if( rowCountBlock )
  {
    hb_itemRelease( rowCountBlock );
  }
  if( block )
  {
    rowCountBlock = hb_itemNew( block );
  }
}

void HAbstractTableModelV2::setColumnCountCB ( PHB_ITEM block )
{
  if( columnCountBlock )
  {
    hb_itemRelease( columnCountBlock );
  }
  if( block )
  {
    columnCountBlock = hb_itemNew( block );
  }
}

void HAbstractTableModelV2::setDataCB ( PHB_ITEM block )
{
  if( dataBlock )
  {
    hb_itemRelease( dataBlock );
  }
  if( block )
  {
    dataBlock = hb_itemNew( block );
  }
}

void HAbstractTableModelV2::setHeaderDataCB ( PHB_ITEM block )
{
  if( headerDataBlock )
  {
    hb_itemRelease( headerDataBlock );
  }
  if( block )
  {
    headerDataBlock = hb_itemNew( block );
  }
}

void HAbstractTableModelV2::setFlagsCB ( PHB_ITEM block )
{
  if( flagsBlock )
  {
    hb_itemRelease( flagsBlock );
  }
  if( block )
  {
    flagsBlock = hb_itemNew( block );
  }
}

void HAbstractTableModelV2::setSetDataCB ( PHB_ITEM block )
{
  if( setDataBlock )
  {
    hb_itemRelease( setDataBlock );
  }
  if( block )
  {
    setDataBlock = hb_itemNew( block );
  }
}

int HAbstractTableModelV2::rowCount( const QModelIndex & parent ) const
{
  if( rowCountBlock )
  {
    if( parent.isValid() )
    {
      return 0;
    }
    else
    {
      return (int) hb_itemGetNI( hb_vmEvalBlockV( rowCountBlock, 0 ) );
    }
  }
  else
  {
    return 0;
  }
}

int HAbstractTableModelV2::columnCount( const QModelIndex & parent ) const
{
  if( columnCountBlock )
  {
    if( parent.isValid() )
    {
      return 0;
    }
    else
    {
      return (int) hb_itemGetNI( hb_vmEvalBlockV( columnCountBlock, 0 ) );
    }
  }
  else
  {
    return 0;
  }
}

QVariant HAbstractTableModelV2::data( const QModelIndex & index, int role ) const
{
  QVariant data;

  if( dataBlock )
  {
    PHB_ITEM pIndex = hb_itemPutPtr( NULL, (QModelIndex *) &index );
    PHB_ITEM pRole = hb_itemPutNI( NULL, role );

    PHB_ITEM pRet = hb_itemNew( hb_vmEvalBlockV( dataBlock, 2, pIndex, pRole ) );

    if( hb_clsIsParent( hb_objGetClass( pRet ), "QVARIANT" ) )
    {
      void * ptr = (void *) hb_itemGetPtr( hb_objSendMsg( pRet, "POINTER", 0 ) );
      data = *( (QVariant *) ptr );
    }

    hb_itemRelease( pIndex );
    hb_itemRelease( pRole );
    hb_itemRelease( pRet );

    return data;
  }
  else
  {
    return data;
  }
}

QVariant HAbstractTableModelV2::headerData( int section, Qt::Orientation orientation, int role ) const
{
  QVariant data;

  if( headerDataBlock )
  {
    PHB_ITEM pSection = hb_itemPutNI( NULL, section );
    PHB_ITEM pOrientation = hb_itemPutNI( NULL, (int) orientation );
    PHB_ITEM pRole = hb_itemPutNI( NULL, role );

    PHB_ITEM pRet = hb_itemNew( hb_vmEvalBlockV( headerDataBlock, 3, pSection, pOrientation, pRole ) );

    if( hb_clsIsParent( hb_objGetClass( pRet ), "QVARIANT" ) )
    {
      void * ptr = (void *) hb_itemGetPtr( hb_objSendMsg( pRet, "POINTER", 0 ) );
      data = *( (QVariant *) ptr );
    }

    hb_itemRelease( pSection );
    hb_itemRelease( pOrientation );
    hb_itemRelease( pRole );
    hb_itemRelease( pRet );

    return data;
  }
  else
  {
    return data;
  }
}

Qt::ItemFlags HAbstractTableModelV2::flags(const QModelIndex &index) const
{
  Qt::ItemFlags flags = Qt::ItemIsSelectable | Qt::ItemIsEnabled;

  if( flagsBlock )
  {
    PHB_ITEM pIndex = hb_itemPutPtr( NULL, (QModelIndex *) &index );

    PHB_ITEM pRet = hb_itemNew( hb_vmEvalBlockV( flagsBlock, 1, pIndex ) );

    if( hb_itemType( pRet ) & HB_IT_NUMERIC )
    {
      flags = (Qt::ItemFlags) hb_itemGetNI( pRet );
    }

    hb_itemRelease( pIndex );
    hb_itemRelease( pRet );

    return flags;
  }
  else
  {
    return flags;
  }
}

bool HAbstractTableModelV2::setData(const QModelIndex &index, const QVariant &value, int role)
{
  bool success = false;

  if( setDataBlock )
  {
    PHB_ITEM pIndex = hb_itemPutPtr( NULL, (QModelIndex *) &index );
    PHB_ITEM pValue = hb_itemPutPtr( NULL, (QVariant *) &value );
    PHB_ITEM pRole = hb_itemPutNI( NULL, role );

    PHB_ITEM pRet = hb_itemNew( hb_vmEvalBlockV( setDataBlock, 3, pIndex, pValue, pRole ) );

    if( hb_itemType( pRet ) & HB_IT_LOGICAL )
    {
      success = hb_itemGetL( pRet );
    }

    hb_itemRelease( pIndex );
    hb_itemRelease( pValue );
    hb_itemRelease( pRole );
    hb_itemRelease( pRet );

    return success;
  }
  else
  {
    return success;
  }
}

void HAbstractTableModelV2::reloadData()
{
  // Notas da documentação do Qt:
  emit QAbstractTableModel::layoutAboutToBeChanged();
  // Remember the QModelIndex that will change
  // Update your internal data
  // Call changePersistentIndex()
  // emit layoutChanged
  //emit QAbstractItemModel::layoutChanged();
  emit QAbstractTableModel::layoutChanged();
}
