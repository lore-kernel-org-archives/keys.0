Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 575C329A2
	for <keys@linux.kernel.org>; Wed,  4 Jun 2025 20:33:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749069187; cv=none; b=apKsLeYDEvmB687BGAjwSXpfZByXPrpvkT/gvbdDTjuxddqT+S9v4tySjVC3Xe0BOuerr78YTAdilQHsUA4qAJeEgwPmXK3mTatS6MORjiwXJqaQ4q8xt3Vjqdg7ZqCs9HWxqWLHZzsqvZc7i3eBPZPYAO97OQbHUUfzfaz6vdM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749069187; c=relaxed/simple;
	bh=uWVkO9sZTOPgNb8RxRe81eN49J4ZYMQtLuj/vRyzkTg=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=RKAm3teW1pVqp1VhhdEdJ5oOddwZmF8GE47s0Q2qGmM8WmxNAZCTV9XsoSLlVs6THkLQcjDV4K20SX/kbV+sxt9EyQZ4T4OuxIfipcYt86Kfmj0YwYjHrbKpmj1B0cMZFSoKSnCAKmVjVQd/Z7so3aoURLwO/xEf6fsbGhDzSF0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (1024-bit key) header.d=linuxfoundation.org header.i=@linuxfoundation.org header.b=qtFQL88X; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=linuxfoundation.org header.i=@linuxfoundation.org header.b="qtFQL88X"
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9F44DC4CEE4;
	Wed,  4 Jun 2025 20:33:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
	s=korg; t=1749069185;
	bh=uWVkO9sZTOPgNb8RxRe81eN49J4ZYMQtLuj/vRyzkTg=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=qtFQL88X1GeLUbGBTgCzj0YL71ZWNq8/M1JEBMsuBso2gpokX4WILSXk83Oubh27f
	 Sfg/Q/fGDzSYHB25hmRmDblTYxBumnFpsWhYMXUNXQ5mSaOV+yN9eNTpNWZ340q4UM
	 qmI1peWQT4woe0n1lTv8+TG49l8ycs7gzpgqJV1s=
Date: Wed, 4 Jun 2025 16:33:02 -0400
From: Konstantin Ryabitsev <konstantin@linuxfoundation.org>
To: Drew Fustini <drew@pdp7.com>
Cc: keys@linux.kernel.org
Subject: Re: Key for Drew Fustini
Message-ID: <20250604-robust-mink-of-memory-efa4ac@lemur>
References: <aDzcTHN2YneD85M3@x1>
Precedence: bulk
X-Mailing-List: keys@linux.kernel.org
List-Id: <keys.linux.kernel.org>
List-Subscribe: <mailto:keys+subscribe@linux.kernel.org>
List-Unsubscribe: <mailto:keys+unsubscribe@linux.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <aDzcTHN2YneD85M3@x1>

On Sun, Jun 01, 2025 at 04:03:40PM -0700, Drew Fustini wrote:
> Hi, I have attached my GPG key: 1B6F948213EA489734F3997035D5CD577C1E6010

Added, thanks.

-K
