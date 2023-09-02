class Color < ActiveHash::Base
  self.data = [
    { id: 1, name: '---' },
    { id: 2, name: 'LBグレー' },
    { id: 3, name: 'LBレッド' },
    { id: 4, name: '白' },
    { id: 5, name: '黒' },
    { id: 6, name: 'キアカ' },
    { id: 7, name: 'N3グレー' },
    { id: 8, name: 'N4グレー' },
    { id: 9, name: 'HSCブルー' },
    { id: 10, name: '中塗りPK' }
  ]

  include ActiveHash::Associations
  has_many :articles

  
  end