package com.ys.wg.utils;

public class Page {

	// 总条数
	private int total;
	// 每页显示条数
	private int pageSize = 3;
	// 总页数
	private int totalPage;
	// 当前页数
	private int currentPage = 1;
	// 起始位置
	private int start;
	// 结束位置
	private int end;

	/**
	 * 计算起始结束位置
	 */
	public void count() {

		totalPage = total % pageSize > 0 ? total / pageSize + 1 : total
				/ pageSize;

		if (currentPage < 1) {
			currentPage = 1;
		}
		if (currentPage > totalPage) {
			currentPage = totalPage;
			if (currentPage < 1) {
				currentPage = 1;
			}
		}

		start = (currentPage - 1) * pageSize;
		end = pageSize;

	}

	public int getTotal() {
		return total;
	}

	public void setTotal(int total) {
		this.total = total;
		this.count();
	}

	public int getPageSize() {
		return pageSize;
	}

	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}

	public int getTotalPage() {
		return totalPage;
	}

	public void setTotalPage(int totalPage) {
		this.totalPage = totalPage;
	}

	public int getCurrentPage() {
		return currentPage;
	}

	public void setCurrentPage(int currentPage) {
		this.currentPage = currentPage;
	}

	public int getStart() {
		return start;
	}

	public void setStart(int start) {
		this.start = start;
	}

	public int getEnd() {
		return end;
	}

	public void setEnd(int end) {
		this.end = end;
	}

}
