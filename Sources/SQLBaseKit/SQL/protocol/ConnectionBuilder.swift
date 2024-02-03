public protocol ConnectionBuilder {
    func user(username: String) -> ConnectionBuilder
    func password(password: String) -> ConnectionBuilder
    func shardingKey(shardingKey: ShardingKey) -> ConnectionBuilder
    func superShardingKey(superShardingKey: ShardingKey) -> ConnectionBuilder
    func build() throws -> Connection
}
