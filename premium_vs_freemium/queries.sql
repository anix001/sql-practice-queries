WITH all_data AS (
    SELECT 
        msu.user_id, 
        msu.acc_id, 
        msa.paying_customer,
        msd.date,
        msd.downloads
    FROM ms_user_dimension msu
    LEFT JOIN ms_acc_dimension msa 
        ON msu.acc_id = msa.acc_id
    LEFT JOIN ms_download_facts msd
        ON msu.user_id = msd.user_id
  ),
  download_data as(
    SELECT 
    date,
    sum(case when paying_customer = 'no' then downloads else 0 end) as non_paying,
    sum(case when paying_customer = 'yes' then downloads else 0  end) as paying
    FROM all_data 
    group by date
    )
select * from download_data where non_paying > paying;
