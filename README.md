# About
このプロジェクトは、Stormworksのdedicated serverをdocker/k8s上で動かすことを簡単にし、また、オプションで、高度なマネジメント機能を付与することで監視を容易にすることを目標としている作業中のリポジトリです。

## コンポーネント詳細

### ServerDownloader
Dedicated Server単体の古いソースではなく、steamにstormworksを保有するアカウントでログインし、stormworksのゲーム全体をDLすることで、最新のDedicated Serverを入手するコンポーネントです。

### ServerBuilder(作業中)
DLしてきたdedicated serverをwineコンテナにぶち込むだけのコンポーネントです。

### ServerMetricsAPI(予定)
なんかいいかんじのREST API
