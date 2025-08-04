Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 297E4846F
	for <keys@linux.kernel.org>; Mon,  4 Aug 2025 15:18:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754320730; cv=none; b=g2OOU16cT+KdaGB7z8cYQtuma2kLuXgGwE7lQSVxaYjMbGJ1XvCgKvEyWX+BdbMZU0DfBEsp0/s5wpwVWzE8CUzXbxyd2Fd6Fq0lQ+we4h9G0UtgdZbQCNqIkFuwHtUEv/lNf1KldLNpKjKyAfY9d0bIILhT+REpM2VG8DOnw2I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754320730; c=relaxed/simple;
	bh=j7JDFtUc3dtmyKmsORVfIX1g88vDwCCFTxFSGtQcYgo=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=IpxpIr/IuajbgzccoI4qHA/GjdirFtU05VNWhErL4uMlPijKpTUznlvwP712hhDw7hwa3zMr24V5jYhwz07PSuNBcvVQgc82HQf7TwCzecaK4HO2vG4K2uBF6UThPDa9vQqFpMefTJf+6HjzUtHFkIDT/LkBdfNMeIcrjHHiCyw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (1024-bit key) header.d=linuxfoundation.org header.i=@linuxfoundation.org header.b=Nsm6hqyQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=linuxfoundation.org header.i=@linuxfoundation.org header.b="Nsm6hqyQ"
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 735ABC4CEE7;
	Mon,  4 Aug 2025 15:18:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
	s=korg; t=1754320729;
	bh=j7JDFtUc3dtmyKmsORVfIX1g88vDwCCFTxFSGtQcYgo=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Nsm6hqyQnsQ2Uat9CxaS3bZauUuo68/kFsG5Q1uRAkFUyrk1F59g/mifVIBgGgoPi
	 8mTq4hQ03bbKHmy+p8KBd0o40UEIHxkH73ywzxwmEYIZ9tE5m7h9HrRYTiiaLTnYtm
	 miQHz7YhsQt/1wcaltE4eXwboEIYodMh0QkcZsBI=
Date: Mon, 4 Aug 2025 11:18:48 -0400
From: Konstantin Ryabitsev <konstantin@linuxfoundation.org>
To: Nicolas Schier <nicolas@fjasle.eu>
Cc: keys@linux.kernel.org
Subject: Re: Refreshed key for Nicolas Schier
Message-ID: <20250804-watchful-azure-ammonite-16cac6@lemur>
References: <20250803-statuesque-affable-dove-c1ef39@lindesnes>
Precedence: bulk
X-Mailing-List: keys@linux.kernel.org
List-Id: <keys.linux.kernel.org>
List-Subscribe: <mailto:keys+subscribe@linux.kernel.org>
List-Unsubscribe: <mailto:keys+unsubscribe@linux.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20250803-statuesque-affable-dove-c1ef39@lindesnes>

On Sun, Aug 03, 2025 at 09:12:08PM +0200, Nicolas Schier wrote:
> Hi,
> 
> please update my key:
> 18ED52DBE34F860EE9FBC82B7D97093255A0CE7F

Updated, thanks.

-K
