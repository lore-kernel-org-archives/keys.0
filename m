Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AEA2199239
	for <keys@linux.kernel.org>; Mon, 10 Mar 2025 14:47:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741618043; cv=none; b=dfYkqWjLL6BOkqP0gs7A4AM8JZgYn0YyT+7Svl18rNHs4pjBpfXAptBXbABnQUNpXBxfBJ5FHWPonI3U7Po7LFPihkHygB7I3WqX6PHdm/NFPwMBmM8rK9ARIfIhT77tR3pmXWdfo+9U5Qe8lwDRo0dLDNq43MBk1GJUNN2pz4o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741618043; c=relaxed/simple;
	bh=3mkSW2pjJ/8NLrB7yzmvl7Pb5Uce0cIT49UaZ16WrTE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=V/4SEWdfGg3XuMR+5jNreysQJ+D3m93Oa8J3ps2PVayF5UzOJItFMxjQfXoir9tYe+6dfho/jveqKMKR8rlyIM2LqLDN+pK9HuumvBj7CygQ77aBhmP4j+cN3r135oNl9e9OgjqCIc9yQYz6p0AXGYg6DvlW2y7/H/fYtvgbUJs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (1024-bit key) header.d=linuxfoundation.org header.i=@linuxfoundation.org header.b=o/8OpQtV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=linuxfoundation.org header.i=@linuxfoundation.org header.b="o/8OpQtV"
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 65B3BC4CEE5;
	Mon, 10 Mar 2025 14:47:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
	s=korg; t=1741618042;
	bh=3mkSW2pjJ/8NLrB7yzmvl7Pb5Uce0cIT49UaZ16WrTE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=o/8OpQtV7qoO15KQsGxkbkTM0a4B6jMcvdiEh7tlt1pZNnh7SX7C7V1tfs96yNKli
	 NdKtuURY2AJHmRJcb9z6mwF58Exr60m6ILpQ+LRIVwis+P8b6lwyDDUZfBeR27vqfV
	 M3OgOwRfVcztQ6NoSSfxixJGd2WHCR3Pigz4tLXE=
Date: Mon, 10 Mar 2025 10:47:21 -0400
From: Konstantin Ryabitsev <konstantin@linuxfoundation.org>
To: Marek Szyprowski <m.szyprowski@samsung.com>
Cc: keys@linux.kernel.org
Subject: Re: Key for Marek Szyprowski
Message-ID: <20250310-portable-silent-termite-fee8da@lemur>
References: <CGME20250310132411eucas1p2815be2e47f884c778a7724570092dda1@eucas1p2.samsung.com>
 <9792e8b3-8e88-47b1-a6fc-1f859a102900@samsung.com>
Precedence: bulk
X-Mailing-List: keys@linux.kernel.org
List-Id: <keys.linux.kernel.org>
List-Subscribe: <mailto:keys+subscribe@linux.kernel.org>
List-Unsubscribe: <mailto:keys+unsubscribe@linux.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <9792e8b3-8e88-47b1-a6fc-1f859a102900@samsung.com>

On Mon, Mar 10, 2025 at 02:24:10PM +0100, Marek Szyprowski wrote:
> Hi,
> 
> please find attached key that will be used for my kernel activities:
> 38DE270552497C47.asc

Updated, thanks.

-K
