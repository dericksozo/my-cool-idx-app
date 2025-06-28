
// Generated file. Do not edit manually.
import { pgEnum, pgTable as table } from "drizzle-orm/pg-core";
import * as t from "drizzle-orm/pg-core";
import { db, types } from "@duneanalytics/sim-idx";

export const ownerQueried = table("owner_queried", {
  chainId: db.uint64('chain_id'),
  owner: db.address('owner'),
  blockNumber: db.uint256('block_number'),
})

export const poolCreated = table("pool_created", {
  chainId: db.uint64('chain_id'),
  caller: db.address('caller'),
  pool: db.address('pool'),
  token0: db.address('token0'),
  token1: db.address('token1'),
  fee: db.uint24('fee'),
  blockNumber: db.uint256('block_number'),
})

export const sushiswapPairCreated = table("sushiswap_pair_created", {
  chainId: db.uint64('chain_id'),
  caller: db.address('caller'),
  pair: db.address('pair'),
  token0: db.address('token0'),
  token1: db.address('token1'),
  allPairsLength: db.uint256('all_pairs_length'),
  blockNumber: db.uint256('block_number'),
})
