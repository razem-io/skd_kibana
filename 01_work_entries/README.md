# Work Entries Dashboard

## Data

- id -> id (incr)
- person_id -> unique person id
- kind -> pratical or theoretical work
- area -> work category
- area_detail -> work category detail
- time_spent -> in minutes
- date_done -> task done
- date_created -> task reported done

## Discover
- [ ] filter by time
- [ ] filter by value from list
- [ ] edit filter by value from list 
- [ ] create a filter from scratch
- [ ] select values to show in overview

## Visuals

### Basic
- [ ] metric_unique_entries
- [ ] metric_unique_people
- [ ] metric_avg_hours_per_task -> minutes / 60 *OHNO* -> look at discover -> double less trouble
- [ ] control_area
- [ ] control_area_detail
- [ ] control_kind
- [ ] area_entries_count [all visual options => stacked + step]
- [ ] bar_avg_hours_spent_per_person (avg hours / term person)
- [ ] bar_hours_spent_per_ag
- [ ] bar_hours_spent_per_ag_sub
- [ ] pie_hours_spent_per_ag_sub [Beschriftung nicht vergessen]
- [ ] metric_avg_hours_per_person (avg bucket / term person / sum hours)
- [ ] pie_area_persons (unique person count + area)
- [ ] matrix_hours_spent_area_and_kind_ag
- [ ] table_person_info (hours [sum, avg, max])
- [ ] table_area_areadetail_kind (hours sum) -> show options!

### Advanced
- [ ] hello timelion .es(index=logstash-*,timefield=date_done,metric=count).points(), .es(index=logstash-*,timefield=date_done,metric=count).mvavg(window=1d), .es(index=logstash-*,timefield=date_done,metric=count).mvavg(window=5d), .es(index=logstash-*,timefield=date_done,metric=sum:time_spent_hours).lines(fill=1, width=0.1).color(green)