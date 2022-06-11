-- Tags: high-memory-usage

SELECT topLevelDomain(concat('http://', k)) AS tld, sum(u) AS u, uniqMerge(us) AS us FROM (SELECT domain(URL) AS k, uniq(UserID) AS u, uniqState(UserID) AS us FROM test.hits GROUP BY k) GROUP BY tld ORDER BY u DESC, tld ASC LIMIT 100
