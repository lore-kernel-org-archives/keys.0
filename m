Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DB01F270ECC
	for <keys@linux.kernel.org>; Mon,  5 May 2025 17:33:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746466420; cv=none; b=DjYrRaYOEdT7bpe971LGK7MRZBzsZT98mMcxh5tJw+Z+GCQgZwxb1Ra6VKVYSzh/UgZM8Pqi6xaa/+QN/440PWUfd6MPEqeF+g+GWP+heayWt/uOC5nUkB71mJo4pwrT9kxPvjKRmliPZ2GtPT3dHA2f7qq2RSPfeKuv2Apn5RQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746466420; c=relaxed/simple;
	bh=utdlqyET+TqPxDNWUZDr9hi4hgKm2N3C8yJ9a34/4Jw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=e1Jj+2Yfh7h27bweATvjabX205xkdOONnHsoWcyjvaiDJfqwBUUoEoep0QEqn48FDgw8lcm7Orr6OKaPCygu1nlrfSCjHLKu+oORi8xwweH3t5Z27HhdFiPouFIYF47H0AfuaxSyKcd/MmzogmXYs6S50oqGvOAoIPDo+hKPeFs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (1024-bit key) header.d=linuxfoundation.org header.i=@linuxfoundation.org header.b=pEXrIzQg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=linuxfoundation.org header.i=@linuxfoundation.org header.b="pEXrIzQg"
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7A1CCC4CEF2;
	Mon,  5 May 2025 17:33:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
	s=korg; t=1746466419;
	bh=utdlqyET+TqPxDNWUZDr9hi4hgKm2N3C8yJ9a34/4Jw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=pEXrIzQg90XxpMU7LC6RV9l/qYdF0exXgE09kt9ugZwENSWMyKSCwTq7aJGrdIVFC
	 1r3K/57eicRwq/WLHEOJ0a4IOG2KsTL5C4aJJW210MNVr0D85QKXgjcJMIRGF1lw8S
	 SnU12uaNbDjxU/lvJbJ8WAJqsxlmv4pYaKwfy3pI=
Date: Mon, 5 May 2025 13:33:38 -0400
From: Konstantin Ryabitsev <konstantin@linuxfoundation.org>
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: keys@linux.kernel.org
Subject: Re: Refreshed key for Krzysztof Kozlowski
Message-ID: <20250505-indigo-coyote-of-felicity-9dfb1a@lemur>
References: <a31db55c-b289-48a1-a9ac-265e550cbdc1@kernel.org>
Precedence: bulk
X-Mailing-List: keys@linux.kernel.org
List-Id: <keys.linux.kernel.org>
List-Subscribe: <mailto:keys+subscribe@linux.kernel.org>
List-Unsubscribe: <mailto:keys+unsubscribe@linux.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <a31db55c-b289-48a1-a9ac-265e550cbdc1@kernel.org>

On Sun, May 04, 2025 at 01:46:21PM +0200, Krzysztof Kozlowski wrote:
> Key updates for my key:
> 9BD07E0E0C51F8D59677B7541B93437D3B41629B

Updated, thanks.

-K
